// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitens_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VitensStateImpl _$$VitensStateImplFromJson(Map json) => _$VitensStateImpl(
      names: (json['names'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e as String),
          ) ??
          const {},
      height: json['height'] as int? ?? 0,
    );

Map<String, dynamic> _$$VitensStateImplToJson(_$VitensStateImpl instance) =>
    <String, dynamic>{
      'names': instance.names,
      'height': instance.height,
    };
