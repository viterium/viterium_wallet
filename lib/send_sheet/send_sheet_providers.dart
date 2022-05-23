import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../contacts/contacts_providers.dart';
import '../core/vite_uri.dart';
import 'balance_text_widget.dart';
import 'send_sheet_types.dart';

final amountStateProvider =
    StateNotifierProvider.autoDispose<AmountStateNotifier, AmountState>((ref) {
  return AmountStateNotifier(ref.read);
});

final addressStateProvider =
    StateNotifierProvider.autoDispose<AddressStateNotifier, AddressState>(
        (ref) {
  return AddressStateNotifier(ref.read);
});

final memoStateProvider =
    StateNotifierProvider.autoDispose<MemoStateNotifier, MemoState>((ref) {
  return MemoStateNotifier();
});

final sendSheetStateProvider =
    StateNotifierProvider.autoDispose<SendSheetStateNotifier, SendSheetState>(
        (ref) {
  final tokenInfo = ref.watch(selectedTokenProvider);
  return SendSheetStateNotifier(ref.read, tokenInfo);
});

class SendSheetStateNotifier extends StateNotifier<SendSheetState> {
  final Reader read;
  SendSheetStateNotifier(this.read, TokenInfo tokenInfo)
      : super(
          SendSheetState(tokenInfo: tokenInfo),
        );
}

class AmountStateNotifier extends StateNotifier<AmountState> {
  final focusNode = FocusNode();
  final controller = TextEditingController();

  final Reader read;

  AmountStateNotifier(this.read) : super(AmountState()) {}

  void setAmount(String amount) {
    controller.text = amount;
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();

    super.dispose();
  }
}

class AddressStateNotifier extends StateNotifier<AddressState> {
  final focusNode = FocusNode();
  final controller = TextEditingController();

  final Reader read;

  AddressStateNotifier(this.read) : super(AddressState()) {
    focusNode.addListener(() {
      final text = controller.text;
      if (focusNode.hasFocus) {
        state = state.copyWith(hint: null, validAndUnfocused: false);

        final position = TextPosition(offset: text.length);
        controller.selection = TextSelection.fromPosition(position);
        if (text.startsWith('@')) {
          final contacts = read(contactsProvider);
          final contactList = contacts.getContactsWithNameLike(text);
          state = state.copyWith(contacts: contactList);
        }
      } else {
        final viteUri = ViteUri.tryParse(text);
        final validAndUnfocussed = viteUri != null;
        state = state.copyWith(
          hint: '',
          contacts: const [],
          validAndUnfocused: validAndUnfocussed,
        );

        if (text.trim() == '@') {
          controller.text = '';
          state = state.copyWith(contactButtonVisible: true);
        }
      }
    });
  }

  void focusAddress(BuildContext context) {
    if (!Address.isValid(controller.text)) {
      FocusScope.of(context).requestFocus(focusNode);
    }
  }

  void editAddress(BuildContext context) {
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();

    super.dispose();
  }
}

class MemoStateNotifier extends StateNotifier<MemoState> {
  final focusNode = FocusNode();
  final controller = TextEditingController();

  MemoStateNotifier() : super(MemoState()) {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        state = state.copyWith(hint: null, validAndUnfocused: false);
      } else {
        state = state.copyWith(hint: '');
      }
    });
  }

  void updateValidationText(String text) {
    state = state.copyWith(validationText: text);
  }

  void updateState(MemoState state) {
    state = state;
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();

    super.dispose();
  }
}
