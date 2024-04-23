// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viteconnect_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedDataImpl _$$SignedDataImplFromJson(Map json) => _$SignedDataImpl(
      publicKey: const Uint8ListBase64Converter()
          .fromJson(json['publicKey'] as String),
      signature: const Uint8ListBase64Converter()
          .fromJson(json['signature'] as String),
    );

Map<String, dynamic> _$$SignedDataImplToJson(_$SignedDataImpl instance) =>
    <String, dynamic>{
      'publicKey': const Uint8ListBase64Converter().toJson(instance.publicKey),
      'signature': const Uint8ListBase64Converter().toJson(instance.signature),
    };

_$VCErrorImpl _$$VCErrorImplFromJson(Map json) => _$VCErrorImpl(
      code: json['code'] as int,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$VCErrorImplToJson(_$VCErrorImpl instance) {
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
