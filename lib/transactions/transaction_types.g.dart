// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map json) => _$_Transaction(
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

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'blockType', const BlockTypeConverter().toJson(instance.blockType));
  val['address'] = instance.address.toJson();
  val['fromAddress'] = instance.fromAddress.toJson();
  val['toAddress'] = instance.toAddress.toJson();
  val['hash'] = instance.hash.toJson();
  val['height'] = instance.height.toString();
  val['amount'] = instance.amount.toString();
  val['tokenId'] = instance.tokenId.toJson();
  val['tokenInfo'] = instance.tokenInfo.toJson();
  return val;
}

_$_AccountHistory _$$_AccountHistoryFromJson(Map json) => _$_AccountHistory(
      history: IMap<int, Transaction>.fromJson(
          Map<String, Object?>.from(json['history'] as Map),
          (value) => value as int,
          (value) =>
              Transaction.fromJson(Map<String, dynamic>.from(value as Map))),
    );

Map<String, dynamic> _$$_AccountHistoryToJson(_$_AccountHistory instance) =>
    <String, dynamic>{
      'history': instance.history.toJson(
        (value) => value,
        (value) => value.toJson(),
      ),
    };
