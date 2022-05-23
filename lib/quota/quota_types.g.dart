// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StakeInfo _$$_StakeInfoFromJson(Map json) => _$_StakeInfo(
      stakeAddress: json['stakeAddress'] as String,
      stakeAmount: json['stakeAmount'] as String,
      expirationHeight: json['expirationHeight'] as String,
      beneficiary: json['beneficiary'] as String,
      expirationTime: json['expirationTime'] as int,
      isDelegated: json['isDelegated'] as bool,
      delegateAddress: json['delegateAddress'] as String?,
      bid: json['bid'] as int? ?? 0,
      hash: json['hash'] as String?,
    );

Map<String, dynamic> _$$_StakeInfoToJson(_$_StakeInfo instance) {
  final val = <String, dynamic>{
    'stakeAddress': instance.stakeAddress,
    'stakeAmount': instance.stakeAmount,
    'expirationHeight': instance.expirationHeight,
    'beneficiary': instance.beneficiary,
    'expirationTime': instance.expirationTime,
    'isDelegated': instance.isDelegated,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delegateAddress', instance.delegateAddress);
  val['bid'] = instance.bid;
  writeNotNull('hash', instance.hash);
  return val;
}

_$_StakeListInfo _$$_StakeListInfoFromJson(Map json) => _$_StakeListInfo(
      totalStakeAmount: BigInt.parse(json['totalStakeAmount'] as String),
      totalStakeCount: json['totalStakeCount'] as int,
      stakeList: (json['stakeList'] as List<dynamic>?)
              ?.map((e) =>
                  RpcStakeInfo.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StakeListInfoToJson(_$_StakeListInfo instance) =>
    <String, dynamic>{
      'totalStakeAmount': instance.totalStakeAmount.toString(),
      'totalStakeCount': instance.totalStakeCount,
      'stakeList': instance.stakeList.map((e) => e.toJson()).toList(),
    };
