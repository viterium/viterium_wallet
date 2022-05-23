// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'block_explorers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockExplorer _$BlockExplorerFromJson(Map<String, dynamic> json) {
  return _BlockExplorer.fromJson(json);
}

/// @nodoc
class _$BlockExplorerTearOff {
  const _$BlockExplorerTearOff();

  _BlockExplorer call(
      {required ViteNetwork network,
      required String name,
      required String url,
      required String addressUrl,
      required String tokenIdUrl,
      required String txUrl}) {
    return _BlockExplorer(
      network: network,
      name: name,
      url: url,
      addressUrl: addressUrl,
      tokenIdUrl: tokenIdUrl,
      txUrl: txUrl,
    );
  }

  BlockExplorer fromJson(Map<String, Object?> json) {
    return BlockExplorer.fromJson(json);
  }
}

/// @nodoc
const $BlockExplorer = _$BlockExplorerTearOff();

/// @nodoc
mixin _$BlockExplorer {
  ViteNetwork get network => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get addressUrl => throw _privateConstructorUsedError;
  String get tokenIdUrl => throw _privateConstructorUsedError;
  String get txUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockExplorerCopyWith<BlockExplorer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockExplorerCopyWith<$Res> {
  factory $BlockExplorerCopyWith(
          BlockExplorer value, $Res Function(BlockExplorer) then) =
      _$BlockExplorerCopyWithImpl<$Res>;
  $Res call(
      {ViteNetwork network,
      String name,
      String url,
      String addressUrl,
      String tokenIdUrl,
      String txUrl});
}

/// @nodoc
class _$BlockExplorerCopyWithImpl<$Res>
    implements $BlockExplorerCopyWith<$Res> {
  _$BlockExplorerCopyWithImpl(this._value, this._then);

  final BlockExplorer _value;
  // ignore: unused_field
  final $Res Function(BlockExplorer) _then;

  @override
  $Res call({
    Object? network = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? addressUrl = freezed,
    Object? tokenIdUrl = freezed,
    Object? txUrl = freezed,
  }) {
    return _then(_value.copyWith(
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      addressUrl: addressUrl == freezed
          ? _value.addressUrl
          : addressUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tokenIdUrl: tokenIdUrl == freezed
          ? _value.tokenIdUrl
          : tokenIdUrl // ignore: cast_nullable_to_non_nullable
              as String,
      txUrl: txUrl == freezed
          ? _value.txUrl
          : txUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BlockExplorerCopyWith<$Res>
    implements $BlockExplorerCopyWith<$Res> {
  factory _$BlockExplorerCopyWith(
          _BlockExplorer value, $Res Function(_BlockExplorer) then) =
      __$BlockExplorerCopyWithImpl<$Res>;
  @override
  $Res call(
      {ViteNetwork network,
      String name,
      String url,
      String addressUrl,
      String tokenIdUrl,
      String txUrl});
}

/// @nodoc
class __$BlockExplorerCopyWithImpl<$Res>
    extends _$BlockExplorerCopyWithImpl<$Res>
    implements _$BlockExplorerCopyWith<$Res> {
  __$BlockExplorerCopyWithImpl(
      _BlockExplorer _value, $Res Function(_BlockExplorer) _then)
      : super(_value, (v) => _then(v as _BlockExplorer));

  @override
  _BlockExplorer get _value => super._value as _BlockExplorer;

  @override
  $Res call({
    Object? network = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? addressUrl = freezed,
    Object? tokenIdUrl = freezed,
    Object? txUrl = freezed,
  }) {
    return _then(_BlockExplorer(
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ViteNetwork,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      addressUrl: addressUrl == freezed
          ? _value.addressUrl
          : addressUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tokenIdUrl: tokenIdUrl == freezed
          ? _value.tokenIdUrl
          : tokenIdUrl // ignore: cast_nullable_to_non_nullable
              as String,
      txUrl: txUrl == freezed
          ? _value.txUrl
          : txUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockExplorer extends _BlockExplorer {
  const _$_BlockExplorer(
      {required this.network,
      required this.name,
      required this.url,
      required this.addressUrl,
      required this.tokenIdUrl,
      required this.txUrl})
      : super._();

  factory _$_BlockExplorer.fromJson(Map<String, dynamic> json) =>
      _$$_BlockExplorerFromJson(json);

  @override
  final ViteNetwork network;
  @override
  final String name;
  @override
  final String url;
  @override
  final String addressUrl;
  @override
  final String tokenIdUrl;
  @override
  final String txUrl;

  @override
  String toString() {
    return 'BlockExplorer(network: $network, name: $name, url: $url, addressUrl: $addressUrl, tokenIdUrl: $tokenIdUrl, txUrl: $txUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockExplorer &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.addressUrl, addressUrl) &&
            const DeepCollectionEquality()
                .equals(other.tokenIdUrl, tokenIdUrl) &&
            const DeepCollectionEquality().equals(other.txUrl, txUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(network),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(addressUrl),
      const DeepCollectionEquality().hash(tokenIdUrl),
      const DeepCollectionEquality().hash(txUrl));

  @JsonKey(ignore: true)
  @override
  _$BlockExplorerCopyWith<_BlockExplorer> get copyWith =>
      __$BlockExplorerCopyWithImpl<_BlockExplorer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockExplorerToJson(this);
  }
}

abstract class _BlockExplorer extends BlockExplorer {
  const factory _BlockExplorer(
      {required ViteNetwork network,
      required String name,
      required String url,
      required String addressUrl,
      required String tokenIdUrl,
      required String txUrl}) = _$_BlockExplorer;
  const _BlockExplorer._() : super._();

  factory _BlockExplorer.fromJson(Map<String, dynamic> json) =
      _$_BlockExplorer.fromJson;

  @override
  ViteNetwork get network;
  @override
  String get name;
  @override
  String get url;
  @override
  String get addressUrl;
  @override
  String get tokenIdUrl;
  @override
  String get txUrl;
  @override
  @JsonKey(ignore: true)
  _$BlockExplorerCopyWith<_BlockExplorer> get copyWith =>
      throw _privateConstructorUsedError;
}
