import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'send_tx.freezed.dart';

@freezed
class SendTx with _$SendTx {
  const SendTx._();

  Address get address => rawTx.address!;
  Address get toAddress => rawTx.toAddress!;
  BigInt get rawAmount => rawTx.amount ?? BigInt.zero;
  Token get token => tokenInfo.token;
  TokenId get tokenId => tokenInfo.tokenId;
  BigInt? get fee => rawTx.fee;
  Uint8List? get data => rawTx.data;

  Amount get amount => Amount.raw(rawAmount, tokenInfo: tokenInfo);

  const factory SendTx.sendTransfer({
    required RawTransaction rawTx,
    required TokenInfo tokenInfo,
  }) = _SendTxSendTransfer;

  const factory SendTx.callContract({
    required RawTransaction rawTx,
    required TokenInfo tokenInfo,
  }) = _SendTxCallContract;

  const factory SendTx.createContract({
    required RawTransaction rawTx,
    required TokenInfo tokenInfo,
  }) = _SendTxCreateContract;

  factory SendTx.compose({
    required Address address,
    required Address toAddress,
    required BigInt amount,
    required TokenInfo tokenInfo,
    required BigInt? fee,
    required Uint8List? data,
  }) {
    if (toAddress.isContractAddress && data != null) {
      final rawTx = RawTransaction.callContract(
        address: address,
        contractAddress: toAddress,
        amount: amount,
        token: tokenInfo.token,
        data: data,
        fee: fee,
      );
      return SendTx.callContract(
        rawTx: rawTx,
        tokenInfo: tokenInfo,
      );
    }
    final rawTx = RawTransaction.send(
      address: address,
      toAddress: toAddress,
      token: tokenInfo.token,
      amount: amount,
      data: data,
    );
    return SendTx.sendTransfer(
      rawTx: rawTx,
      tokenInfo: tokenInfo,
    );
  }

  factory SendTx.validated({
    required RawTransaction rawTx,
    required TokenInfo tokenInfo,
  }) {
    final address = rawTx.address;
    final toAddress = rawTx.toAddress;
    final token = rawTx.token ?? Token.vite;
    final data = rawTx.data;

    if (address == null) {
      throw Exception('Missing account address');
    }
    if (toAddress == null) {
      throw Exception('Missing destination address');
    }

    if (token != tokenInfo.token) {
      throw Exception('Token mismatch');
    }

    if (rawTx.type == BlockType.createContractRequest) {
      // Create Contract
      if (toAddress.isUserAddress) {
        throw Exception('Destination is not a contract address');
      }
      if (data == null) {
        throw Exception('Missing data');
      }
      return SendTx.createContract(
        rawTx: rawTx,
        tokenInfo: tokenInfo,
      );
    }
    if (rawTx.type == BlockType.transferRequest) {
      if (toAddress.isContractAddress && data != null) {
        // Contract Call
        return SendTx.callContract(
          rawTx: rawTx,
          tokenInfo: tokenInfo,
        );
      }
      // Send Transfer
      return SendTx.sendTransfer(
        rawTx: rawTx,
        tokenInfo: tokenInfo,
      );
    }
    throw Exception('Unsupported transaction type');
  }
}
