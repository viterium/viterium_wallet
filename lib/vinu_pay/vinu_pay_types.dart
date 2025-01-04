import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vinu_pay_types.freezed.dart';

@freezed
class VinuPayEvent with _$VinuPayEvent {
  const factory VinuPayEvent.invoicePaid({
    required String txId,
    required Address merchantAddress,
    required Address payerAddress,
    required BigInt amount,
  }) = _VinuPayEventInvoicePaid;

  const factory VinuPayEvent.nameTransferred({
    required BigInt nameId,
    required Address oldOwnerAddress,
    required Address newOwnerAddress,
  }) = _VinuPayEventNameTransferred;

  const factory VinuPayEvent.newInvoice({
    required String txId,
    required Address merchantAddress,
  }) = _VinuPayEventNewInvoice;

  const factory VinuPayEvent.roleHolderChanged({
    required Uint8List role,
    required Address previousHolder,
    required Address newHolder,
  }) = _VinuPayEventRoleHolderChanged;

  const factory VinuPayEvent.treasuryWithdrawal({
    required Address to,
    required BigInt amount,
  }) = _VinuPayEventTreasuryWithdrawal;
}

@freezed
class VinuPayName with _$VinuPayName {
  const factory VinuPayName({
    required Address ownerAddress,
    required String name,
    required bool isTrusted,
    required BigInt nameId,
  }) = _VinuPayName;

  factory VinuPayName.fromList(List<Object> list) => VinuPayName(
        ownerAddress: list[0] as Address,
        name: list[1] as String,
        isTrusted: list[2] as bool,
        nameId: list[3] as BigInt,
      );
}

@freezed
class VinuPayTransaction with _$VinuPayTransaction {
  const factory VinuPayTransaction({
    required Address destination,
    required BigInt amount,
    required BigInt nameId,
    required BigInt expireBlock,
    required Token txToken,
    required BigInt status,
  }) = _VinuPayTransaction;

  factory VinuPayTransaction.fromList(List<Object> list) => VinuPayTransaction(
        destination: list[0] as Address,
        amount: list[1] as BigInt,
        nameId: list[2] as BigInt,
        expireBlock: list[3] as BigInt,
        txToken: list[4] as Token,
        status: list[5] as BigInt,
      );
}
