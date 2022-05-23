import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../core/vite_uri.dart';
import '../util/formatters.dart';
import '../util/ui_util.dart';
import '../util/user_data_util.dart';
import '../util/vite_util.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'contact.dart';

class ContactAddSheet extends ConsumerStatefulWidget {
  final String? address;

  const ContactAddSheet({Key? key, this.address}) : super(key: key);

  _ContactAddSheetState createState() => _ContactAddSheetState();
}

class _ContactAddSheetState extends ConsumerState<ContactAddSheet> {
  final _nameFocusNode = FocusNode();
  final _addressFocusNode = FocusNode();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();

  bool _addressValid = false;
  bool _showPasteButton = true;
  bool _showNameHint = true;
  bool _showAddressHint = true;
  bool _addressValidAndUnfocused = false;
  String _nameValidationText = '';
  String _addressValidationText = '';

  @override
  void initState() {
    super.initState();

    // Add focus listeners
    // On name focus change
    _nameFocusNode.addListener(() {
      setState(() => _showNameHint = !_nameFocusNode.hasFocus);
    });
    // On address focus change
    _addressFocusNode.addListener(() {
      if (_addressFocusNode.hasFocus) {
        setState(() {
          _showAddressHint = false;
          _addressValidAndUnfocused = false;
        });
        _addressController.selection = TextSelection.fromPosition(
          TextPosition(offset: _addressController.text.length),
        );
      } else {
        setState(() {
          _showAddressHint = true;
          if (ViteUri.tryParse(_addressController.text) != null) {
            _addressValidAndUnfocused = true;
          }
        });
      }
    });
  }

  /// Return true if textfield should be shown, false if colorized should be shown
  bool _shouldShowTextField() {
    if (widget.address != null || _addressValidAndUnfocused) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: localization.addContact,
        mainWidget: Column(
          children: [
            // Enter Name Container
            AppTextField(
              topMargin: MediaQuery.of(context).size.height * 0.14,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              focusNode: _nameFocusNode,
              controller: _nameController,
              textInputAction: widget.address != null
                  ? TextInputAction.done
                  : TextInputAction.next,
              hintText: _showNameHint ? localization.contactNameHint : "",
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: theme.text,
                fontFamily: kFontFamily,
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(20),
                ContactInputFormatter()
              ],
              onSubmitted: (text) {
                final scope = FocusScope.of(context);
                if (widget.address == null) {
                  final address = _addressController.text;
                  if (!ViteUtil.isValidAddress(address)) {
                    scope.requestFocus(_addressFocusNode);
                  } else {
                    scope.unfocus();
                  }
                } else {
                  scope.unfocus();
                }
              },
            ),
            // Enter Name Error Container
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                _nameValidationText,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.primary,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Enter Address container
            AppTextField(
              padding: !_shouldShowTextField()
                  ? EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                  : EdgeInsets.zero,
              focusNode: _addressFocusNode,
              controller: _addressController,
              style: _addressValid
                  ? styles.textStyleAddressText90
                  : styles.textStyleAddressText60,
              inputFormatters: [
                LengthLimitingTextInputFormatter(65),
              ],
              textInputAction: TextInputAction.done,
              maxLines: null,
              autocorrect: false,
              hintText: _showAddressHint ? localization.addressHint : '',
              prefixButton: TextFieldButton(
                icon: AppIcons.scan,
                onPressed: () async {
                  final scanResult = await UserDataUtil.scanQrCode(context);
                  if (scanResult?.code == null) {
                    UIUtil.showSnackbar(localization.qrInvalidAddress, context);
                  } else {
                    final data = scanResult!.code!;
                    final viteUri = ViteUri.tryParse(data);

                    if (mounted && viteUri != null) {
                      setState(() {
                        _addressController.text = viteUri.viteAddress;
                        _addressValidationText = "";
                        _addressValid = true;
                        _addressValidAndUnfocused = true;
                      });
                      _addressFocusNode.unfocus();
                    }
                  }
                },
              ),
              fadePrefixOnCondition: true,
              prefixShowFirstCondition: _showPasteButton,
              suffixButton: TextFieldButton(
                icon: AppIcons.paste,
                onPressed: () async {
                  if (!_showPasteButton) {
                    return;
                  }
                  String? data =
                      await UserDataUtil.getClipboardText(DataType.ADDRESS);
                  if (data != null) {
                    setState(() {
                      _addressValid = true;
                      _showPasteButton = false;
                      _addressController.text = data;
                      _addressValidAndUnfocused = true;
                    });
                    _addressFocusNode.unfocus();
                  } else {
                    setState(() {
                      _showPasteButton = true;
                      _addressValid = false;
                    });
                  }
                },
              ),
              fadeSuffixOnCondition: true,
              suffixShowFirstCondition: _showPasteButton,
              onChanged: (text) {
                final address = ViteUri.tryParse(text);
                if (address != null) {
                  setState(() {
                    _addressValid = true;
                    _showPasteButton = false;
                    _addressController.text = address.address.viteAddress;
                  });
                  _addressFocusNode.unfocus();
                } else {
                  setState(() {
                    _showPasteButton = true;
                    _addressValid = false;
                  });
                }
              },
              overrideTextFieldWidget: !_shouldShowTextField()
                  ? GestureDetector(
                      onTap: () {
                        if (widget.address != null) {
                          return;
                        }
                        setState(() {
                          _addressValidAndUnfocused = false;
                        });
                        Future.delayed(Duration(milliseconds: 50), () {
                          FocusScope.of(context)
                              .requestFocus(_addressFocusNode);
                        });
                      },
                      child: ThreeLineAddressText(
                        address: widget.address != null
                            ? widget.address!
                            : _addressController.text,
                      ),
                    )
                  : null,
            ),
            // Enter Address Error Container
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                _addressValidationText,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.primary,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              PrimaryButton(
                title: localization.addContact,
                onPressed: _addContact,
              ),
              const SizedBox(height: 16),
              PrimaryOutlineButton(
                title: localization.close,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _addContact() async {
    final isValid = await _validateForm();
    if (!isValid) {
      return;
    }
    final newContact = Contact(
      name: _nameController.text,
      address:
          widget.address == null ? _addressController.text : widget.address!,
    );
    final contacts = ref.read(contactsProvider);
    await contacts.addContact(newContact);
    final localization = ref.read(l10nProvider);
    UIUtil.showSnackbar(
      localization.contactAdded.replaceAll("%1", newContact.name),
      context,
    );
    Navigator.of(context).pop();
  }

  Future<bool> _validateForm() async {
    final localization = ref.read(l10nProvider);
    bool isValid = true;
    // Address Validations
    // Don't validate address if it came pre-filled in
    if (widget.address == null) {
      if (_addressController.text.isEmpty) {
        isValid = false;
        setState(() {
          _addressValidationText = localization.addressMising;
        });
      } else if (ViteUri.tryParse(_addressController.text) == null) {
        isValid = false;
        setState(() {
          _addressValidationText = localization.invalidAddress;
        });
      } else {
        _addressFocusNode.unfocus();
        bool addressExists = await ref
            .read(contactsProvider)
            .contactExistsWithAddress(_addressController.text);
        if (addressExists) {
          setState(() {
            isValid = false;
            _addressValidationText = localization.contactExists;
          });
        }
      }
    }
    // Name Validations
    if (_nameController.text.isEmpty) {
      isValid = false;
      setState(() {
        _nameValidationText = localization.contactNameMissing;
      });
    } else {
      bool nameExists = await ref
          .read(contactsProvider)
          .contactExistsWithName(_nameController.text);
      if (nameExists) {
        setState(() {
          isValid = false;
          _nameValidationText = localization.contactExists;
        });
      }
    }
    return isValid;
  }
}
