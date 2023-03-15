// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vite_dart_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VmLogEvent<T> {
  VmLog get vmLog => throw _privateConstructorUsedError;
  Object? get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLog vmLog, T event) decoded,
    required TResult Function(VmLog vmLog, EventEntry? event) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLog vmLog, T event)? decoded,
    TResult? Function(VmLog vmLog, EventEntry? event)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLog vmLog, T event)? decoded,
    TResult Function(VmLog vmLog, EventEntry? event)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VmLogEventDecoded<T> value) decoded,
    required TResult Function(_VmLogEventUnknown<T> value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VmLogEventDecoded<T> value)? decoded,
    TResult? Function(_VmLogEventUnknown<T> value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VmLogEventDecoded<T> value)? decoded,
    TResult Function(_VmLogEventUnknown<T> value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VmLogEventCopyWith<T, VmLogEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VmLogEventCopyWith<T, $Res> {
  factory $VmLogEventCopyWith(
          VmLogEvent<T> value, $Res Function(VmLogEvent<T>) then) =
      _$VmLogEventCopyWithImpl<T, $Res, VmLogEvent<T>>;
  @useResult
  $Res call({VmLog vmLog});

  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class _$VmLogEventCopyWithImpl<T, $Res, $Val extends VmLogEvent<T>>
    implements $VmLogEventCopyWith<T, $Res> {
  _$VmLogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vmLog = null,
  }) {
    return _then(_value.copyWith(
      vmLog: null == vmLog
          ? _value.vmLog
          : vmLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VmLogCopyWith<$Res> get vmLog {
    return $VmLogCopyWith<$Res>(_value.vmLog, (value) {
      return _then(_value.copyWith(vmLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VmLogEventDecodedCopyWith<T, $Res>
    implements $VmLogEventCopyWith<T, $Res> {
  factory _$$_VmLogEventDecodedCopyWith(_$_VmLogEventDecoded<T> value,
          $Res Function(_$_VmLogEventDecoded<T>) then) =
      __$$_VmLogEventDecodedCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({VmLog vmLog, T event});

  @override
  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class __$$_VmLogEventDecodedCopyWithImpl<T, $Res>
    extends _$VmLogEventCopyWithImpl<T, $Res, _$_VmLogEventDecoded<T>>
    implements _$$_VmLogEventDecodedCopyWith<T, $Res> {
  __$$_VmLogEventDecodedCopyWithImpl(_$_VmLogEventDecoded<T> _value,
      $Res Function(_$_VmLogEventDecoded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vmLog = null,
    Object? event = freezed,
  }) {
    return _then(_$_VmLogEventDecoded<T>(
      vmLog: null == vmLog
          ? _value.vmLog
          : vmLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_VmLogEventDecoded<T> implements _VmLogEventDecoded<T> {
  const _$_VmLogEventDecoded({required this.vmLog, required this.event});

  @override
  final VmLog vmLog;
  @override
  final T event;

  @override
  String toString() {
    return 'VmLogEvent<$T>.decoded(vmLog: $vmLog, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VmLogEventDecoded<T> &&
            (identical(other.vmLog, vmLog) || other.vmLog == vmLog) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, vmLog, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VmLogEventDecodedCopyWith<T, _$_VmLogEventDecoded<T>> get copyWith =>
      __$$_VmLogEventDecodedCopyWithImpl<T, _$_VmLogEventDecoded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLog vmLog, T event) decoded,
    required TResult Function(VmLog vmLog, EventEntry? event) unknown,
  }) {
    return decoded(vmLog, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLog vmLog, T event)? decoded,
    TResult? Function(VmLog vmLog, EventEntry? event)? unknown,
  }) {
    return decoded?.call(vmLog, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLog vmLog, T event)? decoded,
    TResult Function(VmLog vmLog, EventEntry? event)? unknown,
    required TResult orElse(),
  }) {
    if (decoded != null) {
      return decoded(vmLog, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VmLogEventDecoded<T> value) decoded,
    required TResult Function(_VmLogEventUnknown<T> value) unknown,
  }) {
    return decoded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VmLogEventDecoded<T> value)? decoded,
    TResult? Function(_VmLogEventUnknown<T> value)? unknown,
  }) {
    return decoded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VmLogEventDecoded<T> value)? decoded,
    TResult Function(_VmLogEventUnknown<T> value)? unknown,
    required TResult orElse(),
  }) {
    if (decoded != null) {
      return decoded(this);
    }
    return orElse();
  }
}

abstract class _VmLogEventDecoded<T> implements VmLogEvent<T> {
  const factory _VmLogEventDecoded(
      {required final VmLog vmLog,
      required final T event}) = _$_VmLogEventDecoded<T>;

  @override
  VmLog get vmLog;
  @override
  T get event;
  @override
  @JsonKey(ignore: true)
  _$$_VmLogEventDecodedCopyWith<T, _$_VmLogEventDecoded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VmLogEventUnknownCopyWith<T, $Res>
    implements $VmLogEventCopyWith<T, $Res> {
  factory _$$_VmLogEventUnknownCopyWith(_$_VmLogEventUnknown<T> value,
          $Res Function(_$_VmLogEventUnknown<T>) then) =
      __$$_VmLogEventUnknownCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({VmLog vmLog, EventEntry? event});

  @override
  $VmLogCopyWith<$Res> get vmLog;
}

/// @nodoc
class __$$_VmLogEventUnknownCopyWithImpl<T, $Res>
    extends _$VmLogEventCopyWithImpl<T, $Res, _$_VmLogEventUnknown<T>>
    implements _$$_VmLogEventUnknownCopyWith<T, $Res> {
  __$$_VmLogEventUnknownCopyWithImpl(_$_VmLogEventUnknown<T> _value,
      $Res Function(_$_VmLogEventUnknown<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vmLog = null,
    Object? event = freezed,
  }) {
    return _then(_$_VmLogEventUnknown<T>(
      vmLog: null == vmLog
          ? _value.vmLog
          : vmLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntry?,
    ));
  }
}

/// @nodoc

class _$_VmLogEventUnknown<T> implements _VmLogEventUnknown<T> {
  const _$_VmLogEventUnknown({required this.vmLog, this.event});

  @override
  final VmLog vmLog;
  @override
  final EventEntry? event;

  @override
  String toString() {
    return 'VmLogEvent<$T>.unknown(vmLog: $vmLog, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VmLogEventUnknown<T> &&
            (identical(other.vmLog, vmLog) || other.vmLog == vmLog) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vmLog, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VmLogEventUnknownCopyWith<T, _$_VmLogEventUnknown<T>> get copyWith =>
      __$$_VmLogEventUnknownCopyWithImpl<T, _$_VmLogEventUnknown<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLog vmLog, T event) decoded,
    required TResult Function(VmLog vmLog, EventEntry? event) unknown,
  }) {
    return unknown(vmLog, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLog vmLog, T event)? decoded,
    TResult? Function(VmLog vmLog, EventEntry? event)? unknown,
  }) {
    return unknown?.call(vmLog, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLog vmLog, T event)? decoded,
    TResult Function(VmLog vmLog, EventEntry? event)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(vmLog, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VmLogEventDecoded<T> value) decoded,
    required TResult Function(_VmLogEventUnknown<T> value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VmLogEventDecoded<T> value)? decoded,
    TResult? Function(_VmLogEventUnknown<T> value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VmLogEventDecoded<T> value)? decoded,
    TResult Function(_VmLogEventUnknown<T> value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _VmLogEventUnknown<T> implements VmLogEvent<T> {
  const factory _VmLogEventUnknown(
      {required final VmLog vmLog,
      final EventEntry? event}) = _$_VmLogEventUnknown<T>;

  @override
  VmLog get vmLog;
  @override
  EventEntry? get event;
  @override
  @JsonKey(ignore: true)
  _$$_VmLogEventUnknownCopyWith<T, _$_VmLogEventUnknown<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
