// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map json) => _$_Account(
      index: json['index'] as int,
      name: json['name'] as String,
      address: Address.fromJson(json['address'] as String),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'address': instance.address.toJson(),
    };
