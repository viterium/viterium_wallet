// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viteconnect_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignedData _$$_SignedDataFromJson(Map json) => _$_SignedData(
      publicKey: const Uint8ListBase64Converter()
          .fromJson(json['publicKey'] as String),
      signature: const Uint8ListBase64Converter()
          .fromJson(json['signature'] as String),
    );

Map<String, dynamic> _$$_SignedDataToJson(_$_SignedData instance) =>
    <String, dynamic>{
      'publicKey': const Uint8ListBase64Converter().toJson(instance.publicKey),
      'signature': const Uint8ListBase64Converter().toJson(instance.signature),
    };

_$_VCError _$$_VCErrorFromJson(Map json) => _$_VCError(
      code: json['code'] as int,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_VCErrorToJson(_$_VCError instance) {
  final val = <String, dynamic>{
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
