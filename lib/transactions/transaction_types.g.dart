// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map json) => _$TransactionImpl(
      blockType: const BlockTypeConverter().fromJson(json['blockType'] as int),
      address: Address.fromJson(json['address'] as String),
      fromAddress: Address.fromJson(json['fromAddress'] as String),
      toAddress: Address.fromJson(json['toAddress'] as String),
      hash: Hash.fromJson(json['hash'] as String),
      height: BigInt.parse(json['height'] as String),
      amount: BigInt.parse(json['amount'] as String),
      tokenId: Token.fromJson(json['tokenId'] as String),
      tokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['tokenInfo'] as Map)),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'blockType': const BlockTypeConverter().toJson(instance.blockType),
      'address': instance.address.toJson(),
      'fromAddress': instance.fromAddress.toJson(),
      'toAddress': instance.toAddress.toJson(),
      'hash': instance.hash.toJson(),
      'height': instance.height.toString(),
      'amount': instance.amount.toString(),
      'tokenId': instance.tokenId.toJson(),
      'tokenInfo': instance.tokenInfo.toJson(),
    };

_$AccountHistoryImpl _$$AccountHistoryImplFromJson(Map json) =>
    _$AccountHistoryImpl(
      history: IMap<int, Transaction>.fromJson(
          Map<String, Object?>.from(json['history'] as Map),
          (value) => value as int,
          (value) =>
              Transaction.fromJson(Map<String, dynamic>.from(value as Map))),
    );

Map<String, dynamic> _$$AccountHistoryImplToJson(
        _$AccountHistoryImpl instance) =>
    <String, dynamic>{
      'history': instance.history.toJson(
        (value) => value,
        (value) => value.toJson(),
      ),
    };
