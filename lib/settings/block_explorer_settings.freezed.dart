// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'block_explorer_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockExplorerSettings _$BlockExplorerSettingsFromJson(
    Map<String, dynamic> json) {
  return _BlockExplorerSettings.fromJson(json);
}

/// @nodoc
class _$BlockExplorerSettingsTearOff {
  const _$BlockExplorerSettingsTearOff();

  _BlockExplorerSettings call(
      {Map<ViteNetwork, BlockExplorer> selection = const {
        ViteNetwork.mainnet: kVitcScanMainnet,
        ViteNetwork.testnet: kVitcScanTestnet,
        ViteNetwork.devnet: kVitcScanDebug
      }}) {
    return _BlockExplorerSettings(
      selection: selection,
    );
  }

  BlockExplorerSettings fromJson(Map<String, Object?> json) {
    return BlockExplorerSettings.fromJson(json);
  }
}

/// @nodoc
const $BlockExplorerSettings = _$BlockExplorerSettingsTearOff();

/// @nodoc
mixin _$BlockExplorerSettings {
  Map<ViteNetwork, BlockExplorer> get selection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockExplorerSettingsCopyWith<BlockExplorerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockExplorerSettingsCopyWith<$Res> {
  factory $BlockExplorerSettingsCopyWith(BlockExplorerSettings value,
          $Res Function(BlockExplorerSettings) then) =
      _$BlockExplorerSettingsCopyWithImpl<$Res>;
  $Res call({Map<ViteNetwork, BlockExplorer> selection});
}

/// @nodoc
class _$BlockExplorerSettingsCopyWithImpl<$Res>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  _$BlockExplorerSettingsCopyWithImpl(this._value, this._then);

  final BlockExplorerSettings _value;
  // ignore: unused_field
  final $Res Function(BlockExplorerSettings) _then;

  @override
  $Res call({
    Object? selection = freezed,
  }) {
    return _then(_value.copyWith(
      selection: selection == freezed
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Map<ViteNetwork, BlockExplorer>,
    ));
  }
}

/// @nodoc
abstract class _$BlockExplorerSettingsCopyWith<$Res>
    implements $BlockExplorerSettingsCopyWith<$Res> {
  factory _$BlockExplorerSettingsCopyWith(_BlockExplorerSettings value,
          $Res Function(_BlockExplorerSettings) then) =
      __$BlockExplorerSettingsCopyWithImpl<$Res>;
  @override
  $Res call({Map<ViteNetwork, BlockExplorer> selection});
}

/// @nodoc
class __$BlockExplorerSettingsCopyWithImpl<$Res>
    extends _$BlockExplorerSettingsCopyWithImpl<$Res>
    implements _$BlockExplorerSettingsCopyWith<$Res> {
  __$BlockExplorerSettingsCopyWithImpl(_BlockExplorerSettings _value,
      $Res Function(_BlockExplorerSettings) _then)
      : super(_value, (v) => _then(v as _BlockExplorerSettings));

  @override
  _BlockExplorerSettings get _value => super._value as _BlockExplorerSettings;

  @override
  $Res call({
    Object? selection = freezed,
  }) {
    return _then(_BlockExplorerSettings(
      selection: selection == freezed
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as Map<ViteNetwork, BlockExplorer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockExplorerSettings extends _BlockExplorerSettings {
  const _$_BlockExplorerSettings(
      {this.selection = const {
        ViteNetwork.mainnet: kVitcScanMainnet,
        ViteNetwork.testnet: kVitcScanTestnet,
        ViteNetwork.devnet: kVitcScanDebug
      }})
      : super._();

  factory _$_BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$$_BlockExplorerSettingsFromJson(json);

  @JsonKey()
  @override
  final Map<ViteNetwork, BlockExplorer> selection;

  @override
  String toString() {
    return 'BlockExplorerSettings(selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockExplorerSettings &&
            const DeepCollectionEquality().equals(other.selection, selection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selection));

  @JsonKey(ignore: true)
  @override
  _$BlockExplorerSettingsCopyWith<_BlockExplorerSettings> get copyWith =>
      __$BlockExplorerSettingsCopyWithImpl<_BlockExplorerSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockExplorerSettingsToJson(this);
  }
}

abstract class _BlockExplorerSettings extends BlockExplorerSettings {
  const factory _BlockExplorerSettings(
      {Map<ViteNetwork, BlockExplorer> selection}) = _$_BlockExplorerSettings;
  const _BlockExplorerSettings._() : super._();

  factory _BlockExplorerSettings.fromJson(Map<String, dynamic> json) =
      _$_BlockExplorerSettings.fromJson;

  @override
  Map<ViteNetwork, BlockExplorer> get selection;
  @override
  @JsonKey(ignore: true)
  _$BlockExplorerSettingsCopyWith<_BlockExplorerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
