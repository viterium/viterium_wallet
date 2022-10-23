// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenOrderSettings _$$_TokenOrderSettingsFromJson(Map json) =>
    _$_TokenOrderSettings(
      sortOption: $enumDecode(_$TokenSortOptionEnumMap, json['sortOption']),
    );

Map<String, dynamic> _$$_TokenOrderSettingsToJson(
        _$_TokenOrderSettings instance) =>
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
