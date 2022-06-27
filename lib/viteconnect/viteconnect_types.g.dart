// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viteconnect_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VCSignResponse _$$_VCSignResponseFromJson(Map json) => _$_VCSignResponse(
      publicKey: const Uint8ListBase64Converter()
          .fromJson(json['publicKey'] as String),
      signature: const Uint8ListBase64Converter()
          .fromJson(json['signature'] as String),
    );

Map<String, dynamic> _$$_VCSignResponseToJson(_$_VCSignResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'publicKey', const Uint8ListBase64Converter().toJson(instance.publicKey));
  writeNotNull(
      'signature', const Uint8ListBase64Converter().toJson(instance.signature));
  return val;
}
