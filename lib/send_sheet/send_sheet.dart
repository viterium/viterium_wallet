import 'dart:math';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../contacts/contact.dart';
import '../core/vite_uri.dart';
import '../tokens/token_icon_widget.dart';
import '../tokens/token_info_provider.dart';
import '../tokens/token_select_sheet.dart';
import '../transactions/send_tx.dart';
import '../util/formatters.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../util/vite_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/one_or_three_address_text.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'balance_text_widget.dart';
import 'fee_widget.dart';
import 'send_confirm_sheet.dart';
import 'send_data_widget.dart';

enum AddressStyle { TEXT60, TEXT90, PRIMARY }

class SendSheet extends ConsumerStatefulWidget {
  final Contact? contact;
  final String? address;
  final BigInt? amountRaw;
  final BigInt? feeRaw;
  final Uint8List? data;

  const SendSheet({
    Key? key,
    this.contact,
    this.address,
    this.amountRaw,
    this.feeRaw,
    this.data,
  }) : super(key: key);

  _SendSheetState createState() => _SendSheetState();
}

class _SendSheetState extends ConsumerState<SendSheet> {
  final _amountFocusNode = FocusNode();
  final _amountController = TextEditingController();

  final _addressFocusNode = FocusNode();
  final _addressController = TextEditingController();

  final _memoFocusNode = FocusNode();
  final _memoController = TextEditingController();

  // States
  AddressStyle _sendAddressStyle = AddressStyle.TEXT60;
  String? _amountHint;
  String? _addressHint;

  String _amountValidationText = '';
  String _addressValidationText = '';

  late List<Contact> _contacts;

  // Used to replace address textfield with colorized TextSpan
  bool _addressValidAndUnfocused = false;
  bool _memoValidAndUnfocused = false;
  // Set to true when a contact is being entered
  bool _isContact = false;
  // Buttons States (Used because we hide the buttons under certain conditions)
  bool _pasteButtonVisible = true;
  bool _memoPasteButtonVisible = true;
  bool _contactButtonVisible = true;
  bool _memoQrButtonVisible = true;

  late BigInt? amountRaw = widget.amountRaw;
  late BigInt? feeRaw = widget.feeRaw;
  late Uint8List? _data = widget.data;

  bool get hasData => _data != null;

  @override
  void initState() {
    super.initState();

    _contacts = [];
    if (widget.contact != null) {
      // Setup initial state for contact pre-filled
      _addressController.text = widget.contact!.name;
      _isContact = true;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = AddressStyle.PRIMARY;
    } else if (widget.address != null) {
      // Setup initial state with prefilled address
      _addressController.text = widget.address!;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = AddressStyle.TEXT90;
      _addressValidAndUnfocused = true;
    }

    if (_data == null) {
      // on memo focus change
      _memoFocusNode.addListener(() {
        if (_memoFocusNode.hasFocus) {
          setState(() {
            _memoValidAndUnfocused = false;
          });
          Future.delayed(const Duration(milliseconds: 300), () {
            Scrollable.ensureVisible(
              _memoFocusNode.context!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        }
      });
    }
    // On amount focus change
    _amountFocusNode.addListener(() {
      if (_amountFocusNode.hasFocus) {
        setState(() => _amountHint = '');
      } else {
        setState(() => _amountHint = null);
      }
    });
    // On address focus change
    _addressFocusNode.addListener(() {
      if (_addressFocusNode.hasFocus) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        setState(() {
          _addressHint = '';
          _addressValidAndUnfocused = false;
        });
        _addressController.selection = TextSelection.fromPosition(
            TextPosition(offset: _addressController.text.length));
        if (_addressController.text.startsWith("@")) {
          setState(() {
            _contacts = ref
                .read(contactsProvider)
                .getContactsWithNameLike(_addressController.text);
          });
        }
      } else {
        setState(() {
          _addressHint = null;
          _contacts = [];
          if (Address.tryParse(_addressController.text) != null) {
            _addressValidAndUnfocused = true;
          }
        });
        if (_addressController.text.trim() == "@") {
          _addressController.text = '';
          setState(() => _contactButtonVisible = true);
        }
      }
    });

    // Set quick send amount
    if (amountRaw != null) {
      final tokenInfo = ref.read(selectedTokenProvider);
      _amountController.text = NumberUtil.getStringFromRaw(
        amountRaw!,
        tokenInfo.decimals,
      );
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    _addressController.dispose();
    _memoController.dispose();

    _amountFocusNode.dispose();
    _addressFocusNode.dispose();
    _memoFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);

    Future<void> scanQrCode() async {
      FocusManager.instance.primaryFocus?.unfocus();

      final qrCode = await UserDataUtil.scanQrCode(context);
      final qrData = qrCode?.code;
      if (qrData == null) {
        return;
      }

      // Check for ViteUri
      final viteUri = ViteUri.tryParse(qrData);
      String? viteAddress = viteUri?.viteAddress;
      if (viteUri == null) {
        // Check for ViteAddress
        viteAddress = ViteUtil.findAddressInString(qrData);
      }
      if (viteAddress == null) {
        UIUtil.showSnackbar(l10n.qrInvalidAddress, context);
        return;
      }
      // See if this address belongs to a contact
      Contact? contact =
          ref.read(contactsProvider).getContactWithAddress(viteAddress);

      _addressValidationText = '';
      _pasteButtonVisible = false;
      _contactButtonVisible = false;

      if (contact == null) {
        // Not a contact
        _isContact = false;
        _sendAddressStyle = AddressStyle.TEXT90;
        _addressController.text = viteAddress;
        _addressValidAndUnfocused = true;
      } else {
        // Is a contact
        _isContact = true;
        _sendAddressStyle = AddressStyle.PRIMARY;
        _addressController.text = contact.name;
        _addressValidAndUnfocused = false;
      }

      if (viteUri != null) {
        final amount = viteUri.amount;
        final tokenId = viteUri.token.tokenId;
        final tokenInfo = await ref.read(tokenInfoProvider(tokenId).future);

        _data = viteUri.data;
        // Reset Memo field
        _memoController.text = '';

        // update selected token
        final selectedToken = ref.read(selectedTokenProvider.notifier);
        selectedToken.state = tokenInfo;

        // set amount
        final amountBigInt = NumberUtil.getRawFromDecimal(
          amount,
          tokenInfo.decimals,
        );

        amountRaw = amountBigInt;
        _amountController.text = NumberUtil.approxAmountRaw(
          amountBigInt,
          tokenInfo.decimals,
        );

        if (viteUri.fee != null) {
          feeRaw = Amount.value(viteUri.fee!, tokenInfo: TokenInfo.vite).raw;
        }
      }

      setState(() {});
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: TapOutsideUnfocus(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 60, height: 60),
                Column(
                  children: [
                    const SheetHandle(),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 140,
                      ),
                      child: Column(
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              l10n.sendFrom.toUpperCase(),
                              style: styles.textStyleHeader(context),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 60, height: 60),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Container(
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: account.name,
                    style: styles.textStyleAccount,
                  ),
                ),
              ),
            ),
            // Address Text
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: OneOrThreeLineAddressText(
                address: account.viteAddress,
                type: AddressTextType.PRIMARY60,
              ),
            ),

            // A main container that holds everything
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 5, bottom: 15),
                child: Stack(
                  children: [
                    // A column for Enter Amount, Enter Address, Error containers and the pop up list
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        bottom: max(
                          0,
                          MediaQuery.of(context).viewInsets.bottom - 180,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 15),
                              const BalanceTextWidget(),
                              // ******* Enter Amount Container ******* //
                              getEnterAmountContainer(),
                              // ******* Enter Amount Container End ******* //

                              // ******* Enter Amount Error Container ******* //
                              Container(
                                alignment: const AlignmentDirectional(0, 0),
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  _amountValidationText,
                                  style: styles.textStyleParagraphThinPrimary,
                                ),
                              ),
                              // ******* Enter Amount Error Container End ******* //
                            ],
                          ),
                          // Column for Enter Address container + Enter Address Error container
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.105,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.105,
                                      ),
                                      alignment: Alignment.bottomCenter,
                                      constraints: const BoxConstraints(
                                        maxHeight: 174,
                                      ),
                                      // ********************************************* //
                                      // ********* The pop-up Contacts List ********* //
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: theme.backgroundDarkest,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            margin: EdgeInsets.only(bottom: 50),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              padding: const EdgeInsets.only(
                                                  bottom: 0, top: 0),
                                              itemCount: _contacts.length,
                                              itemBuilder: (context, index) {
                                                return _buildContactItem(
                                                    _contacts[index]);
                                              },
                                            ), // ********* The pop-up Contacts List End ********* //
                                            // ************************************************** //
                                          ),
                                        ),
                                      ),
                                    ),
                                    getEnterAddressContainer(),
                                  ],
                                ),
                              ),

                              // ******* Enter Address Error Container ******* //
                              Container(
                                alignment: const AlignmentDirectional(0, 0),
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  _addressValidationText,
                                  style: styles.textStyleParagraphThinPrimary,
                                ),
                              ),
                              // ******* Enter Address Error Container End ******* //
                              if (feeRaw != null && feeRaw! > BigInt.zero) ...[
                                FeeWidget(
                                  amount: Amount.raw(
                                    feeRaw!,
                                    tokenInfo: TokenInfo.vite,
                                  ),
                                ),
                              ],
                              const SizedBox(height: 3),
                              Column(
                                children: [
                                  if (hasData)
                                    SendDataWidget(data: _data!)
                                  else
                                    getEnterMemoContainer(),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const ListTopGradient(),
                    const ListBottomGradient(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  PrimaryButton(
                    title: l10n.send,
                    onPressed: () {
                      final validRequest = _validateRequest();
                      if (!validRequest) {
                        return;
                      }
                      final tokenInfo = ref.read(selectedTokenProvider);
                      final addressText = _addressController.text.trim();
                      Contact? contact = null;
                      String destination;

                      final contacts = ref.read(contactsProvider);
                      if (addressText.startsWith("@")) {
                        // Need to make sure its a valid contact
                        contact = contacts.getContactWithName(addressText);

                        if (contact == null) {
                          setState(() {
                            _addressValidationText = l10n.contactInvalid;
                          });
                          return;
                        }
                        destination = contact.address;
                      } else {
                        destination = addressText;
                        contact = contacts.getLabelForAddress(destination);
                      }

                      final toAddress = Address.tryParse(destination);
                      if (toAddress == null) {
                        UIUtil.showSnackbar(
                            'Invalid destination address', context);
                        return;
                      }

                      final memo = _memoController.text;
                      if (_data == null && memo.isNotEmpty) {
                        _data = stringToBytesUtf8(memo);
                      }

                      final tx = SendTx.compose(
                        address: account.address,
                        toAddress: toAddress,
                        amount: amountRaw ?? BigInt.zero,
                        tokenInfo: tokenInfo,
                        fee: feeRaw,
                        data: _data,
                      );

                      Sheets.showAppHeightNineSheet(
                        context: context,
                        theme: theme,
                        widget: SendConfirmSheet(
                          tx: tx,
                          label: contact?.name,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  PrimaryOutlineButton(
                    title: l10n.scanQrCode,
                    onPressed: scanQrCode,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build contact items for the list
  Widget _buildContactItem(Contact contact) {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 42,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                _addressController.text = contact.name;
                FocusManager.instance.primaryFocus?.unfocus();

                setState(() {
                  _isContact = true;
                  _contactButtonVisible = false;
                  _pasteButtonVisible = false;
                  _sendAddressStyle = AddressStyle.PRIMARY;
                });
              },
              child: Text(
                contact.name,
                textAlign: TextAlign.center,
                style: styles.textStyleAddressPrimary,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 1,
            color: theme.text03,
          ),
        ],
      );
    });
  }

  /// Validate form data to see if valid
  /// @returns true if valid, false otherwise
  bool _validateRequest() {
    final l10n = ref.read(l10nProvider);

    _amountFocusNode.unfocus();
    _addressFocusNode.unfocus();
    _memoFocusNode.unfocus();

    // Validate amount
    if (amountRaw == null) {
      setState(() {
        _amountValidationText = l10n.amountMissing;
      });
      return false;
    }

    final tokenInfo = ref.read(selectedTokenProvider);
    BigInt balanceRaw = ref.read(balanceForTokenProvider(tokenInfo.tokenId));

    if (amountRaw! > balanceRaw) {
      setState(() => _amountValidationText = l10n.insufficientBalance);
      return false;
    }

    // Validate address
    final addressText = _addressController.text.trim();
    bool isContact = addressText.startsWith('@');
    if (addressText.isEmpty) {
      setState(() {
        _addressValidationText = l10n.addressMising;
        _pasteButtonVisible = true;
      });
      return false;
    }
    if (!isContact && Address.tryParse(addressText) == null) {
      setState(() {
        _addressValidationText = l10n.invalidAddress;
        _pasteButtonVisible = true;
      });
      return false;
    }
    if (!isContact) {
      setState(() {
        _addressValidationText = '';
        _pasteButtonVisible = false;
      });
      _addressFocusNode.unfocus();
    }
    return true;
  }

  Widget getEnterAmountContainer() {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final styles = ref.watch(stylesProvider);
      final l10n = ref.watch(l10nProvider);

      final tokenInfo = ref.watch(selectedTokenProvider);
      final balance = ref.watch(balanceForTokenProvider(tokenInfo.tokenId));
      final isMaxSend = amountRaw == balance;

      ref.listen<TokenInfo>(selectedTokenProvider, (_, tokenInfo) {
        final text = _amountController.text;
        final amountDecimal = Decimal.tryParse(text);
        if (amountDecimal == null) {
          amountRaw = null;
          return;
        }
        amountRaw = Amount.value(amountDecimal, tokenInfo: tokenInfo).raw;
        setState(() => _amountValidationText = '');
      });

      return AppTextField(
        focusNode: _amountFocusNode,
        controller: _amountController,
        topMargin: 15,
        cursorColor: theme.primary,
        style: styles.textStyleParagraphPrimary,
        inputFormatters: [
          CurrencyFormatter(maxDecimalDigits: tokenInfo.decimals),
          LocalCurrencyFormatter(
            active: false,
            maxDeciamlDigits: tokenInfo.decimals,
            currencyFormat: NumberFormat.currency(
              locale: 'en',
              symbol: '\$',
            ),
          )
        ],
        onChanged: (text) {
          final amountDecimal = Decimal.tryParse(text);
          if (amountDecimal == null) {
            amountRaw = null;
            return;
          }
          amountRaw = Amount.value(amountDecimal, tokenInfo: tokenInfo).raw;
          // Always reset the error message to be less annoying
          setState(() => _amountValidationText = '');
        },
        textInputAction: TextInputAction.done,
        maxLines: null,
        autocorrect: false,
        hintText: _amountHint ?? l10n.enterAmount,
        prefixButton: TextFieldButton(
          icon: AppIcons.swapcurrency,
          widget: TokenIconWidget(tokenId: tokenInfo.tokenId),
          onPressed: () {
            Sheets.showAppHeightEightSheet(
              context: context,
              widget: ProviderScope(
                overrides: [
                  tokenCardActionProvider.overrideWithValue(
                    TokenCardAction.selectToken,
                  ),
                ],
                child: const TokenSelectSheet(),
              ),
              theme: theme,
              backgroundColor: theme.background,
            );
          },
        ),
        suffixButton: TextFieldButton(
          icon: AppIcons.max,
          onPressed: () {
            if (isMaxSend) {
              return;
            }
            final tokenInfo = ref.read(selectedTokenProvider);
            amountRaw = ref.read(balanceForTokenProvider(tokenInfo.tokenId));
            _amountController.text =
                ref.read(tokenBalanceDisplayProvider(tokenInfo.tokenId));

            _addressController.selection = TextSelection.fromPosition(
              TextPosition(offset: _addressController.text.length),
            );
            _addressFocusNode.requestFocus();
          },
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition: !isMaxSend,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textAlign: TextAlign.center,
        onSubmitted: (text) {
          //FocusScope.of(context).unfocus();
          if (Address.tryParse(_addressController.text) == null) {
            FocusScope.of(context).requestFocus(_addressFocusNode);
          }
        },
      );
    });
  }

  Widget getEnterAddressContainer() {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final l10n = ref.watch(l10nProvider);
      final styles = ref.watch(stylesProvider);

      return AppTextField(
        topMargin: 124,
        padding: _addressValidAndUnfocused
            ? EdgeInsets.symmetric(horizontal: 25, vertical: 15)
            : EdgeInsets.zero,
        focusNode: _addressFocusNode,
        controller: _addressController,
        cursorColor: theme.primary,
        inputFormatters: [
          _isContact
              ? LengthLimitingTextInputFormatter(20)
              : LengthLimitingTextInputFormatter(kViteAddressLength),
        ],
        textInputAction: TextInputAction.done,
        maxLines: null,
        autocorrect: false,
        hintText: _addressHint ?? l10n.enterAddress,
        prefixButton: TextFieldButton(
          icon: AppIcons.at,
          onPressed: () {
            if (_contactButtonVisible && _contacts.length == 0) {
              // Show menu
              FocusScope.of(context).requestFocus(_addressFocusNode);
              if (_addressController.text.length == 0) {
                _addressController.text = "@";
                _addressController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _addressController.text.length));
              }
              setState(() {
                _contacts = ref.read(contactsProvider).contacts;
              });
            }
          },
        ),
        fadePrefixOnCondition: true,
        prefixShowFirstCondition:
            _contactButtonVisible && _contacts.length == 0,
        suffixButton: TextFieldButton(
          icon: AppIcons.paste,
          onPressed: () {
            if (!_pasteButtonVisible) {
              return;
            }
            Clipboard.getData("text/plain").then((ClipboardData? data) {
              if (data == null || data.text == null) {
                return;
              }
              final viteAddress = ViteUtil.findAddressInString(data.text!);
              if (viteAddress != null) {
                final contacts = ref.read(contactsProvider);
                final contact = contacts.getContactWithAddress(
                  viteAddress,
                  includeLabels: true,
                );
                if (contact == null) {
                  setState(() {
                    _isContact = false;
                    _addressValidationText = "";
                    _sendAddressStyle = AddressStyle.TEXT90;
                    _pasteButtonVisible = false;
                    _contactButtonVisible = false;
                  });
                  _addressController.text = viteAddress;
                  _addressFocusNode.unfocus();
                  _memoFocusNode.unfocus();
                  setState(() {
                    _addressValidAndUnfocused = true;
                  });
                } else {
                  // Is a contact
                  setState(() {
                    _isContact = true;
                    _addressValidationText = "";
                    _sendAddressStyle = AddressStyle.PRIMARY;
                    _pasteButtonVisible = false;
                    _contactButtonVisible = false;
                  });
                  _addressController.text = contact.name;
                }
              }
            });
          },
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition: _pasteButtonVisible,
        style: _sendAddressStyle == AddressStyle.TEXT60
            ? styles.textStyleAddressText60
            : _sendAddressStyle == AddressStyle.TEXT90
                ? styles.textStyleAddressText90
                : styles.textStyleAddressPrimary,
        onChanged: (text) {
          if (text.length > 0) {
            setState(() {
              _contactButtonVisible = false;
            });
          } else {
            setState(() {
              _contactButtonVisible = true;
            });
          }
          bool isContact = text.startsWith("@");
          // Switch to contact mode if starts with @
          if (isContact) {
            setState(() {
              _isContact = true;
            });
            final contacts = ref.read(contactsProvider);
            final matchedList = contacts.getContactsWithNameLike(text);
            setState(() => _contacts = matchedList);
          } else {
            setState(() {
              _isContact = false;
              _contacts = [];
            });
          }
          // Always reset the error message to be less annoying
          setState(() {
            _addressValidationText = '';
          });
          if (!isContact && Address.tryParse(text) != null) {
            FocusManager.instance.primaryFocus?.unfocus();

            setState(() {
              _sendAddressStyle = AddressStyle.TEXT90;
              _addressValidationText = '';
              _pasteButtonVisible = false;
            });
          } else if (!isContact) {
            setState(() {
              _sendAddressStyle = AddressStyle.TEXT60;
              _pasteButtonVisible = true;
            });
          } else {
            final contact = ref.read(contactsProvider).getContactWithName(text);
            if (contact == null) {
              setState(() {
                _sendAddressStyle = AddressStyle.TEXT60;
              });
            } else {
              setState(() {
                _pasteButtonVisible = false;
                _sendAddressStyle = AddressStyle.PRIMARY;
              });
            }
          }
        },
        overrideTextFieldWidget: _addressValidAndUnfocused
            ? GestureDetector(
                onTap: () {
                  setState(() => _addressValidAndUnfocused = false);
                  Future.delayed(Duration(milliseconds: 50), () {
                    FocusScope.of(context).requestFocus(_addressFocusNode);
                  });
                },
                child: AddressThreeLineText(
                  address: _addressController.text,
                ),
              )
            : null,
      );
    });
  }

  Widget getEnterMemoContainer() {
    return Consumer(builder: (context, ref, _) {
      final theme = ref.watch(themeProvider);
      final l10n = ref.watch(l10nProvider);

      return AppTextField(
        padding: _memoValidAndUnfocused
            ? const EdgeInsets.symmetric(horizontal: 25, vertical: 15)
            : EdgeInsets.zero,
        focusNode: _memoFocusNode,
        controller: _memoController,
        cursorColor: theme.primary,
        inputFormatters: [
          LengthLimitingTextInputFormatter(120),
        ],
        textInputAction: TextInputAction.done,
        maxLines: null,
        autocorrect: false,
        hintText: l10n.enterMemo,
        prefixButton: TextFieldButton(
          icon: AppIcons.scan,
          onPressed: () async {
            FocusManager.instance.primaryFocus?.unfocus();

            final qr = await UserDataUtil.scanQrCode(context);
            final data = qr?.code;
            if (data == null) {
              return;
            }

            _memoController.text = data;
            _memoPasteButtonVisible = false;
            _memoQrButtonVisible = false;

            setState(() => _memoValidAndUnfocused = true);
          },
        ),
        fadePrefixOnCondition: true,
        prefixShowFirstCondition: _memoQrButtonVisible,
        suffixButton: TextFieldButton(
          icon: AppIcons.paste,
          onPressed: () {
            if (!_memoPasteButtonVisible) {
              return;
            }

            Clipboard.getData("text/plain").then((ClipboardData? data) {
              final text = data?.text;
              if (text == null) {
                return;
              }
              FocusManager.instance.primaryFocus?.unfocus();
              _memoController.text = text;
              _memoPasteButtonVisible = false;
              _memoQrButtonVisible = false;

              setState(() => _memoValidAndUnfocused = true);
            });
          },
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition: _memoPasteButtonVisible,
        onChanged: (text) {
          if (text.length > 0) {
            setState(() {
              _memoQrButtonVisible = false;
              _memoPasteButtonVisible = false;
            });
          } else {
            setState(() {
              _memoQrButtonVisible = true;
              _memoPasteButtonVisible = true;
            });
          }
        },
        overrideTextFieldWidget: _memoValidAndUnfocused
            ? GestureDetector(
                onTap: () {
                  setState(() => _memoValidAndUnfocused = false);
                  Future.delayed(Duration(milliseconds: 50), () {
                    FocusScope.of(context).requestFocus(_memoFocusNode);
                  });
                },
                child: Text(_memoController.text),
              )
            : null,
      );
    });
  }
}
