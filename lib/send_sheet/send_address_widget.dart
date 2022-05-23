import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_styles.dart';
import '../contacts/contact.dart';
import '../core/vite_uri.dart';
import '../util/ui_util.dart';
import '../widgets/app_text_field.dart';
import 'contacts_popover_widget.dart';
import 'send_sheet.dart';

const kMaxContactNameLength = 20;

class SendAddressWidget extends ConsumerStatefulWidget {
  final Address? address;
  final Contact? contact;

  const SendAddressWidget({
    Key? key,
    this.address,
    this.contact,
  }) : super(key: key);

  @override
  _SendAddressWidgetState createState() =>
      _SendAddressWidgetState();
}

class _SendAddressWidgetState extends ConsumerState<SendAddressWidget> {
  final _focusNode = FocusNode();
  final _controller = TextEditingController();
  String? _hint = '';
  String _validationText = '';
  bool _validAndUnfocused = false;
  bool _pasteButtonVisible = true;
  bool _contactButtonVisible = true;
  AddressStyle _sendAddressStyle = AddressStyle.TEXT60;

  List<Contact> _contacts = [];
  bool _isContact = false;

  @override
  void initState() {
    super.initState();

    if (widget.contact != null) {
      _controller.text = widget.contact!.name;
      _isContact = true;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = AddressStyle.PRIMARY;
    } else if (widget.address != null) {
      _controller.text = widget.address!.viteAddress;
      _contactButtonVisible = false;
      _pasteButtonVisible = false;
      _sendAddressStyle = AddressStyle.TEXT90;
      _validAndUnfocused = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final localization = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);
    return Column(children: [
      Container(
        alignment: Alignment.topCenter,
        child: Stack(children: [
          ContactsPopoverWidget(
            contacts: _contacts,
            callback: (contact) {
              _controller.text = contact.name;
              _focusNode.unfocus();
              setState(() {
                _isContact = true;
                _contactButtonVisible = false;
                _pasteButtonVisible = false;
                _sendAddressStyle = AddressStyle.PRIMARY;
              });
            },
          ),
          Column(mainAxisSize: MainAxisSize.min, children: [
            AppTextField(
              topMargin: 124,
              padding: _validAndUnfocused
                  ? EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                  : EdgeInsets.zero,
              textAlign: TextAlign.center,
              focusNode: _focusNode,
              controller: _controller,
              cursorColor: theme.primary,
              inputFormatters: [
                _isContact
                    ? LengthLimitingTextInputFormatter(kMaxContactNameLength)
                    : LengthLimitingTextInputFormatter(kViteAddressLength),
              ],
              textInputAction: TextInputAction.done,
              maxLines: null,
              autocorrect: false,
              hintText: _hint == null ? "" : localization.enterAddress,
              prefixButton: TextFieldButton(
                icon: AppIcons.at,
                onPressed: () {
                  if (_contactButtonVisible && _contacts.length == 0) {
                    // Show menu
                    FocusScope.of(context).requestFocus(_focusNode);
                    if (_controller.text.length == 0) {
                      _controller.text = "@";
                      _controller.selection = TextSelection.fromPosition(
                        TextPosition(offset: _controller.text.length),
                      );
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
                onPressed: () async {
                  if (!_pasteButtonVisible) {
                    return;
                  }
                  final data = await Clipboard.getData("text/plain");
                  if (data == null || data.text == null) {
                    return;
                  }
                  final viteUri = ViteUri.tryParse(data.text!);
                  if (viteUri != null) {
                    final contact = ref
                        .read(contactsProvider)
                        .getContactWithAddress(viteUri.viteAddress);
                    if (contact == null) {
                      setState(() {
                        _isContact = false;
                        _validationText = "";
                        _sendAddressStyle = AddressStyle.TEXT90;
                        _pasteButtonVisible = false;
                        _contactButtonVisible = false;
                      });
                      _controller.text = viteUri.viteAddress;
                      _focusNode.unfocus();
                      setState(() {
                        _validAndUnfocused = true;
                      });
                    } else {
                      // Is a contact
                      setState(() {
                        _isContact = true;
                        _validationText = "";
                        _sendAddressStyle = AddressStyle.PRIMARY;
                        _pasteButtonVisible = false;
                        _contactButtonVisible = false;
                      });
                      _controller.text = contact.name;
                    }
                  }
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
                  final matchedList =
                      ref.read(contactsProvider).getContactsWithNameLike(text);
                  setState(() {
                    _contacts = matchedList;
                  });
                } else {
                  setState(() {
                    _isContact = false;
                    _contacts = [];
                  });
                }
                // Always reset the error message to be less annoying
                setState(() {
                  _validationText = '';
                });
                if (!isContact && ViteUri.tryParse(text) != null) {
                  _focusNode.unfocus();
                  setState(() {
                    _sendAddressStyle = AddressStyle.TEXT90;
                    _validationText = '';
                    _pasteButtonVisible = false;
                  });
                } else if (!isContact) {
                  setState(() {
                    _sendAddressStyle = AddressStyle.TEXT60;
                    _pasteButtonVisible = true;
                  });
                } else {
                  final contacts = ref.read(contactsProvider);
                  final contact = contacts.getContactWithName(text);
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
              overrideTextFieldWidget: _validAndUnfocused
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _validAndUnfocused = false;
                        });
                        Future.delayed(Duration(milliseconds: 50), () {
                          FocusScope.of(context).requestFocus(_focusNode);
                        });
                      },
                      child: ThreeLineAddressText(address: _controller.text),
                    )
                  : null,
            ),
            Container(
              alignment: const AlignmentDirectional(0, 0),
              margin: const EdgeInsets.only(top: 3),
              child: Text(
                _validationText,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.primary,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ]),
        ]),
      ),
    ]);
  }
}
