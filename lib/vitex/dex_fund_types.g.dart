// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dex_fund_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountFundInfoImpl _$$AccountFundInfoImplFromJson(Map json) =>
    _$AccountFundInfoImpl(
      tokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['tokenInfo'] as Map)),
      available: BigInt.parse(json['available'] as String),
      locked: BigInt.parse(json['locked'] as String),
      vxLocked: json['vxLocked'] == null
          ? null
          : BigInt.parse(json['vxLocked'] as String),
      vxUnlocking: json['vxUnlocking'] == null
          ? null
          : BigInt.parse(json['vxUnlocking'] as String),
      cancellingStake: json['cancellingStake'] == null
          ? null
          : BigInt.parse(json['cancellingStake'] as String),
    );

Map<String, dynamic> _$$AccountFundInfoImplToJson(
    _$AccountFundInfoImpl instance) {
  final val = <String, dynamic>{
    'tokenInfo': instance.tokenInfo.toJson(),
    'available': instance.available.toString(),
    'locked': instance.locked.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vxLocked', instance.vxLocked?.toString());
  writeNotNull('vxUnlocking', instance.vxUnlocking?.toString());
  writeNotNull('cancellingStake', instance.cancellingStake?.toString());
  return val;
}

_$PlaceOrderInfoImpl _$$PlaceOrderInfoImplFromJson(Map json) =>
    _$PlaceOrderInfoImpl(
      available: json['Available'] as String,
      minTradeAmount: json['MinTradeAmount'] as String,
      feeRate: json['FeeRate'] as int,
      side: json['Side'] as bool,
    );

Map<String, dynamic> _$$PlaceOrderInfoImplToJson(
        _$PlaceOrderInfoImpl instance) =>
    <String, dynamic>{
      'Available': instance.available,
      'MinTradeAmount': instance.minTradeAmount,
      'FeeRate': instance.feeRate,
      'Side': instance.side,
    };
