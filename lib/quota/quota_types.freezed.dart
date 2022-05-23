// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quota_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StakeInfo _$StakeInfoFromJson(Map<String, dynamic> json) {
  return _StakeInfo.fromJson(json);
}

/// @nodoc
class _$StakeInfoTearOff {
  const _$StakeInfoTearOff();

  _StakeInfo call(
      {required String stakeAddress,
      required String stakeAmount,
      required String expirationHeight,
      required String beneficiary,
      required int expirationTime,
      required bool isDelegated,
      String? delegateAddress,
      int bid = 0,
      String? hash}) {
    return _StakeInfo(
      stakeAddress: stakeAddress,
      stakeAmount: stakeAmount,
      expirationHeight: expirationHeight,
      beneficiary: beneficiary,
      expirationTime: expirationTime,
      isDelegated: isDelegated,
      delegateAddress: delegateAddress,
      bid: bid,
      hash: hash,
    );
  }

  StakeInfo fromJson(Map<String, Object?> json) {
    return StakeInfo.fromJson(json);
  }
}

/// @nodoc
const $StakeInfo = _$StakeInfoTearOff();

/// @nodoc
mixin _$StakeInfo {
  String get stakeAddress => throw _privateConstructorUsedError;
  String get stakeAmount => throw _privateConstructorUsedError;
  String get expirationHeight => throw _privateConstructorUsedError;
  String get beneficiary => throw _privateConstructorUsedError;
  int get expirationTime => throw _privateConstructorUsedError;
  bool get isDelegated => throw _privateConstructorUsedError;
  String? get delegateAddress => throw _privateConstructorUsedError;
  int get bid => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakeInfoCopyWith<StakeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeInfoCopyWith<$Res> {
  factory $StakeInfoCopyWith(StakeInfo value, $Res Function(StakeInfo) then) =
      _$StakeInfoCopyWithImpl<$Res>;
  $Res call(
      {String stakeAddress,
      String stakeAmount,
      String expirationHeight,
      String beneficiary,
      int expirationTime,
      bool isDelegated,
      String? delegateAddress,
      int bid,
      String? hash});
}

/// @nodoc
class _$StakeInfoCopyWithImpl<$Res> implements $StakeInfoCopyWith<$Res> {
  _$StakeInfoCopyWithImpl(this._value, this._then);

  final StakeInfo _value;
  // ignore: unused_field
  final $Res Function(StakeInfo) _then;

  @override
  $Res call({
    Object? stakeAddress = freezed,
    Object? stakeAmount = freezed,
    Object? expirationHeight = freezed,
    Object? beneficiary = freezed,
    Object? expirationTime = freezed,
    Object? isDelegated = freezed,
    Object? delegateAddress = freezed,
    Object? bid = freezed,
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      stakeAddress: stakeAddress == freezed
          ? _value.stakeAddress
          : stakeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      stakeAmount: stakeAmount == freezed
          ? _value.stakeAmount
          : stakeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      expirationHeight: expirationHeight == freezed
          ? _value.expirationHeight
          : expirationHeight // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiary: beneficiary == freezed
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as String,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      isDelegated: isDelegated == freezed
          ? _value.isDelegated
          : isDelegated // ignore: cast_nullable_to_non_nullable
              as bool,
      delegateAddress: delegateAddress == freezed
          ? _value.delegateAddress
          : delegateAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bid: bid == freezed
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as int,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StakeInfoCopyWith<$Res> implements $StakeInfoCopyWith<$Res> {
  factory _$StakeInfoCopyWith(
          _StakeInfo value, $Res Function(_StakeInfo) then) =
      __$StakeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stakeAddress,
      String stakeAmount,
      String expirationHeight,
      String beneficiary,
      int expirationTime,
      bool isDelegated,
      String? delegateAddress,
      int bid,
      String? hash});
}

/// @nodoc
class __$StakeInfoCopyWithImpl<$Res> extends _$StakeInfoCopyWithImpl<$Res>
    implements _$StakeInfoCopyWith<$Res> {
  __$StakeInfoCopyWithImpl(_StakeInfo _value, $Res Function(_StakeInfo) _then)
      : super(_value, (v) => _then(v as _StakeInfo));

  @override
  _StakeInfo get _value => super._value as _StakeInfo;

  @override
  $Res call({
    Object? stakeAddress = freezed,
    Object? stakeAmount = freezed,
    Object? expirationHeight = freezed,
    Object? beneficiary = freezed,
    Object? expirationTime = freezed,
    Object? isDelegated = freezed,
    Object? delegateAddress = freezed,
    Object? bid = freezed,
    Object? hash = freezed,
  }) {
    return _then(_StakeInfo(
      stakeAddress: stakeAddress == freezed
          ? _value.stakeAddress
          : stakeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      stakeAmount: stakeAmount == freezed
          ? _value.stakeAmount
          : stakeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      expirationHeight: expirationHeight == freezed
          ? _value.expirationHeight
          : expirationHeight // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiary: beneficiary == freezed
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as String,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      isDelegated: isDelegated == freezed
          ? _value.isDelegated
          : isDelegated // ignore: cast_nullable_to_non_nullable
              as bool,
      delegateAddress: delegateAddress == freezed
          ? _value.delegateAddress
          : delegateAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      bid: bid == freezed
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as int,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakeInfo implements _StakeInfo {
  const _$_StakeInfo(
      {required this.stakeAddress,
      required this.stakeAmount,
      required this.expirationHeight,
      required this.beneficiary,
      required this.expirationTime,
      required this.isDelegated,
      this.delegateAddress,
      this.bid = 0,
      this.hash});

  factory _$_StakeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StakeInfoFromJson(json);

  @override
  final String stakeAddress;
  @override
  final String stakeAmount;
  @override
  final String expirationHeight;
  @override
  final String beneficiary;
  @override
  final int expirationTime;
  @override
  final bool isDelegated;
  @override
  final String? delegateAddress;
  @JsonKey()
  @override
  final int bid;
  @override
  final String? hash;

  @override
  String toString() {
    return 'StakeInfo(stakeAddress: $stakeAddress, stakeAmount: $stakeAmount, expirationHeight: $expirationHeight, beneficiary: $beneficiary, expirationTime: $expirationTime, isDelegated: $isDelegated, delegateAddress: $delegateAddress, bid: $bid, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StakeInfo &&
            const DeepCollectionEquality()
                .equals(other.stakeAddress, stakeAddress) &&
            const DeepCollectionEquality()
                .equals(other.stakeAmount, stakeAmount) &&
            const DeepCollectionEquality()
                .equals(other.expirationHeight, expirationHeight) &&
            const DeepCollectionEquality()
                .equals(other.beneficiary, beneficiary) &&
            const DeepCollectionEquality()
                .equals(other.expirationTime, expirationTime) &&
            const DeepCollectionEquality()
                .equals(other.isDelegated, isDelegated) &&
            const DeepCollectionEquality()
                .equals(other.delegateAddress, delegateAddress) &&
            const DeepCollectionEquality().equals(other.bid, bid) &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stakeAddress),
      const DeepCollectionEquality().hash(stakeAmount),
      const DeepCollectionEquality().hash(expirationHeight),
      const DeepCollectionEquality().hash(beneficiary),
      const DeepCollectionEquality().hash(expirationTime),
      const DeepCollectionEquality().hash(isDelegated),
      const DeepCollectionEquality().hash(delegateAddress),
      const DeepCollectionEquality().hash(bid),
      const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$StakeInfoCopyWith<_StakeInfo> get copyWith =>
      __$StakeInfoCopyWithImpl<_StakeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakeInfoToJson(this);
  }
}

abstract class _StakeInfo implements StakeInfo {
  const factory _StakeInfo(
      {required String stakeAddress,
      required String stakeAmount,
      required String expirationHeight,
      required String beneficiary,
      required int expirationTime,
      required bool isDelegated,
      String? delegateAddress,
      int bid,
      String? hash}) = _$_StakeInfo;

  factory _StakeInfo.fromJson(Map<String, dynamic> json) =
      _$_StakeInfo.fromJson;

  @override
  String get stakeAddress;
  @override
  String get stakeAmount;
  @override
  String get expirationHeight;
  @override
  String get beneficiary;
  @override
  int get expirationTime;
  @override
  bool get isDelegated;
  @override
  String? get delegateAddress;
  @override
  int get bid;
  @override
  String? get hash;
  @override
  @JsonKey(ignore: true)
  _$StakeInfoCopyWith<_StakeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

StakeListInfo _$StakeListInfoFromJson(Map<String, dynamic> json) {
  return _StakeListInfo.fromJson(json);
}

/// @nodoc
class _$StakeListInfoTearOff {
  const _$StakeListInfoTearOff();

  _StakeListInfo call(
      {required BigInt totalStakeAmount,
      required int totalStakeCount,
      List<RpcStakeInfo> stakeList = const []}) {
    return _StakeListInfo(
      totalStakeAmount: totalStakeAmount,
      totalStakeCount: totalStakeCount,
      stakeList: stakeList,
    );
  }

  StakeListInfo fromJson(Map<String, Object?> json) {
    return StakeListInfo.fromJson(json);
  }
}

/// @nodoc
const $StakeListInfo = _$StakeListInfoTearOff();

/// @nodoc
mixin _$StakeListInfo {
  BigInt get totalStakeAmount => throw _privateConstructorUsedError;
  int get totalStakeCount => throw _privateConstructorUsedError;
  List<RpcStakeInfo> get stakeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakeListInfoCopyWith<StakeListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeListInfoCopyWith<$Res> {
  factory $StakeListInfoCopyWith(
          StakeListInfo value, $Res Function(StakeListInfo) then) =
      _$StakeListInfoCopyWithImpl<$Res>;
  $Res call(
      {BigInt totalStakeAmount,
      int totalStakeCount,
      List<RpcStakeInfo> stakeList});
}

/// @nodoc
class _$StakeListInfoCopyWithImpl<$Res>
    implements $StakeListInfoCopyWith<$Res> {
  _$StakeListInfoCopyWithImpl(this._value, this._then);

  final StakeListInfo _value;
  // ignore: unused_field
  final $Res Function(StakeListInfo) _then;

  @override
  $Res call({
    Object? totalStakeAmount = freezed,
    Object? totalStakeCount = freezed,
    Object? stakeList = freezed,
  }) {
    return _then(_value.copyWith(
      totalStakeAmount: totalStakeAmount == freezed
          ? _value.totalStakeAmount
          : totalStakeAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalStakeCount: totalStakeCount == freezed
          ? _value.totalStakeCount
          : totalStakeCount // ignore: cast_nullable_to_non_nullable
              as int,
      stakeList: stakeList == freezed
          ? _value.stakeList
          : stakeList // ignore: cast_nullable_to_non_nullable
              as List<RpcStakeInfo>,
    ));
  }
}

/// @nodoc
abstract class _$StakeListInfoCopyWith<$Res>
    implements $StakeListInfoCopyWith<$Res> {
  factory _$StakeListInfoCopyWith(
          _StakeListInfo value, $Res Function(_StakeListInfo) then) =
      __$StakeListInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {BigInt totalStakeAmount,
      int totalStakeCount,
      List<RpcStakeInfo> stakeList});
}

/// @nodoc
class __$StakeListInfoCopyWithImpl<$Res>
    extends _$StakeListInfoCopyWithImpl<$Res>
    implements _$StakeListInfoCopyWith<$Res> {
  __$StakeListInfoCopyWithImpl(
      _StakeListInfo _value, $Res Function(_StakeListInfo) _then)
      : super(_value, (v) => _then(v as _StakeListInfo));

  @override
  _StakeListInfo get _value => super._value as _StakeListInfo;

  @override
  $Res call({
    Object? totalStakeAmount = freezed,
    Object? totalStakeCount = freezed,
    Object? stakeList = freezed,
  }) {
    return _then(_StakeListInfo(
      totalStakeAmount: totalStakeAmount == freezed
          ? _value.totalStakeAmount
          : totalStakeAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      totalStakeCount: totalStakeCount == freezed
          ? _value.totalStakeCount
          : totalStakeCount // ignore: cast_nullable_to_non_nullable
              as int,
      stakeList: stakeList == freezed
          ? _value.stakeList
          : stakeList // ignore: cast_nullable_to_non_nullable
              as List<RpcStakeInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakeListInfo implements _StakeListInfo {
  const _$_StakeListInfo(
      {required this.totalStakeAmount,
      required this.totalStakeCount,
      this.stakeList = const []});

  factory _$_StakeListInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StakeListInfoFromJson(json);

  @override
  final BigInt totalStakeAmount;
  @override
  final int totalStakeCount;
  @JsonKey()
  @override
  final List<RpcStakeInfo> stakeList;

  @override
  String toString() {
    return 'StakeListInfo(totalStakeAmount: $totalStakeAmount, totalStakeCount: $totalStakeCount, stakeList: $stakeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StakeListInfo &&
            const DeepCollectionEquality()
                .equals(other.totalStakeAmount, totalStakeAmount) &&
            const DeepCollectionEquality()
                .equals(other.totalStakeCount, totalStakeCount) &&
            const DeepCollectionEquality().equals(other.stakeList, stakeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalStakeAmount),
      const DeepCollectionEquality().hash(totalStakeCount),
      const DeepCollectionEquality().hash(stakeList));

  @JsonKey(ignore: true)
  @override
  _$StakeListInfoCopyWith<_StakeListInfo> get copyWith =>
      __$StakeListInfoCopyWithImpl<_StakeListInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakeListInfoToJson(this);
  }
}

abstract class _StakeListInfo implements StakeListInfo {
  const factory _StakeListInfo(
      {required BigInt totalStakeAmount,
      required int totalStakeCount,
      List<RpcStakeInfo> stakeList}) = _$_StakeListInfo;

  factory _StakeListInfo.fromJson(Map<String, dynamic> json) =
      _$_StakeListInfo.fromJson;

  @override
  BigInt get totalStakeAmount;
  @override
  int get totalStakeCount;
  @override
  List<RpcStakeInfo> get stakeList;
  @override
  @JsonKey(ignore: true)
  _$StakeListInfoCopyWith<_StakeListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
