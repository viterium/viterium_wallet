import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';

part 'transaction_types.freezed.dart';
part 'transaction_types.g.dart';

@freezed
class TxState with _$TxState {
  const factory TxState.unknown() = _TxStateUnknown;
  const factory TxState.unconfirmed() = _TxStateUnconfirmed;
  const factory TxState.confirming(int confirmations) = _TxStateConfirming;
  const factory TxState.confirmed() = _TxStateConfirmed;
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    @BlockTypeConverter() required BlockType blockType,
    required Address address,
    required Address fromAddress,
    required Address toAddress,
    required Hash hash,
    required BigInt height,
    required BigInt amount,
    required Token tokenId,
    required TokenInfo tokenInfo,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

@freezed
class AccountHistory with _$AccountHistory {
  const factory AccountHistory({
    required IMap<int, Transaction> history,
  }) = _AccountHistory;

  factory AccountHistory.fromJson(Map<String, dynamic> json) =>
      _$AccountHistoryFromJson(json);
}

@freezed
class AccountTokenPair with _$AccountTokenPair {
  const factory AccountTokenPair({
    required Account account,
    Token? token,
  }) = _AccountTokenPair;
}
