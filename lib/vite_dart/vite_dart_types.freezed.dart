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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VmLogEvent<T> {
  VmLogMessage get message => throw _privateConstructorUsedError;
  Object? get event => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLogMessage message, T event) decoded,
    required TResult Function(VmLogMessage message, EventEntry? event) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLogMessage message, T event)? decoded,
    TResult? Function(VmLogMessage message, EventEntry? event)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLogMessage message, T event)? decoded,
    TResult Function(VmLogMessage message, EventEntry? event)? unknown,
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
  $Res call({VmLogMessage message});

  $VmLogMessageCopyWith<$Res> get message;
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
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as VmLogMessage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VmLogMessageCopyWith<$Res> get message {
    return $VmLogMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VmLogEventDecodedImplCopyWith<T, $Res>
    implements $VmLogEventCopyWith<T, $Res> {
  factory _$$VmLogEventDecodedImplCopyWith(_$VmLogEventDecodedImpl<T> value,
          $Res Function(_$VmLogEventDecodedImpl<T>) then) =
      __$$VmLogEventDecodedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({VmLogMessage message, T event});

  @override
  $VmLogMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$VmLogEventDecodedImplCopyWithImpl<T, $Res>
    extends _$VmLogEventCopyWithImpl<T, $Res, _$VmLogEventDecodedImpl<T>>
    implements _$$VmLogEventDecodedImplCopyWith<T, $Res> {
  __$$VmLogEventDecodedImplCopyWithImpl(_$VmLogEventDecodedImpl<T> _value,
      $Res Function(_$VmLogEventDecodedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? event = freezed,
  }) {
    return _then(_$VmLogEventDecodedImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as VmLogMessage,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$VmLogEventDecodedImpl<T> extends _VmLogEventDecoded<T> {
  const _$VmLogEventDecodedImpl({required this.message, required this.event})
      : super._();

  @override
  final VmLogMessage message;
  @override
  final T event;

  @override
  String toString() {
    return 'VmLogEvent<$T>.decoded(message: $message, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VmLogEventDecodedImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VmLogEventDecodedImplCopyWith<T, _$VmLogEventDecodedImpl<T>>
      get copyWith =>
          __$$VmLogEventDecodedImplCopyWithImpl<T, _$VmLogEventDecodedImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLogMessage message, T event) decoded,
    required TResult Function(VmLogMessage message, EventEntry? event) unknown,
  }) {
    return decoded(message, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLogMessage message, T event)? decoded,
    TResult? Function(VmLogMessage message, EventEntry? event)? unknown,
  }) {
    return decoded?.call(message, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLogMessage message, T event)? decoded,
    TResult Function(VmLogMessage message, EventEntry? event)? unknown,
    required TResult orElse(),
  }) {
    if (decoded != null) {
      return decoded(message, event);
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

abstract class _VmLogEventDecoded<T> extends VmLogEvent<T> {
  const factory _VmLogEventDecoded(
      {required final VmLogMessage message,
      required final T event}) = _$VmLogEventDecodedImpl<T>;
  const _VmLogEventDecoded._() : super._();

  @override
  VmLogMessage get message;
  @override
  T get event;
  @override
  @JsonKey(ignore: true)
  _$$VmLogEventDecodedImplCopyWith<T, _$VmLogEventDecodedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VmLogEventUnknownImplCopyWith<T, $Res>
    implements $VmLogEventCopyWith<T, $Res> {
  factory _$$VmLogEventUnknownImplCopyWith(_$VmLogEventUnknownImpl<T> value,
          $Res Function(_$VmLogEventUnknownImpl<T>) then) =
      __$$VmLogEventUnknownImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({VmLogMessage message, EventEntry? event});

  @override
  $VmLogMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$VmLogEventUnknownImplCopyWithImpl<T, $Res>
    extends _$VmLogEventCopyWithImpl<T, $Res, _$VmLogEventUnknownImpl<T>>
    implements _$$VmLogEventUnknownImplCopyWith<T, $Res> {
  __$$VmLogEventUnknownImplCopyWithImpl(_$VmLogEventUnknownImpl<T> _value,
      $Res Function(_$VmLogEventUnknownImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? event = freezed,
  }) {
    return _then(_$VmLogEventUnknownImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as VmLogMessage,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventEntry?,
    ));
  }
}

/// @nodoc

class _$VmLogEventUnknownImpl<T> extends _VmLogEventUnknown<T> {
  const _$VmLogEventUnknownImpl({required this.message, this.event})
      : super._();

  @override
  final VmLogMessage message;
  @override
  final EventEntry? event;

  @override
  String toString() {
    return 'VmLogEvent<$T>.unknown(message: $message, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VmLogEventUnknownImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VmLogEventUnknownImplCopyWith<T, _$VmLogEventUnknownImpl<T>>
      get copyWith =>
          __$$VmLogEventUnknownImplCopyWithImpl<T, _$VmLogEventUnknownImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VmLogMessage message, T event) decoded,
    required TResult Function(VmLogMessage message, EventEntry? event) unknown,
  }) {
    return unknown(message, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VmLogMessage message, T event)? decoded,
    TResult? Function(VmLogMessage message, EventEntry? event)? unknown,
  }) {
    return unknown?.call(message, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VmLogMessage message, T event)? decoded,
    TResult Function(VmLogMessage message, EventEntry? event)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, event);
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

abstract class _VmLogEventUnknown<T> extends VmLogEvent<T> {
  const factory _VmLogEventUnknown(
      {required final VmLogMessage message,
      final EventEntry? event}) = _$VmLogEventUnknownImpl<T>;
  const _VmLogEventUnknown._() : super._();

  @override
  VmLogMessage get message;
  @override
  EventEntry? get event;
  @override
  @JsonKey(ignore: true)
  _$$VmLogEventUnknownImplCopyWith<T, _$VmLogEventUnknownImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
