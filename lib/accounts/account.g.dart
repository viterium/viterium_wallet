// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map json) => _$AccountImpl(
      index: json['index'] as int,
      name: json['name'] as String,
      address: Address.fromJson(json['address'] as String),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'address': instance.address.toJson(),
    };
