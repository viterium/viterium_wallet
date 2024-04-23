// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenOrderSettingsImpl _$$TokenOrderSettingsImplFromJson(Map json) =>
    _$TokenOrderSettingsImpl(
      sortOption: $enumDecode(_$TokenSortOptionEnumMap, json['sortOption']),
    );

Map<String, dynamic> _$$TokenOrderSettingsImplToJson(
        _$TokenOrderSettingsImpl instance) =>
    <String, dynamic>{
      'sortOption': _$TokenSortOptionEnumMap[instance.sortOption]!,
    };

const _$TokenSortOptionEnumMap = {
  TokenSortOption.custom: 'custom',
  TokenSortOption.nameAscending: 'nameAscending',
  TokenSortOption.nameDescending: 'nameDescending',
  TokenSortOption.valueAscending: 'valueAscending',
  TokenSortOption.valueDescending: 'valueDescending',
};
