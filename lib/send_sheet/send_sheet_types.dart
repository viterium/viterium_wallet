import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

import '../contacts/contact.dart';

part 'send_sheet_types.freezed.dart';

@freezed
class SendSheetState with _$SendSheetState {
  const factory SendSheetState({
    Address? address,
    Contact? contact,
    BigInt? amount,
    required TokenInfo tokenInfo,
    @Default('') String memo,
    String? data,
  }) = _SendSheetState;
}

@freezed
class AmountState with _$AmountState {
  const factory AmountState({
    @Default('') String? hint,
    @Default('') String validationText,
    @Default(false) bool validAndUnfocused,
    @Default(true) bool tokenButtonVisible,
    @Default(true) bool maxButtonVisible,
  }) = _AmountState;
}

@freezed
class AddressState with _$AddressState {
  factory AddressState({
    @Default('') String? hint,
    @Default('') String validationText,
    @Default(false) bool validAndUnfocused,
    @Default(true) bool contactButtonVisible,
    @Default(true) bool pasteButtonVisible,
    @Default(const []) List<Contact> contacts,
    //@Default(AddressStyle.TEXT60) AddressStyle addressStyle,
  }) = _AddressState;
}

@freezed
class MemoState with _$MemoState {
  factory MemoState({
    @Default('') String? hint,
    @Default('') String validationText,
    @Default(false) bool validAndUnfocused,
    @Default(true) bool qrButtonVisible,
    @Default(true) bool pasteButtonVisible,
  }) = _MemoState;
}
