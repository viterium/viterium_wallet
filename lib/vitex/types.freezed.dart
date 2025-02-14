// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderStatusPendingImplCopyWith<$Res> {
  factory _$$OrderStatusPendingImplCopyWith(_$OrderStatusPendingImpl value,
          $Res Function(_$OrderStatusPendingImpl) then) =
      __$$OrderStatusPendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStatusPendingImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusPendingImpl>
    implements _$$OrderStatusPendingImplCopyWith<$Res> {
  __$$OrderStatusPendingImplCopyWithImpl(_$OrderStatusPendingImpl _value,
      $Res Function(_$OrderStatusPendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStatusPendingImpl implements _OrderStatusPending {
  const _$OrderStatusPendingImpl();

  @override
  String toString() {
    return 'OrderStatus.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderStatusPendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _OrderStatusPending implements OrderStatus {
  const factory _OrderStatusPending() = _$OrderStatusPendingImpl;
}

/// @nodoc
abstract class _$$OrderStatusPartiallyExecutedImplCopyWith<$Res> {
  factory _$$OrderStatusPartiallyExecutedImplCopyWith(
          _$OrderStatusPartiallyExecutedImpl value,
          $Res Function(_$OrderStatusPartiallyExecutedImpl) then) =
      __$$OrderStatusPartiallyExecutedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStatusPartiallyExecutedImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusPartiallyExecutedImpl>
    implements _$$OrderStatusPartiallyExecutedImplCopyWith<$Res> {
  __$$OrderStatusPartiallyExecutedImplCopyWithImpl(
      _$OrderStatusPartiallyExecutedImpl _value,
      $Res Function(_$OrderStatusPartiallyExecutedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStatusPartiallyExecutedImpl
    implements _OrderStatusPartiallyExecuted {
  const _$OrderStatusPartiallyExecutedImpl();

  @override
  String toString() {
    return 'OrderStatus.partiallyExecuted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusPartiallyExecutedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) {
    return partiallyExecuted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) {
    return partiallyExecuted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) {
    if (partiallyExecuted != null) {
      return partiallyExecuted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) {
    return partiallyExecuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) {
    return partiallyExecuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) {
    if (partiallyExecuted != null) {
      return partiallyExecuted(this);
    }
    return orElse();
  }
}

abstract class _OrderStatusPartiallyExecuted implements OrderStatus {
  const factory _OrderStatusPartiallyExecuted() =
      _$OrderStatusPartiallyExecutedImpl;
}

/// @nodoc
abstract class _$$OrderStatusFullyExecutedImplCopyWith<$Res> {
  factory _$$OrderStatusFullyExecutedImplCopyWith(
          _$OrderStatusFullyExecutedImpl value,
          $Res Function(_$OrderStatusFullyExecutedImpl) then) =
      __$$OrderStatusFullyExecutedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStatusFullyExecutedImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusFullyExecutedImpl>
    implements _$$OrderStatusFullyExecutedImplCopyWith<$Res> {
  __$$OrderStatusFullyExecutedImplCopyWithImpl(
      _$OrderStatusFullyExecutedImpl _value,
      $Res Function(_$OrderStatusFullyExecutedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStatusFullyExecutedImpl implements _OrderStatusFullyExecuted {
  const _$OrderStatusFullyExecutedImpl();

  @override
  String toString() {
    return 'OrderStatus.fullyExecuted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusFullyExecutedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) {
    return fullyExecuted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) {
    return fullyExecuted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) {
    if (fullyExecuted != null) {
      return fullyExecuted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) {
    return fullyExecuted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) {
    return fullyExecuted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) {
    if (fullyExecuted != null) {
      return fullyExecuted(this);
    }
    return orElse();
  }
}

abstract class _OrderStatusFullyExecuted implements OrderStatus {
  const factory _OrderStatusFullyExecuted() = _$OrderStatusFullyExecutedImpl;
}

/// @nodoc
abstract class _$$OrderStatusCancelledImplCopyWith<$Res> {
  factory _$$OrderStatusCancelledImplCopyWith(_$OrderStatusCancelledImpl value,
          $Res Function(_$OrderStatusCancelledImpl) then) =
      __$$OrderStatusCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStatusCancelledImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusCancelledImpl>
    implements _$$OrderStatusCancelledImplCopyWith<$Res> {
  __$$OrderStatusCancelledImplCopyWithImpl(_$OrderStatusCancelledImpl _value,
      $Res Function(_$OrderStatusCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStatusCancelledImpl implements _OrderStatusCancelled {
  const _$OrderStatusCancelledImpl();

  @override
  String toString() {
    return 'OrderStatus.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _OrderStatusCancelled implements OrderStatus {
  const factory _OrderStatusCancelled() = _$OrderStatusCancelledImpl;
}

/// @nodoc
abstract class _$$OrderStatusOrderFailureImplCopyWith<$Res> {
  factory _$$OrderStatusOrderFailureImplCopyWith(
          _$OrderStatusOrderFailureImpl value,
          $Res Function(_$OrderStatusOrderFailureImpl) then) =
      __$$OrderStatusOrderFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderStatusOrderFailureImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusOrderFailureImpl>
    implements _$$OrderStatusOrderFailureImplCopyWith<$Res> {
  __$$OrderStatusOrderFailureImplCopyWithImpl(
      _$OrderStatusOrderFailureImpl _value,
      $Res Function(_$OrderStatusOrderFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderStatusOrderFailureImpl implements _OrderStatusOrderFailure {
  const _$OrderStatusOrderFailureImpl();

  @override
  String toString() {
    return 'OrderStatus.orderFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusOrderFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() partiallyExecuted,
    required TResult Function() fullyExecuted,
    required TResult Function() cancelled,
    required TResult Function() orderFailure,
  }) {
    return orderFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? partiallyExecuted,
    TResult? Function()? fullyExecuted,
    TResult? Function()? cancelled,
    TResult? Function()? orderFailure,
  }) {
    return orderFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? partiallyExecuted,
    TResult Function()? fullyExecuted,
    TResult Function()? cancelled,
    TResult Function()? orderFailure,
    required TResult orElse(),
  }) {
    if (orderFailure != null) {
      return orderFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderStatusPending value) pending,
    required TResult Function(_OrderStatusPartiallyExecuted value)
        partiallyExecuted,
    required TResult Function(_OrderStatusFullyExecuted value) fullyExecuted,
    required TResult Function(_OrderStatusCancelled value) cancelled,
    required TResult Function(_OrderStatusOrderFailure value) orderFailure,
  }) {
    return orderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderStatusPending value)? pending,
    TResult? Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult? Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult? Function(_OrderStatusCancelled value)? cancelled,
    TResult? Function(_OrderStatusOrderFailure value)? orderFailure,
  }) {
    return orderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderStatusPending value)? pending,
    TResult Function(_OrderStatusPartiallyExecuted value)? partiallyExecuted,
    TResult Function(_OrderStatusFullyExecuted value)? fullyExecuted,
    TResult Function(_OrderStatusCancelled value)? cancelled,
    TResult Function(_OrderStatusOrderFailure value)? orderFailure,
    required TResult orElse(),
  }) {
    if (orderFailure != null) {
      return orderFailure(this);
    }
    return orElse();
  }
}

abstract class _OrderStatusOrderFailure implements OrderStatus {
  const factory _OrderStatusOrderFailure() = _$OrderStatusOrderFailureImpl;
}

/// @nodoc
mixin _$OrderType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() limitOrder,
    required TResult Function() marketOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? limitOrder,
    TResult? Function()? marketOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? limitOrder,
    TResult Function()? marketOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderTypeLimitOrder value) limitOrder,
    required TResult Function(_OrderTypeMarketOrder value) marketOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult? Function(_OrderTypeMarketOrder value)? marketOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult Function(_OrderTypeMarketOrder value)? marketOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeCopyWith<$Res> {
  factory $OrderTypeCopyWith(OrderType value, $Res Function(OrderType) then) =
      _$OrderTypeCopyWithImpl<$Res, OrderType>;
}

/// @nodoc
class _$OrderTypeCopyWithImpl<$Res, $Val extends OrderType>
    implements $OrderTypeCopyWith<$Res> {
  _$OrderTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderTypeLimitOrderImplCopyWith<$Res> {
  factory _$$OrderTypeLimitOrderImplCopyWith(_$OrderTypeLimitOrderImpl value,
          $Res Function(_$OrderTypeLimitOrderImpl) then) =
      __$$OrderTypeLimitOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderTypeLimitOrderImplCopyWithImpl<$Res>
    extends _$OrderTypeCopyWithImpl<$Res, _$OrderTypeLimitOrderImpl>
    implements _$$OrderTypeLimitOrderImplCopyWith<$Res> {
  __$$OrderTypeLimitOrderImplCopyWithImpl(_$OrderTypeLimitOrderImpl _value,
      $Res Function(_$OrderTypeLimitOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderTypeLimitOrderImpl implements _OrderTypeLimitOrder {
  const _$OrderTypeLimitOrderImpl();

  @override
  String toString() {
    return 'OrderType.limitOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeLimitOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() limitOrder,
    required TResult Function() marketOrder,
  }) {
    return limitOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? limitOrder,
    TResult? Function()? marketOrder,
  }) {
    return limitOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? limitOrder,
    TResult Function()? marketOrder,
    required TResult orElse(),
  }) {
    if (limitOrder != null) {
      return limitOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderTypeLimitOrder value) limitOrder,
    required TResult Function(_OrderTypeMarketOrder value) marketOrder,
  }) {
    return limitOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult? Function(_OrderTypeMarketOrder value)? marketOrder,
  }) {
    return limitOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult Function(_OrderTypeMarketOrder value)? marketOrder,
    required TResult orElse(),
  }) {
    if (limitOrder != null) {
      return limitOrder(this);
    }
    return orElse();
  }
}

abstract class _OrderTypeLimitOrder implements OrderType {
  const factory _OrderTypeLimitOrder() = _$OrderTypeLimitOrderImpl;
}

/// @nodoc
abstract class _$$OrderTypeMarketOrderImplCopyWith<$Res> {
  factory _$$OrderTypeMarketOrderImplCopyWith(_$OrderTypeMarketOrderImpl value,
          $Res Function(_$OrderTypeMarketOrderImpl) then) =
      __$$OrderTypeMarketOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderTypeMarketOrderImplCopyWithImpl<$Res>
    extends _$OrderTypeCopyWithImpl<$Res, _$OrderTypeMarketOrderImpl>
    implements _$$OrderTypeMarketOrderImplCopyWith<$Res> {
  __$$OrderTypeMarketOrderImplCopyWithImpl(_$OrderTypeMarketOrderImpl _value,
      $Res Function(_$OrderTypeMarketOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderTypeMarketOrderImpl implements _OrderTypeMarketOrder {
  const _$OrderTypeMarketOrderImpl();

  @override
  String toString() {
    return 'OrderType.marketOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeMarketOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() limitOrder,
    required TResult Function() marketOrder,
  }) {
    return marketOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? limitOrder,
    TResult? Function()? marketOrder,
  }) {
    return marketOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? limitOrder,
    TResult Function()? marketOrder,
    required TResult orElse(),
  }) {
    if (marketOrder != null) {
      return marketOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderTypeLimitOrder value) limitOrder,
    required TResult Function(_OrderTypeMarketOrder value) marketOrder,
  }) {
    return marketOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult? Function(_OrderTypeMarketOrder value)? marketOrder,
  }) {
    return marketOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderTypeLimitOrder value)? limitOrder,
    TResult Function(_OrderTypeMarketOrder value)? marketOrder,
    required TResult orElse(),
  }) {
    if (marketOrder != null) {
      return marketOrder(this);
    }
    return orElse();
  }
}

abstract class _OrderTypeMarketOrder implements OrderType {
  const factory _OrderTypeMarketOrder() = _$OrderTypeMarketOrderImpl;
}

/// @nodoc
mixin _$QuoteMarketType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vite,
    required TResult Function() eth,
    required TResult Function() btc,
    required TResult Function() usdt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vite,
    TResult? Function()? eth,
    TResult? Function()? btc,
    TResult? Function()? usdt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vite,
    TResult Function()? eth,
    TResult Function()? btc,
    TResult Function()? usdt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuoteMarketTypeVite value) vite,
    required TResult Function(_QuoteMarketTypeEth value) eth,
    required TResult Function(_QuoteMarketTypeBtc value) btc,
    required TResult Function(_QuoteMarketTypeUsdt value) usdt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuoteMarketTypeVite value)? vite,
    TResult? Function(_QuoteMarketTypeEth value)? eth,
    TResult? Function(_QuoteMarketTypeBtc value)? btc,
    TResult? Function(_QuoteMarketTypeUsdt value)? usdt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuoteMarketTypeVite value)? vite,
    TResult Function(_QuoteMarketTypeEth value)? eth,
    TResult Function(_QuoteMarketTypeBtc value)? btc,
    TResult Function(_QuoteMarketTypeUsdt value)? usdt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteMarketTypeCopyWith<$Res> {
  factory $QuoteMarketTypeCopyWith(
          QuoteMarketType value, $Res Function(QuoteMarketType) then) =
      _$QuoteMarketTypeCopyWithImpl<$Res, QuoteMarketType>;
}

/// @nodoc
class _$QuoteMarketTypeCopyWithImpl<$Res, $Val extends QuoteMarketType>
    implements $QuoteMarketTypeCopyWith<$Res> {
  _$QuoteMarketTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuoteMarketTypeViteImplCopyWith<$Res> {
  factory _$$QuoteMarketTypeViteImplCopyWith(_$QuoteMarketTypeViteImpl value,
          $Res Function(_$QuoteMarketTypeViteImpl) then) =
      __$$QuoteMarketTypeViteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteMarketTypeViteImplCopyWithImpl<$Res>
    extends _$QuoteMarketTypeCopyWithImpl<$Res, _$QuoteMarketTypeViteImpl>
    implements _$$QuoteMarketTypeViteImplCopyWith<$Res> {
  __$$QuoteMarketTypeViteImplCopyWithImpl(_$QuoteMarketTypeViteImpl _value,
      $Res Function(_$QuoteMarketTypeViteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteMarketTypeViteImpl implements _QuoteMarketTypeVite {
  const _$QuoteMarketTypeViteImpl();

  @override
  String toString() {
    return 'QuoteMarketType.vite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteMarketTypeViteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vite,
    required TResult Function() eth,
    required TResult Function() btc,
    required TResult Function() usdt,
  }) {
    return vite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vite,
    TResult? Function()? eth,
    TResult? Function()? btc,
    TResult? Function()? usdt,
  }) {
    return vite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vite,
    TResult Function()? eth,
    TResult Function()? btc,
    TResult Function()? usdt,
    required TResult orElse(),
  }) {
    if (vite != null) {
      return vite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuoteMarketTypeVite value) vite,
    required TResult Function(_QuoteMarketTypeEth value) eth,
    required TResult Function(_QuoteMarketTypeBtc value) btc,
    required TResult Function(_QuoteMarketTypeUsdt value) usdt,
  }) {
    return vite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuoteMarketTypeVite value)? vite,
    TResult? Function(_QuoteMarketTypeEth value)? eth,
    TResult? Function(_QuoteMarketTypeBtc value)? btc,
    TResult? Function(_QuoteMarketTypeUsdt value)? usdt,
  }) {
    return vite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuoteMarketTypeVite value)? vite,
    TResult Function(_QuoteMarketTypeEth value)? eth,
    TResult Function(_QuoteMarketTypeBtc value)? btc,
    TResult Function(_QuoteMarketTypeUsdt value)? usdt,
    required TResult orElse(),
  }) {
    if (vite != null) {
      return vite(this);
    }
    return orElse();
  }
}

abstract class _QuoteMarketTypeVite implements QuoteMarketType {
  const factory _QuoteMarketTypeVite() = _$QuoteMarketTypeViteImpl;
}

/// @nodoc
abstract class _$$QuoteMarketTypeEthImplCopyWith<$Res> {
  factory _$$QuoteMarketTypeEthImplCopyWith(_$QuoteMarketTypeEthImpl value,
          $Res Function(_$QuoteMarketTypeEthImpl) then) =
      __$$QuoteMarketTypeEthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteMarketTypeEthImplCopyWithImpl<$Res>
    extends _$QuoteMarketTypeCopyWithImpl<$Res, _$QuoteMarketTypeEthImpl>
    implements _$$QuoteMarketTypeEthImplCopyWith<$Res> {
  __$$QuoteMarketTypeEthImplCopyWithImpl(_$QuoteMarketTypeEthImpl _value,
      $Res Function(_$QuoteMarketTypeEthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteMarketTypeEthImpl implements _QuoteMarketTypeEth {
  const _$QuoteMarketTypeEthImpl();

  @override
  String toString() {
    return 'QuoteMarketType.eth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuoteMarketTypeEthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vite,
    required TResult Function() eth,
    required TResult Function() btc,
    required TResult Function() usdt,
  }) {
    return eth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vite,
    TResult? Function()? eth,
    TResult? Function()? btc,
    TResult? Function()? usdt,
  }) {
    return eth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vite,
    TResult Function()? eth,
    TResult Function()? btc,
    TResult Function()? usdt,
    required TResult orElse(),
  }) {
    if (eth != null) {
      return eth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuoteMarketTypeVite value) vite,
    required TResult Function(_QuoteMarketTypeEth value) eth,
    required TResult Function(_QuoteMarketTypeBtc value) btc,
    required TResult Function(_QuoteMarketTypeUsdt value) usdt,
  }) {
    return eth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuoteMarketTypeVite value)? vite,
    TResult? Function(_QuoteMarketTypeEth value)? eth,
    TResult? Function(_QuoteMarketTypeBtc value)? btc,
    TResult? Function(_QuoteMarketTypeUsdt value)? usdt,
  }) {
    return eth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuoteMarketTypeVite value)? vite,
    TResult Function(_QuoteMarketTypeEth value)? eth,
    TResult Function(_QuoteMarketTypeBtc value)? btc,
    TResult Function(_QuoteMarketTypeUsdt value)? usdt,
    required TResult orElse(),
  }) {
    if (eth != null) {
      return eth(this);
    }
    return orElse();
  }
}

abstract class _QuoteMarketTypeEth implements QuoteMarketType {
  const factory _QuoteMarketTypeEth() = _$QuoteMarketTypeEthImpl;
}

/// @nodoc
abstract class _$$QuoteMarketTypeBtcImplCopyWith<$Res> {
  factory _$$QuoteMarketTypeBtcImplCopyWith(_$QuoteMarketTypeBtcImpl value,
          $Res Function(_$QuoteMarketTypeBtcImpl) then) =
      __$$QuoteMarketTypeBtcImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteMarketTypeBtcImplCopyWithImpl<$Res>
    extends _$QuoteMarketTypeCopyWithImpl<$Res, _$QuoteMarketTypeBtcImpl>
    implements _$$QuoteMarketTypeBtcImplCopyWith<$Res> {
  __$$QuoteMarketTypeBtcImplCopyWithImpl(_$QuoteMarketTypeBtcImpl _value,
      $Res Function(_$QuoteMarketTypeBtcImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteMarketTypeBtcImpl implements _QuoteMarketTypeBtc {
  const _$QuoteMarketTypeBtcImpl();

  @override
  String toString() {
    return 'QuoteMarketType.btc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuoteMarketTypeBtcImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vite,
    required TResult Function() eth,
    required TResult Function() btc,
    required TResult Function() usdt,
  }) {
    return btc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vite,
    TResult? Function()? eth,
    TResult? Function()? btc,
    TResult? Function()? usdt,
  }) {
    return btc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vite,
    TResult Function()? eth,
    TResult Function()? btc,
    TResult Function()? usdt,
    required TResult orElse(),
  }) {
    if (btc != null) {
      return btc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuoteMarketTypeVite value) vite,
    required TResult Function(_QuoteMarketTypeEth value) eth,
    required TResult Function(_QuoteMarketTypeBtc value) btc,
    required TResult Function(_QuoteMarketTypeUsdt value) usdt,
  }) {
    return btc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuoteMarketTypeVite value)? vite,
    TResult? Function(_QuoteMarketTypeEth value)? eth,
    TResult? Function(_QuoteMarketTypeBtc value)? btc,
    TResult? Function(_QuoteMarketTypeUsdt value)? usdt,
  }) {
    return btc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuoteMarketTypeVite value)? vite,
    TResult Function(_QuoteMarketTypeEth value)? eth,
    TResult Function(_QuoteMarketTypeBtc value)? btc,
    TResult Function(_QuoteMarketTypeUsdt value)? usdt,
    required TResult orElse(),
  }) {
    if (btc != null) {
      return btc(this);
    }
    return orElse();
  }
}

abstract class _QuoteMarketTypeBtc implements QuoteMarketType {
  const factory _QuoteMarketTypeBtc() = _$QuoteMarketTypeBtcImpl;
}

/// @nodoc
abstract class _$$QuoteMarketTypeUsdtImplCopyWith<$Res> {
  factory _$$QuoteMarketTypeUsdtImplCopyWith(_$QuoteMarketTypeUsdtImpl value,
          $Res Function(_$QuoteMarketTypeUsdtImpl) then) =
      __$$QuoteMarketTypeUsdtImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuoteMarketTypeUsdtImplCopyWithImpl<$Res>
    extends _$QuoteMarketTypeCopyWithImpl<$Res, _$QuoteMarketTypeUsdtImpl>
    implements _$$QuoteMarketTypeUsdtImplCopyWith<$Res> {
  __$$QuoteMarketTypeUsdtImplCopyWithImpl(_$QuoteMarketTypeUsdtImpl _value,
      $Res Function(_$QuoteMarketTypeUsdtImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuoteMarketTypeUsdtImpl implements _QuoteMarketTypeUsdt {
  const _$QuoteMarketTypeUsdtImpl();

  @override
  String toString() {
    return 'QuoteMarketType.usdt()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteMarketTypeUsdtImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vite,
    required TResult Function() eth,
    required TResult Function() btc,
    required TResult Function() usdt,
  }) {
    return usdt();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vite,
    TResult? Function()? eth,
    TResult? Function()? btc,
    TResult? Function()? usdt,
  }) {
    return usdt?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vite,
    TResult Function()? eth,
    TResult Function()? btc,
    TResult Function()? usdt,
    required TResult orElse(),
  }) {
    if (usdt != null) {
      return usdt();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuoteMarketTypeVite value) vite,
    required TResult Function(_QuoteMarketTypeEth value) eth,
    required TResult Function(_QuoteMarketTypeBtc value) btc,
    required TResult Function(_QuoteMarketTypeUsdt value) usdt,
  }) {
    return usdt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuoteMarketTypeVite value)? vite,
    TResult? Function(_QuoteMarketTypeEth value)? eth,
    TResult? Function(_QuoteMarketTypeBtc value)? btc,
    TResult? Function(_QuoteMarketTypeUsdt value)? usdt,
  }) {
    return usdt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuoteMarketTypeVite value)? vite,
    TResult Function(_QuoteMarketTypeEth value)? eth,
    TResult Function(_QuoteMarketTypeBtc value)? btc,
    TResult Function(_QuoteMarketTypeUsdt value)? usdt,
    required TResult orElse(),
  }) {
    if (usdt != null) {
      return usdt(this);
    }
    return orElse();
  }
}

abstract class _QuoteMarketTypeUsdt implements QuoteMarketType {
  const factory _QuoteMarketTypeUsdt() = _$QuoteMarketTypeUsdtImpl;
}

/// @nodoc
mixin _$AccBlockVmLogs {
  String get hash => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<VmLogMessage> get vmLogs => throw _privateConstructorUsedError;
  List<OrderTx> get transactions => throw _privateConstructorUsedError;
  set transactions(List<OrderTx> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccBlockVmLogsCopyWith<AccBlockVmLogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccBlockVmLogsCopyWith<$Res> {
  factory $AccBlockVmLogsCopyWith(
          AccBlockVmLogs value, $Res Function(AccBlockVmLogs) then) =
      _$AccBlockVmLogsCopyWithImpl<$Res, AccBlockVmLogs>;
  @useResult
  $Res call(
      {String hash,
      int height,
      List<VmLogMessage> vmLogs,
      List<OrderTx> transactions});
}

/// @nodoc
class _$AccBlockVmLogsCopyWithImpl<$Res, $Val extends AccBlockVmLogs>
    implements $AccBlockVmLogsCopyWith<$Res> {
  _$AccBlockVmLogsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? height = null,
    Object? vmLogs = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      vmLogs: null == vmLogs
          ? _value.vmLogs
          : vmLogs // ignore: cast_nullable_to_non_nullable
              as List<VmLogMessage>,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<OrderTx>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccBlockVmLogsImplCopyWith<$Res>
    implements $AccBlockVmLogsCopyWith<$Res> {
  factory _$$AccBlockVmLogsImplCopyWith(_$AccBlockVmLogsImpl value,
          $Res Function(_$AccBlockVmLogsImpl) then) =
      __$$AccBlockVmLogsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      int height,
      List<VmLogMessage> vmLogs,
      List<OrderTx> transactions});
}

/// @nodoc
class __$$AccBlockVmLogsImplCopyWithImpl<$Res>
    extends _$AccBlockVmLogsCopyWithImpl<$Res, _$AccBlockVmLogsImpl>
    implements _$$AccBlockVmLogsImplCopyWith<$Res> {
  __$$AccBlockVmLogsImplCopyWithImpl(
      _$AccBlockVmLogsImpl _value, $Res Function(_$AccBlockVmLogsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? height = null,
    Object? vmLogs = null,
    Object? transactions = null,
  }) {
    return _then(_$AccBlockVmLogsImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      vmLogs: null == vmLogs
          ? _value.vmLogs
          : vmLogs // ignore: cast_nullable_to_non_nullable
              as List<VmLogMessage>,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<OrderTx>,
    ));
  }
}

/// @nodoc

class _$AccBlockVmLogsImpl extends _AccBlockVmLogs {
  _$AccBlockVmLogsImpl(
      {required this.hash,
      required this.height,
      required this.vmLogs,
      required this.transactions})
      : super._();

  @override
  final String hash;
  @override
  final int height;
  @override
  final List<VmLogMessage> vmLogs;
  @override
  List<OrderTx> transactions;

  @override
  String toString() {
    return 'AccBlockVmLogs(hash: $hash, height: $height, vmLogs: $vmLogs, transactions: $transactions)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccBlockVmLogsImplCopyWith<_$AccBlockVmLogsImpl> get copyWith =>
      __$$AccBlockVmLogsImplCopyWithImpl<_$AccBlockVmLogsImpl>(
          this, _$identity);
}

abstract class _AccBlockVmLogs extends AccBlockVmLogs {
  factory _AccBlockVmLogs(
      {required final String hash,
      required final int height,
      required final List<VmLogMessage> vmLogs,
      required List<OrderTx> transactions}) = _$AccBlockVmLogsImpl;
  _AccBlockVmLogs._() : super._();

  @override
  String get hash;
  @override
  int get height;
  @override
  List<VmLogMessage> get vmLogs;
  @override
  List<OrderTx> get transactions;
  set transactions(List<OrderTx> value);
  @override
  @JsonKey(ignore: true)
  _$$AccBlockVmLogsImplCopyWith<_$AccBlockVmLogsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderTx {
  String get txId => throw _privateConstructorUsedError;
  String get takerOrderId => throw _privateConstructorUsedError;
  String get makerOrderId => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  Decimal get amount => throw _privateConstructorUsedError;
  Decimal get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderTxCopyWith<OrderTx> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTxCopyWith<$Res> {
  factory $OrderTxCopyWith(OrderTx value, $Res Function(OrderTx) then) =
      _$OrderTxCopyWithImpl<$Res, OrderTx>;
  @useResult
  $Res call(
      {String txId,
      String takerOrderId,
      String makerOrderId,
      Decimal price,
      Decimal amount,
      Decimal quantity});
}

/// @nodoc
class _$OrderTxCopyWithImpl<$Res, $Val extends OrderTx>
    implements $OrderTxCopyWith<$Res> {
  _$OrderTxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? takerOrderId = null,
    Object? makerOrderId = null,
    Object? price = null,
    Object? amount = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      takerOrderId: null == takerOrderId
          ? _value.takerOrderId
          : takerOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      makerOrderId: null == makerOrderId
          ? _value.makerOrderId
          : makerOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderTxImplCopyWith<$Res> implements $OrderTxCopyWith<$Res> {
  factory _$$OrderTxImplCopyWith(
          _$OrderTxImpl value, $Res Function(_$OrderTxImpl) then) =
      __$$OrderTxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String txId,
      String takerOrderId,
      String makerOrderId,
      Decimal price,
      Decimal amount,
      Decimal quantity});
}

/// @nodoc
class __$$OrderTxImplCopyWithImpl<$Res>
    extends _$OrderTxCopyWithImpl<$Res, _$OrderTxImpl>
    implements _$$OrderTxImplCopyWith<$Res> {
  __$$OrderTxImplCopyWithImpl(
      _$OrderTxImpl _value, $Res Function(_$OrderTxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txId = null,
    Object? takerOrderId = null,
    Object? makerOrderId = null,
    Object? price = null,
    Object? amount = null,
    Object? quantity = null,
  }) {
    return _then(_$OrderTxImpl(
      txId: null == txId
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as String,
      takerOrderId: null == takerOrderId
          ? _value.takerOrderId
          : takerOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      makerOrderId: null == makerOrderId
          ? _value.makerOrderId
          : makerOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc

class _$OrderTxImpl implements _OrderTx {
  const _$OrderTxImpl(
      {required this.txId,
      required this.takerOrderId,
      required this.makerOrderId,
      required this.price,
      required this.amount,
      required this.quantity});

  @override
  final String txId;
  @override
  final String takerOrderId;
  @override
  final String makerOrderId;
  @override
  final Decimal price;
  @override
  final Decimal amount;
  @override
  final Decimal quantity;

  @override
  String toString() {
    return 'OrderTx(txId: $txId, takerOrderId: $takerOrderId, makerOrderId: $makerOrderId, price: $price, amount: $amount, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTxImpl &&
            (identical(other.txId, txId) || other.txId == txId) &&
            (identical(other.takerOrderId, takerOrderId) ||
                other.takerOrderId == takerOrderId) &&
            (identical(other.makerOrderId, makerOrderId) ||
                other.makerOrderId == makerOrderId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, txId, takerOrderId, makerOrderId, price, amount, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTxImplCopyWith<_$OrderTxImpl> get copyWith =>
      __$$OrderTxImplCopyWithImpl<_$OrderTxImpl>(this, _$identity);
}

abstract class _OrderTx implements OrderTx {
  const factory _OrderTx(
      {required final String txId,
      required final String takerOrderId,
      required final String makerOrderId,
      required final Decimal price,
      required final Decimal amount,
      required final Decimal quantity}) = _$OrderTxImpl;

  @override
  String get txId;
  @override
  String get takerOrderId;
  @override
  String get makerOrderId;
  @override
  Decimal get price;
  @override
  Decimal get amount;
  @override
  Decimal get quantity;
  @override
  @JsonKey(ignore: true)
  _$$OrderTxImplCopyWith<_$OrderTxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Tokens {
  Map<String, TokenInfo> get tokenMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res, Tokens>;
  @useResult
  $Res call({Map<String, TokenInfo> tokenMap});
}

/// @nodoc
class _$TokensCopyWithImpl<$Res, $Val extends Tokens>
    implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenMap = null,
  }) {
    return _then(_value.copyWith(
      tokenMap: null == tokenMap
          ? _value.tokenMap
          : tokenMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TokenInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokensImplCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$$TokensImplCopyWith(
          _$TokensImpl value, $Res Function(_$TokensImpl) then) =
      __$$TokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, TokenInfo> tokenMap});
}

/// @nodoc
class __$$TokensImplCopyWithImpl<$Res>
    extends _$TokensCopyWithImpl<$Res, _$TokensImpl>
    implements _$$TokensImplCopyWith<$Res> {
  __$$TokensImplCopyWithImpl(
      _$TokensImpl _value, $Res Function(_$TokensImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenMap = null,
  }) {
    return _then(_$TokensImpl(
      tokenMap: null == tokenMap
          ? _value._tokenMap
          : tokenMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TokenInfo>,
    ));
  }
}

/// @nodoc

class _$TokensImpl extends _Tokens {
  const _$TokensImpl({required final Map<String, TokenInfo> tokenMap})
      : _tokenMap = tokenMap,
        super._();

  final Map<String, TokenInfo> _tokenMap;
  @override
  Map<String, TokenInfo> get tokenMap {
    if (_tokenMap is EqualUnmodifiableMapView) return _tokenMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tokenMap);
  }

  @override
  String toString() {
    return 'Tokens(tokenMap: $tokenMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokensImpl &&
            const DeepCollectionEquality().equals(other._tokenMap, _tokenMap));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tokenMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokensImplCopyWith<_$TokensImpl> get copyWith =>
      __$$TokensImplCopyWithImpl<_$TokensImpl>(this, _$identity);
}

abstract class _Tokens extends Tokens {
  const factory _Tokens({required final Map<String, TokenInfo> tokenMap}) =
      _$TokensImpl;
  const _Tokens._() : super._();

  @override
  Map<String, TokenInfo> get tokenMap;
  @override
  @JsonKey(ignore: true)
  _$$TokensImplCopyWith<_$TokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderEvent {
  EventType get type => throw _privateConstructorUsedError;
  OrderLog? get orderLog => throw _privateConstructorUsedError;
  OrderTx? get orderTx => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  set timestamp(int? value) => throw _privateConstructorUsedError;
  String get blockHash => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
  @useResult
  $Res call(
      {EventType type,
      OrderLog? orderLog,
      OrderTx? orderTx,
      int? timestamp,
      String blockHash});

  $OrderLogCopyWith<$Res>? get orderLog;
  $OrderTxCopyWith<$Res>? get orderTx;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? orderLog = freezed,
    Object? orderTx = freezed,
    Object? timestamp = freezed,
    Object? blockHash = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      orderLog: freezed == orderLog
          ? _value.orderLog
          : orderLog // ignore: cast_nullable_to_non_nullable
              as OrderLog?,
      orderTx: freezed == orderTx
          ? _value.orderTx
          : orderTx // ignore: cast_nullable_to_non_nullable
              as OrderTx?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: null == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderLogCopyWith<$Res>? get orderLog {
    if (_value.orderLog == null) {
      return null;
    }

    return $OrderLogCopyWith<$Res>(_value.orderLog!, (value) {
      return _then(_value.copyWith(orderLog: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTxCopyWith<$Res>? get orderTx {
    if (_value.orderTx == null) {
      return null;
    }

    return $OrderTxCopyWith<$Res>(_value.orderTx!, (value) {
      return _then(_value.copyWith(orderTx: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEventImplCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$$OrderEventImplCopyWith(
          _$OrderEventImpl value, $Res Function(_$OrderEventImpl) then) =
      __$$OrderEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventType type,
      OrderLog? orderLog,
      OrderTx? orderTx,
      int? timestamp,
      String blockHash});

  @override
  $OrderLogCopyWith<$Res>? get orderLog;
  @override
  $OrderTxCopyWith<$Res>? get orderTx;
}

/// @nodoc
class __$$OrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$OrderEventImpl>
    implements _$$OrderEventImplCopyWith<$Res> {
  __$$OrderEventImplCopyWithImpl(
      _$OrderEventImpl _value, $Res Function(_$OrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? orderLog = freezed,
    Object? orderTx = freezed,
    Object? timestamp = freezed,
    Object? blockHash = null,
  }) {
    return _then(_$OrderEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      orderLog: freezed == orderLog
          ? _value.orderLog
          : orderLog // ignore: cast_nullable_to_non_nullable
              as OrderLog?,
      orderTx: freezed == orderTx
          ? _value.orderTx
          : orderTx // ignore: cast_nullable_to_non_nullable
              as OrderTx?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: null == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderEventImpl extends _OrderEvent {
  _$OrderEventImpl(
      {required this.type,
      required this.orderLog,
      required this.orderTx,
      required this.timestamp,
      required this.blockHash})
      : super._();

  @override
  final EventType type;
  @override
  final OrderLog? orderLog;
  @override
  final OrderTx? orderTx;
  @override
  int? timestamp;
  @override
  final String blockHash;

  @override
  String toString() {
    return 'OrderEvent(type: $type, orderLog: $orderLog, orderTx: $orderTx, timestamp: $timestamp, blockHash: $blockHash)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEventImplCopyWith<_$OrderEventImpl> get copyWith =>
      __$$OrderEventImplCopyWithImpl<_$OrderEventImpl>(this, _$identity);
}

abstract class _OrderEvent extends OrderEvent {
  factory _OrderEvent(
      {required final EventType type,
      required final OrderLog? orderLog,
      required final OrderTx? orderTx,
      required int? timestamp,
      required final String blockHash}) = _$OrderEventImpl;
  _OrderEvent._() : super._();

  @override
  EventType get type;
  @override
  OrderLog? get orderLog;
  @override
  OrderTx? get orderTx;
  @override
  int? get timestamp;
  set timestamp(int? value);
  @override
  String get blockHash;
  @override
  @JsonKey(ignore: true)
  _$$OrderEventImplCopyWith<_$OrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderLog {
  String get orderId => throw _privateConstructorUsedError;
  int get orderCreateTime => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  Decimal get changeQuantity => throw _privateConstructorUsedError;
  Decimal get changeAmount => throw _privateConstructorUsedError;
  bool get side => throw _privateConstructorUsedError;
  String get tradePair => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  VmLog get rawLog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderLogCopyWith<OrderLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLogCopyWith<$Res> {
  factory $OrderLogCopyWith(OrderLog value, $Res Function(OrderLog) then) =
      _$OrderLogCopyWithImpl<$Res, OrderLog>;
  @useResult
  $Res call(
      {String orderId,
      int orderCreateTime,
      Decimal price,
      Decimal changeQuantity,
      Decimal changeAmount,
      bool side,
      String tradePair,
      String address,
      OrderStatus status,
      VmLog rawLog});

  $OrderStatusCopyWith<$Res> get status;
  $VmLogCopyWith<$Res> get rawLog;
}

/// @nodoc
class _$OrderLogCopyWithImpl<$Res, $Val extends OrderLog>
    implements $OrderLogCopyWith<$Res> {
  _$OrderLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderCreateTime = null,
    Object? price = null,
    Object? changeQuantity = null,
    Object? changeAmount = null,
    Object? side = null,
    Object? tradePair = null,
    Object? address = null,
    Object? status = null,
    Object? rawLog = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCreateTime: null == orderCreateTime
          ? _value.orderCreateTime
          : orderCreateTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      changeQuantity: null == changeQuantity
          ? _value.changeQuantity
          : changeQuantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      rawLog: null == rawLog
          ? _value.rawLog
          : rawLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusCopyWith<$Res> get status {
    return $OrderStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VmLogCopyWith<$Res> get rawLog {
    return $VmLogCopyWith<$Res>(_value.rawLog, (value) {
      return _then(_value.copyWith(rawLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderLogImplCopyWith<$Res>
    implements $OrderLogCopyWith<$Res> {
  factory _$$OrderLogImplCopyWith(
          _$OrderLogImpl value, $Res Function(_$OrderLogImpl) then) =
      __$$OrderLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      int orderCreateTime,
      Decimal price,
      Decimal changeQuantity,
      Decimal changeAmount,
      bool side,
      String tradePair,
      String address,
      OrderStatus status,
      VmLog rawLog});

  @override
  $OrderStatusCopyWith<$Res> get status;
  @override
  $VmLogCopyWith<$Res> get rawLog;
}

/// @nodoc
class __$$OrderLogImplCopyWithImpl<$Res>
    extends _$OrderLogCopyWithImpl<$Res, _$OrderLogImpl>
    implements _$$OrderLogImplCopyWith<$Res> {
  __$$OrderLogImplCopyWithImpl(
      _$OrderLogImpl _value, $Res Function(_$OrderLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderCreateTime = null,
    Object? price = null,
    Object? changeQuantity = null,
    Object? changeAmount = null,
    Object? side = null,
    Object? tradePair = null,
    Object? address = null,
    Object? status = null,
    Object? rawLog = null,
  }) {
    return _then(_$OrderLogImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCreateTime: null == orderCreateTime
          ? _value.orderCreateTime
          : orderCreateTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      changeQuantity: null == changeQuantity
          ? _value.changeQuantity
          : changeQuantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      rawLog: null == rawLog
          ? _value.rawLog
          : rawLog // ignore: cast_nullable_to_non_nullable
              as VmLog,
    ));
  }
}

/// @nodoc

class _$OrderLogImpl extends _OrderLog {
  const _$OrderLogImpl(
      {required this.orderId,
      required this.orderCreateTime,
      required this.price,
      required this.changeQuantity,
      required this.changeAmount,
      required this.side,
      required this.tradePair,
      required this.address,
      required this.status,
      required this.rawLog})
      : super._();

  @override
  final String orderId;
  @override
  final int orderCreateTime;
  @override
  final Decimal price;
  @override
  final Decimal changeQuantity;
  @override
  final Decimal changeAmount;
  @override
  final bool side;
  @override
  final String tradePair;
  @override
  final String address;
  @override
  final OrderStatus status;
  @override
  final VmLog rawLog;

  @override
  String toString() {
    return 'OrderLog(orderId: $orderId, orderCreateTime: $orderCreateTime, price: $price, changeQuantity: $changeQuantity, changeAmount: $changeAmount, side: $side, tradePair: $tradePair, address: $address, status: $status, rawLog: $rawLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLogImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderCreateTime, orderCreateTime) ||
                other.orderCreateTime == orderCreateTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.changeQuantity, changeQuantity) ||
                other.changeQuantity == changeQuantity) &&
            (identical(other.changeAmount, changeAmount) ||
                other.changeAmount == changeAmount) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.tradePair, tradePair) ||
                other.tradePair == tradePair) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rawLog, rawLog) || other.rawLog == rawLog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, orderCreateTime, price,
      changeQuantity, changeAmount, side, tradePair, address, status, rawLog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLogImplCopyWith<_$OrderLogImpl> get copyWith =>
      __$$OrderLogImplCopyWithImpl<_$OrderLogImpl>(this, _$identity);
}

abstract class _OrderLog extends OrderLog {
  const factory _OrderLog(
      {required final String orderId,
      required final int orderCreateTime,
      required final Decimal price,
      required final Decimal changeQuantity,
      required final Decimal changeAmount,
      required final bool side,
      required final String tradePair,
      required final String address,
      required final OrderStatus status,
      required final VmLog rawLog}) = _$OrderLogImpl;
  const _OrderLog._() : super._();

  @override
  String get orderId;
  @override
  int get orderCreateTime;
  @override
  Decimal get price;
  @override
  Decimal get changeQuantity;
  @override
  Decimal get changeAmount;
  @override
  bool get side;
  @override
  String get tradePair;
  @override
  String get address;
  @override
  OrderStatus get status;
  @override
  VmLog get rawLog;
  @override
  @JsonKey(ignore: true)
  _$$OrderLogImplCopyWith<_$OrderLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentOrder _$CurrentOrderFromJson(Map<String, dynamic> json) {
  return _CurrentOrder.fromJson(json);
}

/// @nodoc
mixin _$CurrentOrder {
  @JsonKey(name: 'Id')
  String get orderId => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  Decimal get quantity => throw _privateConstructorUsedError;
  Decimal get amount => throw _privateConstructorUsedError;
  Decimal? get executedQuantity => throw _privateConstructorUsedError;
  Decimal? get executedAmount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get side => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentOrderCopyWith<CurrentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentOrderCopyWith<$Res> {
  factory $CurrentOrderCopyWith(
          CurrentOrder value, $Res Function(CurrentOrder) then) =
      _$CurrentOrderCopyWithImpl<$Res, CurrentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String orderId,
      Decimal price,
      Decimal quantity,
      Decimal amount,
      Decimal? executedQuantity,
      Decimal? executedAmount,
      String address,
      bool side,
      int timestamp});
}

/// @nodoc
class _$CurrentOrderCopyWithImpl<$Res, $Val extends CurrentOrder>
    implements $CurrentOrderCopyWith<$Res> {
  _$CurrentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? executedQuantity = freezed,
    Object? executedAmount = freezed,
    Object? address = null,
    Object? side = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      executedQuantity: freezed == executedQuantity
          ? _value.executedQuantity
          : executedQuantity // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      executedAmount: freezed == executedAmount
          ? _value.executedAmount
          : executedAmount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentOrderImplCopyWith<$Res>
    implements $CurrentOrderCopyWith<$Res> {
  factory _$$CurrentOrderImplCopyWith(
          _$CurrentOrderImpl value, $Res Function(_$CurrentOrderImpl) then) =
      __$$CurrentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String orderId,
      Decimal price,
      Decimal quantity,
      Decimal amount,
      Decimal? executedQuantity,
      Decimal? executedAmount,
      String address,
      bool side,
      int timestamp});
}

/// @nodoc
class __$$CurrentOrderImplCopyWithImpl<$Res>
    extends _$CurrentOrderCopyWithImpl<$Res, _$CurrentOrderImpl>
    implements _$$CurrentOrderImplCopyWith<$Res> {
  __$$CurrentOrderImplCopyWithImpl(
      _$CurrentOrderImpl _value, $Res Function(_$CurrentOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? executedQuantity = freezed,
    Object? executedAmount = freezed,
    Object? address = null,
    Object? side = null,
    Object? timestamp = null,
  }) {
    return _then(_$CurrentOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      executedQuantity: freezed == executedQuantity
          ? _value.executedQuantity
          : executedQuantity // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      executedAmount: freezed == executedAmount
          ? _value.executedAmount
          : executedAmount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$CurrentOrderImpl implements _CurrentOrder {
  const _$CurrentOrderImpl(
      {@JsonKey(name: 'Id') required this.orderId,
      required this.price,
      required this.quantity,
      required this.amount,
      required this.executedQuantity,
      required this.executedAmount,
      required this.address,
      required this.side,
      required this.timestamp});

  factory _$CurrentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentOrderImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String orderId;
  @override
  final Decimal price;
  @override
  final Decimal quantity;
  @override
  final Decimal amount;
  @override
  final Decimal? executedQuantity;
  @override
  final Decimal? executedAmount;
  @override
  final String address;
  @override
  final bool side;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'CurrentOrder(orderId: $orderId, price: $price, quantity: $quantity, amount: $amount, executedQuantity: $executedQuantity, executedAmount: $executedAmount, address: $address, side: $side, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.executedQuantity, executedQuantity) ||
                other.executedQuantity == executedQuantity) &&
            (identical(other.executedAmount, executedAmount) ||
                other.executedAmount == executedAmount) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, price, quantity, amount,
      executedQuantity, executedAmount, address, side, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentOrderImplCopyWith<_$CurrentOrderImpl> get copyWith =>
      __$$CurrentOrderImplCopyWithImpl<_$CurrentOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentOrderImplToJson(
      this,
    );
  }
}

abstract class _CurrentOrder implements CurrentOrder {
  const factory _CurrentOrder(
      {@JsonKey(name: 'Id') required final String orderId,
      required final Decimal price,
      required final Decimal quantity,
      required final Decimal amount,
      required final Decimal? executedQuantity,
      required final Decimal? executedAmount,
      required final String address,
      required final bool side,
      required final int timestamp}) = _$CurrentOrderImpl;

  factory _CurrentOrder.fromJson(Map<String, dynamic> json) =
      _$CurrentOrderImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  String get orderId;
  @override
  Decimal get price;
  @override
  Decimal get quantity;
  @override
  Decimal get amount;
  @override
  Decimal? get executedQuantity;
  @override
  Decimal? get executedAmount;
  @override
  String get address;
  @override
  bool get side;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$CurrentOrderImplCopyWith<_$CurrentOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'Id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  set orderId(String value) => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  Decimal get quantity => throw _privateConstructorUsedError;
  Decimal get amount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  set address(String value) => throw _privateConstructorUsedError;
  bool get side => throw _privateConstructorUsedError;
  String get tradePair => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String orderId,
      Decimal price,
      Decimal quantity,
      Decimal amount,
      String address,
      bool side,
      String tradePair,
      int timestamp});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? address = null,
    Object? side = null,
    Object? tradePair = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String orderId,
      Decimal price,
      Decimal quantity,
      Decimal amount,
      String address,
      bool side,
      String tradePair,
      int timestamp});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? price = null,
    Object? quantity = null,
    Object? amount = null,
    Object? address = null,
    Object? side = null,
    Object? tradePair = null,
    Object? timestamp = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  _$OrderModelImpl(
      {@JsonKey(name: 'Id') required this.orderId,
      required this.price,
      required this.quantity,
      required this.amount,
      required this.address,
      required this.side,
      required this.tradePair,
      required this.timestamp})
      : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  String orderId;
  @override
  final Decimal price;
  @override
  final Decimal quantity;
  @override
  final Decimal amount;
  @override
  String address;
  @override
  final bool side;
  @override
  final String tradePair;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, price: $price, quantity: $quantity, amount: $amount, address: $address, side: $side, tradePair: $tradePair, timestamp: $timestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {@JsonKey(name: 'Id') required String orderId,
      required final Decimal price,
      required final Decimal quantity,
      required final Decimal amount,
      required String address,
      required final bool side,
      required final String tradePair,
      required final int timestamp}) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  String get orderId;
  @JsonKey(name: 'Id')
  set orderId(String value);
  @override
  Decimal get price;
  @override
  Decimal get quantity;
  @override
  Decimal get amount;
  @override
  String get address;
  set address(String value);
  @override
  bool get side;
  @override
  String get tradePair;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradePair _$TradePairFromJson(Map<String, dynamic> json) {
  return _TradePair.fromJson(json);
}

/// @nodoc
mixin _$TradePair {
  TokenInfo get tradeTokenInfo => throw _privateConstructorUsedError;
  TokenInfo get quoteTokenInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradePairCopyWith<TradePair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradePairCopyWith<$Res> {
  factory $TradePairCopyWith(TradePair value, $Res Function(TradePair) then) =
      _$TradePairCopyWithImpl<$Res, TradePair>;
  @useResult
  $Res call({TokenInfo tradeTokenInfo, TokenInfo quoteTokenInfo});

  $TokenInfoCopyWith<$Res> get tradeTokenInfo;
  $TokenInfoCopyWith<$Res> get quoteTokenInfo;
}

/// @nodoc
class _$TradePairCopyWithImpl<$Res, $Val extends TradePair>
    implements $TradePairCopyWith<$Res> {
  _$TradePairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeTokenInfo = null,
    Object? quoteTokenInfo = null,
  }) {
    return _then(_value.copyWith(
      tradeTokenInfo: null == tradeTokenInfo
          ? _value.tradeTokenInfo
          : tradeTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      quoteTokenInfo: null == quoteTokenInfo
          ? _value.quoteTokenInfo
          : quoteTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get tradeTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.tradeTokenInfo, (value) {
      return _then(_value.copyWith(tradeTokenInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenInfoCopyWith<$Res> get quoteTokenInfo {
    return $TokenInfoCopyWith<$Res>(_value.quoteTokenInfo, (value) {
      return _then(_value.copyWith(quoteTokenInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradePairImplCopyWith<$Res>
    implements $TradePairCopyWith<$Res> {
  factory _$$TradePairImplCopyWith(
          _$TradePairImpl value, $Res Function(_$TradePairImpl) then) =
      __$$TradePairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenInfo tradeTokenInfo, TokenInfo quoteTokenInfo});

  @override
  $TokenInfoCopyWith<$Res> get tradeTokenInfo;
  @override
  $TokenInfoCopyWith<$Res> get quoteTokenInfo;
}

/// @nodoc
class __$$TradePairImplCopyWithImpl<$Res>
    extends _$TradePairCopyWithImpl<$Res, _$TradePairImpl>
    implements _$$TradePairImplCopyWith<$Res> {
  __$$TradePairImplCopyWithImpl(
      _$TradePairImpl _value, $Res Function(_$TradePairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeTokenInfo = null,
    Object? quoteTokenInfo = null,
  }) {
    return _then(_$TradePairImpl(
      tradeTokenInfo: null == tradeTokenInfo
          ? _value.tradeTokenInfo
          : tradeTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
      quoteTokenInfo: null == quoteTokenInfo
          ? _value.quoteTokenInfo
          : quoteTokenInfo // ignore: cast_nullable_to_non_nullable
              as TokenInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradePairImpl extends _TradePair {
  const _$TradePairImpl(
      {required this.tradeTokenInfo, required this.quoteTokenInfo})
      : super._();

  factory _$TradePairImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradePairImplFromJson(json);

  @override
  final TokenInfo tradeTokenInfo;
  @override
  final TokenInfo quoteTokenInfo;

  @override
  String toString() {
    return 'TradePair(tradeTokenInfo: $tradeTokenInfo, quoteTokenInfo: $quoteTokenInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradePairImpl &&
            (identical(other.tradeTokenInfo, tradeTokenInfo) ||
                other.tradeTokenInfo == tradeTokenInfo) &&
            (identical(other.quoteTokenInfo, quoteTokenInfo) ||
                other.quoteTokenInfo == quoteTokenInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tradeTokenInfo, quoteTokenInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradePairImplCopyWith<_$TradePairImpl> get copyWith =>
      __$$TradePairImplCopyWithImpl<_$TradePairImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradePairImplToJson(
      this,
    );
  }
}

abstract class _TradePair extends TradePair {
  const factory _TradePair(
      {required final TokenInfo tradeTokenInfo,
      required final TokenInfo quoteTokenInfo}) = _$TradePairImpl;
  const _TradePair._() : super._();

  factory _TradePair.fromJson(Map<String, dynamic> json) =
      _$TradePairImpl.fromJson;

  @override
  TokenInfo get tradeTokenInfo;
  @override
  TokenInfo get quoteTokenInfo;
  @override
  @JsonKey(ignore: true)
  _$$TradePairImplCopyWith<_$TradePairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentOrderBookInfo {
  List<CurrentOrder> get orders => throw _privateConstructorUsedError;
  int get blockHeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentOrderBookInfoCopyWith<CurrentOrderBookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentOrderBookInfoCopyWith<$Res> {
  factory $CurrentOrderBookInfoCopyWith(CurrentOrderBookInfo value,
          $Res Function(CurrentOrderBookInfo) then) =
      _$CurrentOrderBookInfoCopyWithImpl<$Res, CurrentOrderBookInfo>;
  @useResult
  $Res call({List<CurrentOrder> orders, int blockHeight});
}

/// @nodoc
class _$CurrentOrderBookInfoCopyWithImpl<$Res,
        $Val extends CurrentOrderBookInfo>
    implements $CurrentOrderBookInfoCopyWith<$Res> {
  _$CurrentOrderBookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? blockHeight = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrder>,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentOrderBookInfoImplCopyWith<$Res>
    implements $CurrentOrderBookInfoCopyWith<$Res> {
  factory _$$CurrentOrderBookInfoImplCopyWith(_$CurrentOrderBookInfoImpl value,
          $Res Function(_$CurrentOrderBookInfoImpl) then) =
      __$$CurrentOrderBookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CurrentOrder> orders, int blockHeight});
}

/// @nodoc
class __$$CurrentOrderBookInfoImplCopyWithImpl<$Res>
    extends _$CurrentOrderBookInfoCopyWithImpl<$Res, _$CurrentOrderBookInfoImpl>
    implements _$$CurrentOrderBookInfoImplCopyWith<$Res> {
  __$$CurrentOrderBookInfoImplCopyWithImpl(_$CurrentOrderBookInfoImpl _value,
      $Res Function(_$CurrentOrderBookInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? blockHeight = null,
  }) {
    return _then(_$CurrentOrderBookInfoImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrder>,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentOrderBookInfoImpl implements _CurrentOrderBookInfo {
  const _$CurrentOrderBookInfoImpl(
      {final List<CurrentOrder> orders = const [], required this.blockHeight})
      : _orders = orders;

  final List<CurrentOrder> _orders;
  @override
  @JsonKey()
  List<CurrentOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int blockHeight;

  @override
  String toString() {
    return 'CurrentOrderBookInfo(orders: $orders, blockHeight: $blockHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentOrderBookInfoImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), blockHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentOrderBookInfoImplCopyWith<_$CurrentOrderBookInfoImpl>
      get copyWith =>
          __$$CurrentOrderBookInfoImplCopyWithImpl<_$CurrentOrderBookInfoImpl>(
              this, _$identity);
}

abstract class _CurrentOrderBookInfo implements CurrentOrderBookInfo {
  const factory _CurrentOrderBookInfo(
      {final List<CurrentOrder> orders,
      required final int blockHeight}) = _$CurrentOrderBookInfoImpl;

  @override
  List<CurrentOrder> get orders;
  @override
  int get blockHeight;
  @override
  @JsonKey(ignore: true)
  _$$CurrentOrderBookInfoImplCopyWith<_$CurrentOrderBookInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderBookInfo {
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  int get blockHeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderBookInfoCopyWith<OrderBookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookInfoCopyWith<$Res> {
  factory $OrderBookInfoCopyWith(
          OrderBookInfo value, $Res Function(OrderBookInfo) then) =
      _$OrderBookInfoCopyWithImpl<$Res, OrderBookInfo>;
  @useResult
  $Res call({List<OrderModel> orders, int blockHeight});
}

/// @nodoc
class _$OrderBookInfoCopyWithImpl<$Res, $Val extends OrderBookInfo>
    implements $OrderBookInfoCopyWith<$Res> {
  _$OrderBookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? blockHeight = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderBookInfoImplCopyWith<$Res>
    implements $OrderBookInfoCopyWith<$Res> {
  factory _$$OrderBookInfoImplCopyWith(
          _$OrderBookInfoImpl value, $Res Function(_$OrderBookInfoImpl) then) =
      __$$OrderBookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderModel> orders, int blockHeight});
}

/// @nodoc
class __$$OrderBookInfoImplCopyWithImpl<$Res>
    extends _$OrderBookInfoCopyWithImpl<$Res, _$OrderBookInfoImpl>
    implements _$$OrderBookInfoImplCopyWith<$Res> {
  __$$OrderBookInfoImplCopyWithImpl(
      _$OrderBookInfoImpl _value, $Res Function(_$OrderBookInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? blockHeight = null,
  }) {
    return _then(_$OrderBookInfoImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      blockHeight: null == blockHeight
          ? _value.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrderBookInfoImpl implements _OrderBookInfo {
  const _$OrderBookInfoImpl(
      {final List<OrderModel> orders = const [], required this.blockHeight})
      : _orders = orders;

  final List<OrderModel> _orders;
  @override
  @JsonKey()
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int blockHeight;

  @override
  String toString() {
    return 'OrderBookInfo(orders: $orders, blockHeight: $blockHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderBookInfoImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), blockHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderBookInfoImplCopyWith<_$OrderBookInfoImpl> get copyWith =>
      __$$OrderBookInfoImplCopyWithImpl<_$OrderBookInfoImpl>(this, _$identity);
}

abstract class _OrderBookInfo implements OrderBookInfo {
  const factory _OrderBookInfo(
      {final List<OrderModel> orders,
      required final int blockHeight}) = _$OrderBookInfoImpl;

  @override
  List<OrderModel> get orders;
  @override
  int get blockHeight;
  @override
  @JsonKey(ignore: true)
  _$$OrderBookInfoImplCopyWith<_$OrderBookInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return _OrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersResponse {
  List<CurrentOrder> get orders => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  HashHeight get queryStart => throw _privateConstructorUsedError;
  HashHeight get queryEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersResponseCopyWith<OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResponseCopyWith<$Res> {
  factory $OrdersResponseCopyWith(
          OrdersResponse value, $Res Function(OrdersResponse) then) =
      _$OrdersResponseCopyWithImpl<$Res, OrdersResponse>;
  @useResult
  $Res call(
      {List<CurrentOrder> orders,
      int size,
      HashHeight queryStart,
      HashHeight queryEnd});

  $HashHeightCopyWith<$Res> get queryStart;
  $HashHeightCopyWith<$Res> get queryEnd;
}

/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res, $Val extends OrdersResponse>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? size = null,
    Object? queryStart = null,
    Object? queryEnd = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrder>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      queryStart: null == queryStart
          ? _value.queryStart
          : queryStart // ignore: cast_nullable_to_non_nullable
              as HashHeight,
      queryEnd: null == queryEnd
          ? _value.queryEnd
          : queryEnd // ignore: cast_nullable_to_non_nullable
              as HashHeight,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HashHeightCopyWith<$Res> get queryStart {
    return $HashHeightCopyWith<$Res>(_value.queryStart, (value) {
      return _then(_value.copyWith(queryStart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HashHeightCopyWith<$Res> get queryEnd {
    return $HashHeightCopyWith<$Res>(_value.queryEnd, (value) {
      return _then(_value.copyWith(queryEnd: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrdersResponseImplCopyWith<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  factory _$$OrdersResponseImplCopyWith(_$OrdersResponseImpl value,
          $Res Function(_$OrdersResponseImpl) then) =
      __$$OrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CurrentOrder> orders,
      int size,
      HashHeight queryStart,
      HashHeight queryEnd});

  @override
  $HashHeightCopyWith<$Res> get queryStart;
  @override
  $HashHeightCopyWith<$Res> get queryEnd;
}

/// @nodoc
class __$$OrdersResponseImplCopyWithImpl<$Res>
    extends _$OrdersResponseCopyWithImpl<$Res, _$OrdersResponseImpl>
    implements _$$OrdersResponseImplCopyWith<$Res> {
  __$$OrdersResponseImplCopyWithImpl(
      _$OrdersResponseImpl _value, $Res Function(_$OrdersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? size = null,
    Object? queryStart = null,
    Object? queryEnd = null,
  }) {
    return _then(_$OrdersResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CurrentOrder>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      queryStart: null == queryStart
          ? _value.queryStart
          : queryStart // ignore: cast_nullable_to_non_nullable
              as HashHeight,
      queryEnd: null == queryEnd
          ? _value.queryEnd
          : queryEnd // ignore: cast_nullable_to_non_nullable
              as HashHeight,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResponseImpl implements _OrdersResponse {
  const _$OrdersResponseImpl(
      {final List<CurrentOrder> orders = const [],
      required this.size,
      required this.queryStart,
      required this.queryEnd})
      : _orders = orders;

  factory _$OrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResponseImplFromJson(json);

  final List<CurrentOrder> _orders;
  @override
  @JsonKey()
  List<CurrentOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int size;
  @override
  final HashHeight queryStart;
  @override
  final HashHeight queryEnd;

  @override
  String toString() {
    return 'OrdersResponse(orders: $orders, size: $size, queryStart: $queryStart, queryEnd: $queryEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.queryStart, queryStart) ||
                other.queryStart == queryStart) &&
            (identical(other.queryEnd, queryEnd) ||
                other.queryEnd == queryEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orders), size, queryStart, queryEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      __$$OrdersResponseImplCopyWithImpl<_$OrdersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _OrdersResponse implements OrdersResponse {
  const factory _OrdersResponse(
      {final List<CurrentOrder> orders,
      required final int size,
      required final HashHeight queryStart,
      required final HashHeight queryEnd}) = _$OrdersResponseImpl;

  factory _OrdersResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersResponseImpl.fromJson;

  @override
  List<CurrentOrder> get orders;
  @override
  int get size;
  @override
  HashHeight get queryStart;
  @override
  HashHeight get queryEnd;
  @override
  @JsonKey(ignore: true)
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketOrderParam _$MarketOrderParamFromJson(Map<String, dynamic> json) {
  return _MarketOrderParams.fromJson(json);
}

/// @nodoc
mixin _$MarketOrderParam {
  Token get tradeToken => throw _privateConstructorUsedError;
  Token get quoteToken => throw _privateConstructorUsedError;
  int get sellBegin => throw _privateConstructorUsedError;
  int get sellEnd => throw _privateConstructorUsedError;
  int get buyBegin => throw _privateConstructorUsedError;
  int get buyEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketOrderParamCopyWith<MarketOrderParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketOrderParamCopyWith<$Res> {
  factory $MarketOrderParamCopyWith(
          MarketOrderParam value, $Res Function(MarketOrderParam) then) =
      _$MarketOrderParamCopyWithImpl<$Res, MarketOrderParam>;
  @useResult
  $Res call(
      {Token tradeToken,
      Token quoteToken,
      int sellBegin,
      int sellEnd,
      int buyBegin,
      int buyEnd});

  $TokenCopyWith<$Res> get tradeToken;
  $TokenCopyWith<$Res> get quoteToken;
}

/// @nodoc
class _$MarketOrderParamCopyWithImpl<$Res, $Val extends MarketOrderParam>
    implements $MarketOrderParamCopyWith<$Res> {
  _$MarketOrderParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeToken = null,
    Object? quoteToken = null,
    Object? sellBegin = null,
    Object? sellEnd = null,
    Object? buyBegin = null,
    Object? buyEnd = null,
  }) {
    return _then(_value.copyWith(
      tradeToken: null == tradeToken
          ? _value.tradeToken
          : tradeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      quoteToken: null == quoteToken
          ? _value.quoteToken
          : quoteToken // ignore: cast_nullable_to_non_nullable
              as Token,
      sellBegin: null == sellBegin
          ? _value.sellBegin
          : sellBegin // ignore: cast_nullable_to_non_nullable
              as int,
      sellEnd: null == sellEnd
          ? _value.sellEnd
          : sellEnd // ignore: cast_nullable_to_non_nullable
              as int,
      buyBegin: null == buyBegin
          ? _value.buyBegin
          : buyBegin // ignore: cast_nullable_to_non_nullable
              as int,
      buyEnd: null == buyEnd
          ? _value.buyEnd
          : buyEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get tradeToken {
    return $TokenCopyWith<$Res>(_value.tradeToken, (value) {
      return _then(_value.copyWith(tradeToken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get quoteToken {
    return $TokenCopyWith<$Res>(_value.quoteToken, (value) {
      return _then(_value.copyWith(quoteToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketOrderParamsImplCopyWith<$Res>
    implements $MarketOrderParamCopyWith<$Res> {
  factory _$$MarketOrderParamsImplCopyWith(_$MarketOrderParamsImpl value,
          $Res Function(_$MarketOrderParamsImpl) then) =
      __$$MarketOrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Token tradeToken,
      Token quoteToken,
      int sellBegin,
      int sellEnd,
      int buyBegin,
      int buyEnd});

  @override
  $TokenCopyWith<$Res> get tradeToken;
  @override
  $TokenCopyWith<$Res> get quoteToken;
}

/// @nodoc
class __$$MarketOrderParamsImplCopyWithImpl<$Res>
    extends _$MarketOrderParamCopyWithImpl<$Res, _$MarketOrderParamsImpl>
    implements _$$MarketOrderParamsImplCopyWith<$Res> {
  __$$MarketOrderParamsImplCopyWithImpl(_$MarketOrderParamsImpl _value,
      $Res Function(_$MarketOrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeToken = null,
    Object? quoteToken = null,
    Object? sellBegin = null,
    Object? sellEnd = null,
    Object? buyBegin = null,
    Object? buyEnd = null,
  }) {
    return _then(_$MarketOrderParamsImpl(
      tradeToken: null == tradeToken
          ? _value.tradeToken
          : tradeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      quoteToken: null == quoteToken
          ? _value.quoteToken
          : quoteToken // ignore: cast_nullable_to_non_nullable
              as Token,
      sellBegin: null == sellBegin
          ? _value.sellBegin
          : sellBegin // ignore: cast_nullable_to_non_nullable
              as int,
      sellEnd: null == sellEnd
          ? _value.sellEnd
          : sellEnd // ignore: cast_nullable_to_non_nullable
              as int,
      buyBegin: null == buyBegin
          ? _value.buyBegin
          : buyBegin // ignore: cast_nullable_to_non_nullable
              as int,
      buyEnd: null == buyEnd
          ? _value.buyEnd
          : buyEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketOrderParamsImpl implements _MarketOrderParams {
  const _$MarketOrderParamsImpl(
      {required this.tradeToken,
      required this.quoteToken,
      required this.sellBegin,
      required this.sellEnd,
      required this.buyBegin,
      required this.buyEnd});

  factory _$MarketOrderParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketOrderParamsImplFromJson(json);

  @override
  final Token tradeToken;
  @override
  final Token quoteToken;
  @override
  final int sellBegin;
  @override
  final int sellEnd;
  @override
  final int buyBegin;
  @override
  final int buyEnd;

  @override
  String toString() {
    return 'MarketOrderParam(tradeToken: $tradeToken, quoteToken: $quoteToken, sellBegin: $sellBegin, sellEnd: $sellEnd, buyBegin: $buyBegin, buyEnd: $buyEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketOrderParamsImpl &&
            (identical(other.tradeToken, tradeToken) ||
                other.tradeToken == tradeToken) &&
            (identical(other.quoteToken, quoteToken) ||
                other.quoteToken == quoteToken) &&
            (identical(other.sellBegin, sellBegin) ||
                other.sellBegin == sellBegin) &&
            (identical(other.sellEnd, sellEnd) || other.sellEnd == sellEnd) &&
            (identical(other.buyBegin, buyBegin) ||
                other.buyBegin == buyBegin) &&
            (identical(other.buyEnd, buyEnd) || other.buyEnd == buyEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tradeToken, quoteToken,
      sellBegin, sellEnd, buyBegin, buyEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketOrderParamsImplCopyWith<_$MarketOrderParamsImpl> get copyWith =>
      __$$MarketOrderParamsImplCopyWithImpl<_$MarketOrderParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketOrderParamsImplToJson(
      this,
    );
  }
}

abstract class _MarketOrderParams implements MarketOrderParam {
  const factory _MarketOrderParams(
      {required final Token tradeToken,
      required final Token quoteToken,
      required final int sellBegin,
      required final int sellEnd,
      required final int buyBegin,
      required final int buyEnd}) = _$MarketOrderParamsImpl;

  factory _MarketOrderParams.fromJson(Map<String, dynamic> json) =
      _$MarketOrderParamsImpl.fromJson;

  @override
  Token get tradeToken;
  @override
  Token get quoteToken;
  @override
  int get sellBegin;
  @override
  int get sellEnd;
  @override
  int get buyBegin;
  @override
  int get buyEnd;
  @override
  @JsonKey(ignore: true)
  _$$MarketOrderParamsImplCopyWith<_$MarketOrderParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RestingOrder _$RestingOrderFromJson(Map<String, dynamic> json) {
  return _RestingOrder.fromJson(json);
}

/// @nodoc
mixin _$RestingOrder {
  String get address => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get tradePair => throw _privateConstructorUsedError;
  Decimal get amount => throw _privateConstructorUsedError;
  Decimal get quantity => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  OrderSide get side => throw _privateConstructorUsedError;
  int get startTimestamp => throw _privateConstructorUsedError;
  int get endTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestingOrderCopyWith<RestingOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestingOrderCopyWith<$Res> {
  factory $RestingOrderCopyWith(
          RestingOrder value, $Res Function(RestingOrder) then) =
      _$RestingOrderCopyWithImpl<$Res, RestingOrder>;
  @useResult
  $Res call(
      {String address,
      String orderId,
      String tradePair,
      Decimal amount,
      Decimal quantity,
      Decimal price,
      OrderSide side,
      int startTimestamp,
      int endTimestamp});
}

/// @nodoc
class _$RestingOrderCopyWithImpl<$Res, $Val extends RestingOrder>
    implements $RestingOrderCopyWith<$Res> {
  _$RestingOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? orderId = null,
    Object? tradePair = null,
    Object? amount = null,
    Object? quantity = null,
    Object? price = null,
    Object? side = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestingOrderImplCopyWith<$Res>
    implements $RestingOrderCopyWith<$Res> {
  factory _$$RestingOrderImplCopyWith(
          _$RestingOrderImpl value, $Res Function(_$RestingOrderImpl) then) =
      __$$RestingOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String orderId,
      String tradePair,
      Decimal amount,
      Decimal quantity,
      Decimal price,
      OrderSide side,
      int startTimestamp,
      int endTimestamp});
}

/// @nodoc
class __$$RestingOrderImplCopyWithImpl<$Res>
    extends _$RestingOrderCopyWithImpl<$Res, _$RestingOrderImpl>
    implements _$$RestingOrderImplCopyWith<$Res> {
  __$$RestingOrderImplCopyWithImpl(
      _$RestingOrderImpl _value, $Res Function(_$RestingOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? orderId = null,
    Object? tradePair = null,
    Object? amount = null,
    Object? quantity = null,
    Object? price = null,
    Object? side = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
  }) {
    return _then(_$RestingOrderImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestingOrderImpl implements _RestingOrder {
  const _$RestingOrderImpl(
      {required this.address,
      required this.orderId,
      required this.tradePair,
      required this.amount,
      required this.quantity,
      required this.price,
      required this.side,
      required this.startTimestamp,
      required this.endTimestamp});

  factory _$RestingOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestingOrderImplFromJson(json);

  @override
  final String address;
  @override
  final String orderId;
  @override
  final String tradePair;
  @override
  final Decimal amount;
  @override
  final Decimal quantity;
  @override
  final Decimal price;
  @override
  final OrderSide side;
  @override
  final int startTimestamp;
  @override
  final int endTimestamp;

  @override
  String toString() {
    return 'RestingOrder(address: $address, orderId: $orderId, tradePair: $tradePair, amount: $amount, quantity: $quantity, price: $price, side: $side, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestingOrderImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.tradePair, tradePair) ||
                other.tradePair == tradePair) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, orderId, tradePair,
      amount, quantity, price, side, startTimestamp, endTimestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestingOrderImplCopyWith<_$RestingOrderImpl> get copyWith =>
      __$$RestingOrderImplCopyWithImpl<_$RestingOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestingOrderImplToJson(
      this,
    );
  }
}

abstract class _RestingOrder implements RestingOrder {
  const factory _RestingOrder(
      {required final String address,
      required final String orderId,
      required final String tradePair,
      required final Decimal amount,
      required final Decimal quantity,
      required final Decimal price,
      required final OrderSide side,
      required final int startTimestamp,
      required final int endTimestamp}) = _$RestingOrderImpl;

  factory _RestingOrder.fromJson(Map<String, dynamic> json) =
      _$RestingOrderImpl.fromJson;

  @override
  String get address;
  @override
  String get orderId;
  @override
  String get tradePair;
  @override
  Decimal get amount;
  @override
  Decimal get quantity;
  @override
  Decimal get price;
  @override
  OrderSide get side;
  @override
  int get startTimestamp;
  @override
  int get endTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$RestingOrderImplCopyWith<_$RestingOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserTrade _$UserTradeFromJson(Map<String, dynamic> json) {
  return _UserTrade.fromJson(json);
}

/// @nodoc
mixin _$UserTrade {
  String get address => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get blockHash => throw _privateConstructorUsedError;
  String get tradePair => throw _privateConstructorUsedError;
  Decimal get amount => throw _privateConstructorUsedError;
  Decimal get quantity => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  OrderSide get orderSide => throw _privateConstructorUsedError;
  TraderSide get traderSide => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTradeCopyWith<UserTrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTradeCopyWith<$Res> {
  factory $UserTradeCopyWith(UserTrade value, $Res Function(UserTrade) then) =
      _$UserTradeCopyWithImpl<$Res, UserTrade>;
  @useResult
  $Res call(
      {String address,
      String orderId,
      String blockHash,
      String tradePair,
      Decimal amount,
      Decimal quantity,
      Decimal price,
      OrderSide orderSide,
      TraderSide traderSide,
      int timestamp});
}

/// @nodoc
class _$UserTradeCopyWithImpl<$Res, $Val extends UserTrade>
    implements $UserTradeCopyWith<$Res> {
  _$UserTradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? orderId = null,
    Object? blockHash = null,
    Object? tradePair = null,
    Object? amount = null,
    Object? quantity = null,
    Object? price = null,
    Object? orderSide = null,
    Object? traderSide = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      blockHash: null == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      orderSide: null == orderSide
          ? _value.orderSide
          : orderSide // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      traderSide: null == traderSide
          ? _value.traderSide
          : traderSide // ignore: cast_nullable_to_non_nullable
              as TraderSide,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTradeImplCopyWith<$Res>
    implements $UserTradeCopyWith<$Res> {
  factory _$$UserTradeImplCopyWith(
          _$UserTradeImpl value, $Res Function(_$UserTradeImpl) then) =
      __$$UserTradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String orderId,
      String blockHash,
      String tradePair,
      Decimal amount,
      Decimal quantity,
      Decimal price,
      OrderSide orderSide,
      TraderSide traderSide,
      int timestamp});
}

/// @nodoc
class __$$UserTradeImplCopyWithImpl<$Res>
    extends _$UserTradeCopyWithImpl<$Res, _$UserTradeImpl>
    implements _$$UserTradeImplCopyWith<$Res> {
  __$$UserTradeImplCopyWithImpl(
      _$UserTradeImpl _value, $Res Function(_$UserTradeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? orderId = null,
    Object? blockHash = null,
    Object? tradePair = null,
    Object? amount = null,
    Object? quantity = null,
    Object? price = null,
    Object? orderSide = null,
    Object? traderSide = null,
    Object? timestamp = null,
  }) {
    return _then(_$UserTradeImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      blockHash: null == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String,
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Decimal,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      orderSide: null == orderSide
          ? _value.orderSide
          : orderSide // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      traderSide: null == traderSide
          ? _value.traderSide
          : traderSide // ignore: cast_nullable_to_non_nullable
              as TraderSide,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTradeImpl implements _UserTrade {
  const _$UserTradeImpl(
      {required this.address,
      required this.orderId,
      required this.blockHash,
      required this.tradePair,
      required this.amount,
      required this.quantity,
      required this.price,
      required this.orderSide,
      required this.traderSide,
      required this.timestamp});

  factory _$UserTradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTradeImplFromJson(json);

  @override
  final String address;
  @override
  final String orderId;
  @override
  final String blockHash;
  @override
  final String tradePair;
  @override
  final Decimal amount;
  @override
  final Decimal quantity;
  @override
  final Decimal price;
  @override
  final OrderSide orderSide;
  @override
  final TraderSide traderSide;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'UserTrade(address: $address, orderId: $orderId, blockHash: $blockHash, tradePair: $tradePair, amount: $amount, quantity: $quantity, price: $price, orderSide: $orderSide, traderSide: $traderSide, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTradeImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            (identical(other.tradePair, tradePair) ||
                other.tradePair == tradePair) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.orderSide, orderSide) ||
                other.orderSide == orderSide) &&
            (identical(other.traderSide, traderSide) ||
                other.traderSide == traderSide) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, orderId, blockHash,
      tradePair, amount, quantity, price, orderSide, traderSide, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTradeImplCopyWith<_$UserTradeImpl> get copyWith =>
      __$$UserTradeImplCopyWithImpl<_$UserTradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTradeImplToJson(
      this,
    );
  }
}

abstract class _UserTrade implements UserTrade {
  const factory _UserTrade(
      {required final String address,
      required final String orderId,
      required final String blockHash,
      required final String tradePair,
      required final Decimal amount,
      required final Decimal quantity,
      required final Decimal price,
      required final OrderSide orderSide,
      required final TraderSide traderSide,
      required final int timestamp}) = _$UserTradeImpl;

  factory _UserTrade.fromJson(Map<String, dynamic> json) =
      _$UserTradeImpl.fromJson;

  @override
  String get address;
  @override
  String get orderId;
  @override
  String get blockHash;
  @override
  String get tradePair;
  @override
  Decimal get amount;
  @override
  Decimal get quantity;
  @override
  Decimal get price;
  @override
  OrderSide get orderSide;
  @override
  TraderSide get traderSide;
  @override
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$UserTradeImplCopyWith<_$UserTradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardsConfig _$RewardsConfigFromJson(Map<String, dynamic> json) {
  return _RewardsConfig.fromJson(json);
}

/// @nodoc
mixin _$RewardsConfig {
  String? get seedPhrase => throw _privateConstructorUsedError;
  Token get rewardToken => throw _privateConstructorUsedError;
  Decimal get tradingReward => throw _privateConstructorUsedError;
  Decimal get limitOrderReward => throw _privateConstructorUsedError;
  Decimal get orderDistanceThreshold => throw _privateConstructorUsedError;
  String get tradingPair => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsConfigCopyWith<RewardsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsConfigCopyWith<$Res> {
  factory $RewardsConfigCopyWith(
          RewardsConfig value, $Res Function(RewardsConfig) then) =
      _$RewardsConfigCopyWithImpl<$Res, RewardsConfig>;
  @useResult
  $Res call(
      {String? seedPhrase,
      Token rewardToken,
      Decimal tradingReward,
      Decimal limitOrderReward,
      Decimal orderDistanceThreshold,
      String tradingPair});

  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class _$RewardsConfigCopyWithImpl<$Res, $Val extends RewardsConfig>
    implements $RewardsConfigCopyWith<$Res> {
  _$RewardsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = freezed,
    Object? rewardToken = null,
    Object? tradingReward = null,
    Object? limitOrderReward = null,
    Object? orderDistanceThreshold = null,
    Object? tradingPair = null,
  }) {
    return _then(_value.copyWith(
      seedPhrase: freezed == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      rewardToken: null == rewardToken
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrderReward: null == limitOrderReward
          ? _value.limitOrderReward
          : limitOrderReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      orderDistanceThreshold: null == orderDistanceThreshold
          ? _value.orderDistanceThreshold
          : orderDistanceThreshold // ignore: cast_nullable_to_non_nullable
              as Decimal,
      tradingPair: null == tradingPair
          ? _value.tradingPair
          : tradingPair // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get rewardToken {
    return $TokenCopyWith<$Res>(_value.rewardToken, (value) {
      return _then(_value.copyWith(rewardToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardsConfigImplCopyWith<$Res>
    implements $RewardsConfigCopyWith<$Res> {
  factory _$$RewardsConfigImplCopyWith(
          _$RewardsConfigImpl value, $Res Function(_$RewardsConfigImpl) then) =
      __$$RewardsConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? seedPhrase,
      Token rewardToken,
      Decimal tradingReward,
      Decimal limitOrderReward,
      Decimal orderDistanceThreshold,
      String tradingPair});

  @override
  $TokenCopyWith<$Res> get rewardToken;
}

/// @nodoc
class __$$RewardsConfigImplCopyWithImpl<$Res>
    extends _$RewardsConfigCopyWithImpl<$Res, _$RewardsConfigImpl>
    implements _$$RewardsConfigImplCopyWith<$Res> {
  __$$RewardsConfigImplCopyWithImpl(
      _$RewardsConfigImpl _value, $Res Function(_$RewardsConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = freezed,
    Object? rewardToken = null,
    Object? tradingReward = null,
    Object? limitOrderReward = null,
    Object? orderDistanceThreshold = null,
    Object? tradingPair = null,
  }) {
    return _then(_$RewardsConfigImpl(
      seedPhrase: freezed == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      rewardToken: null == rewardToken
          ? _value.rewardToken
          : rewardToken // ignore: cast_nullable_to_non_nullable
              as Token,
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrderReward: null == limitOrderReward
          ? _value.limitOrderReward
          : limitOrderReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      orderDistanceThreshold: null == orderDistanceThreshold
          ? _value.orderDistanceThreshold
          : orderDistanceThreshold // ignore: cast_nullable_to_non_nullable
              as Decimal,
      tradingPair: null == tradingPair
          ? _value.tradingPair
          : tradingPair // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: true)
class _$RewardsConfigImpl implements _RewardsConfig {
  const _$RewardsConfigImpl(
      {this.seedPhrase,
      required this.rewardToken,
      required this.tradingReward,
      required this.limitOrderReward,
      required this.orderDistanceThreshold,
      required this.tradingPair});

  factory _$RewardsConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardsConfigImplFromJson(json);

  @override
  final String? seedPhrase;
  @override
  final Token rewardToken;
  @override
  final Decimal tradingReward;
  @override
  final Decimal limitOrderReward;
  @override
  final Decimal orderDistanceThreshold;
  @override
  final String tradingPair;

  @override
  String toString() {
    return 'RewardsConfig(seedPhrase: $seedPhrase, rewardToken: $rewardToken, tradingReward: $tradingReward, limitOrderReward: $limitOrderReward, orderDistanceThreshold: $orderDistanceThreshold, tradingPair: $tradingPair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsConfigImpl &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase) &&
            (identical(other.rewardToken, rewardToken) ||
                other.rewardToken == rewardToken) &&
            (identical(other.tradingReward, tradingReward) ||
                other.tradingReward == tradingReward) &&
            (identical(other.limitOrderReward, limitOrderReward) ||
                other.limitOrderReward == limitOrderReward) &&
            (identical(other.orderDistanceThreshold, orderDistanceThreshold) ||
                other.orderDistanceThreshold == orderDistanceThreshold) &&
            (identical(other.tradingPair, tradingPair) ||
                other.tradingPair == tradingPair));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seedPhrase, rewardToken,
      tradingReward, limitOrderReward, orderDistanceThreshold, tradingPair);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsConfigImplCopyWith<_$RewardsConfigImpl> get copyWith =>
      __$$RewardsConfigImplCopyWithImpl<_$RewardsConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardsConfigImplToJson(
      this,
    );
  }
}

abstract class _RewardsConfig implements RewardsConfig {
  const factory _RewardsConfig(
      {final String? seedPhrase,
      required final Token rewardToken,
      required final Decimal tradingReward,
      required final Decimal limitOrderReward,
      required final Decimal orderDistanceThreshold,
      required final String tradingPair}) = _$RewardsConfigImpl;

  factory _RewardsConfig.fromJson(Map<String, dynamic> json) =
      _$RewardsConfigImpl.fromJson;

  @override
  String? get seedPhrase;
  @override
  Token get rewardToken;
  @override
  Decimal get tradingReward;
  @override
  Decimal get limitOrderReward;
  @override
  Decimal get orderDistanceThreshold;
  @override
  String get tradingPair;
  @override
  @JsonKey(ignore: true)
  _$$RewardsConfigImplCopyWith<_$RewardsConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardsTotal _$RewardsTotalFromJson(Map<String, dynamic> json) {
  return _RewardsTotal.fromJson(json);
}

/// @nodoc
mixin _$RewardsTotal {
  Decimal get tradingReward => throw _privateConstructorUsedError;
  Decimal get limitOrderReward => throw _privateConstructorUsedError;
  Decimal get totalReward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsTotalCopyWith<RewardsTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsTotalCopyWith<$Res> {
  factory $RewardsTotalCopyWith(
          RewardsTotal value, $Res Function(RewardsTotal) then) =
      _$RewardsTotalCopyWithImpl<$Res, RewardsTotal>;
  @useResult
  $Res call(
      {Decimal tradingReward, Decimal limitOrderReward, Decimal totalReward});
}

/// @nodoc
class _$RewardsTotalCopyWithImpl<$Res, $Val extends RewardsTotal>
    implements $RewardsTotalCopyWith<$Res> {
  _$RewardsTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingReward = null,
    Object? limitOrderReward = null,
    Object? totalReward = null,
  }) {
    return _then(_value.copyWith(
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrderReward: null == limitOrderReward
          ? _value.limitOrderReward
          : limitOrderReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardsTotalImplCopyWith<$Res>
    implements $RewardsTotalCopyWith<$Res> {
  factory _$$RewardsTotalImplCopyWith(
          _$RewardsTotalImpl value, $Res Function(_$RewardsTotalImpl) then) =
      __$$RewardsTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Decimal tradingReward, Decimal limitOrderReward, Decimal totalReward});
}

/// @nodoc
class __$$RewardsTotalImplCopyWithImpl<$Res>
    extends _$RewardsTotalCopyWithImpl<$Res, _$RewardsTotalImpl>
    implements _$$RewardsTotalImplCopyWith<$Res> {
  __$$RewardsTotalImplCopyWithImpl(
      _$RewardsTotalImpl _value, $Res Function(_$RewardsTotalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradingReward = null,
    Object? limitOrderReward = null,
    Object? totalReward = null,
  }) {
    return _then(_$RewardsTotalImpl(
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrderReward: null == limitOrderReward
          ? _value.limitOrderReward
          : limitOrderReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardsTotalImpl implements _RewardsTotal {
  const _$RewardsTotalImpl(
      {required this.tradingReward,
      required this.limitOrderReward,
      required this.totalReward});

  factory _$RewardsTotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardsTotalImplFromJson(json);

  @override
  final Decimal tradingReward;
  @override
  final Decimal limitOrderReward;
  @override
  final Decimal totalReward;

  @override
  String toString() {
    return 'RewardsTotal(tradingReward: $tradingReward, limitOrderReward: $limitOrderReward, totalReward: $totalReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsTotalImpl &&
            (identical(other.tradingReward, tradingReward) ||
                other.tradingReward == tradingReward) &&
            (identical(other.limitOrderReward, limitOrderReward) ||
                other.limitOrderReward == limitOrderReward) &&
            (identical(other.totalReward, totalReward) ||
                other.totalReward == totalReward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tradingReward, limitOrderReward, totalReward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsTotalImplCopyWith<_$RewardsTotalImpl> get copyWith =>
      __$$RewardsTotalImplCopyWithImpl<_$RewardsTotalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardsTotalImplToJson(
      this,
    );
  }
}

abstract class _RewardsTotal implements RewardsTotal {
  const factory _RewardsTotal(
      {required final Decimal tradingReward,
      required final Decimal limitOrderReward,
      required final Decimal totalReward}) = _$RewardsTotalImpl;

  factory _RewardsTotal.fromJson(Map<String, dynamic> json) =
      _$RewardsTotalImpl.fromJson;

  @override
  Decimal get tradingReward;
  @override
  Decimal get limitOrderReward;
  @override
  Decimal get totalReward;
  @override
  @JsonKey(ignore: true)
  _$$RewardsTotalImplCopyWith<_$RewardsTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) {
  return _TimeRange.fromJson(json);
}

/// @nodoc
mixin _$TimeRange {
  @JsonKey(name: 'stime')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'etime')
  DateTime get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeRangeCopyWith<TimeRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeCopyWith<$Res> {
  factory $TimeRangeCopyWith(TimeRange value, $Res Function(TimeRange) then) =
      _$TimeRangeCopyWithImpl<$Res, TimeRange>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stime') DateTime startTime,
      @JsonKey(name: 'etime') DateTime endTime});
}

/// @nodoc
class _$TimeRangeCopyWithImpl<$Res, $Val extends TimeRange>
    implements $TimeRangeCopyWith<$Res> {
  _$TimeRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeRangeImplCopyWith<$Res>
    implements $TimeRangeCopyWith<$Res> {
  factory _$$TimeRangeImplCopyWith(
          _$TimeRangeImpl value, $Res Function(_$TimeRangeImpl) then) =
      __$$TimeRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stime') DateTime startTime,
      @JsonKey(name: 'etime') DateTime endTime});
}

/// @nodoc
class __$$TimeRangeImplCopyWithImpl<$Res>
    extends _$TimeRangeCopyWithImpl<$Res, _$TimeRangeImpl>
    implements _$$TimeRangeImplCopyWith<$Res> {
  __$$TimeRangeImplCopyWithImpl(
      _$TimeRangeImpl _value, $Res Function(_$TimeRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$TimeRangeImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeRangeImpl extends _TimeRange {
  const _$TimeRangeImpl(
      {@JsonKey(name: 'stime') required this.startTime,
      @JsonKey(name: 'etime') required this.endTime})
      : super._();

  factory _$TimeRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeRangeImplFromJson(json);

  @override
  @JsonKey(name: 'stime')
  final DateTime startTime;
  @override
  @JsonKey(name: 'etime')
  final DateTime endTime;

  @override
  String toString() {
    return 'TimeRange(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeRangeImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeRangeImplCopyWith<_$TimeRangeImpl> get copyWith =>
      __$$TimeRangeImplCopyWithImpl<_$TimeRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeRangeImplToJson(
      this,
    );
  }
}

abstract class _TimeRange extends TimeRange {
  const factory _TimeRange(
          {@JsonKey(name: 'stime') required final DateTime startTime,
          @JsonKey(name: 'etime') required final DateTime endTime}) =
      _$TimeRangeImpl;
  const _TimeRange._() : super._();

  factory _TimeRange.fromJson(Map<String, dynamic> json) =
      _$TimeRangeImpl.fromJson;

  @override
  @JsonKey(name: 'stime')
  DateTime get startTime;
  @override
  @JsonKey(name: 'etime')
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$TimeRangeImplCopyWith<_$TimeRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cycle _$CycleFromJson(Map<String, dynamic> json) {
  return _Cycle.fromJson(json);
}

/// @nodoc
mixin _$Cycle {
  int get index => throw _privateConstructorUsedError;
  CycleType get type => throw _privateConstructorUsedError;
  TimeRange get timeRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CycleCopyWith<Cycle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CycleCopyWith<$Res> {
  factory $CycleCopyWith(Cycle value, $Res Function(Cycle) then) =
      _$CycleCopyWithImpl<$Res, Cycle>;
  @useResult
  $Res call({int index, CycleType type, TimeRange timeRange});

  $TimeRangeCopyWith<$Res> get timeRange;
}

/// @nodoc
class _$CycleCopyWithImpl<$Res, $Val extends Cycle>
    implements $CycleCopyWith<$Res> {
  _$CycleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? timeRange = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CycleType,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as TimeRange,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeRangeCopyWith<$Res> get timeRange {
    return $TimeRangeCopyWith<$Res>(_value.timeRange, (value) {
      return _then(_value.copyWith(timeRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CycleImplCopyWith<$Res> implements $CycleCopyWith<$Res> {
  factory _$$CycleImplCopyWith(
          _$CycleImpl value, $Res Function(_$CycleImpl) then) =
      __$$CycleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, CycleType type, TimeRange timeRange});

  @override
  $TimeRangeCopyWith<$Res> get timeRange;
}

/// @nodoc
class __$$CycleImplCopyWithImpl<$Res>
    extends _$CycleCopyWithImpl<$Res, _$CycleImpl>
    implements _$$CycleImplCopyWith<$Res> {
  __$$CycleImplCopyWithImpl(
      _$CycleImpl _value, $Res Function(_$CycleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? timeRange = null,
  }) {
    return _then(_$CycleImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CycleType,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as TimeRange,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CycleImpl extends _Cycle {
  const _$CycleImpl(
      {required this.index, required this.type, required this.timeRange})
      : super._();

  factory _$CycleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CycleImplFromJson(json);

  @override
  final int index;
  @override
  final CycleType type;
  @override
  final TimeRange timeRange;

  @override
  String toString() {
    return 'Cycle(index: $index, type: $type, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CycleImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timeRange, timeRange) ||
                other.timeRange == timeRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, type, timeRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CycleImplCopyWith<_$CycleImpl> get copyWith =>
      __$$CycleImplCopyWithImpl<_$CycleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CycleImplToJson(
      this,
    );
  }
}

abstract class _Cycle extends Cycle {
  const factory _Cycle(
      {required final int index,
      required final CycleType type,
      required final TimeRange timeRange}) = _$CycleImpl;
  const _Cycle._() : super._();

  factory _Cycle.fromJson(Map<String, dynamic> json) = _$CycleImpl.fromJson;

  @override
  int get index;
  @override
  CycleType get type;
  @override
  TimeRange get timeRange;
  @override
  @JsonKey(ignore: true)
  _$$CycleImplCopyWith<_$CycleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketResults _$MarketResultsFromJson(Map<String, dynamic> json) {
  return _MarketResults.fromJson(json);
}

/// @nodoc
mixin _$MarketResults {
  TradePair get tradePair => throw _privateConstructorUsedError;
  List<UserTrade> get userTrades => throw _privateConstructorUsedError;
  List<RestingOrder> get restingOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketResultsCopyWith<MarketResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketResultsCopyWith<$Res> {
  factory $MarketResultsCopyWith(
          MarketResults value, $Res Function(MarketResults) then) =
      _$MarketResultsCopyWithImpl<$Res, MarketResults>;
  @useResult
  $Res call(
      {TradePair tradePair,
      List<UserTrade> userTrades,
      List<RestingOrder> restingOrders});

  $TradePairCopyWith<$Res> get tradePair;
}

/// @nodoc
class _$MarketResultsCopyWithImpl<$Res, $Val extends MarketResults>
    implements $MarketResultsCopyWith<$Res> {
  _$MarketResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradePair = null,
    Object? userTrades = null,
    Object? restingOrders = null,
  }) {
    return _then(_value.copyWith(
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as TradePair,
      userTrades: null == userTrades
          ? _value.userTrades
          : userTrades // ignore: cast_nullable_to_non_nullable
              as List<UserTrade>,
      restingOrders: null == restingOrders
          ? _value.restingOrders
          : restingOrders // ignore: cast_nullable_to_non_nullable
              as List<RestingOrder>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TradePairCopyWith<$Res> get tradePair {
    return $TradePairCopyWith<$Res>(_value.tradePair, (value) {
      return _then(_value.copyWith(tradePair: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketResultsImplCopyWith<$Res>
    implements $MarketResultsCopyWith<$Res> {
  factory _$$MarketResultsImplCopyWith(
          _$MarketResultsImpl value, $Res Function(_$MarketResultsImpl) then) =
      __$$MarketResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TradePair tradePair,
      List<UserTrade> userTrades,
      List<RestingOrder> restingOrders});

  @override
  $TradePairCopyWith<$Res> get tradePair;
}

/// @nodoc
class __$$MarketResultsImplCopyWithImpl<$Res>
    extends _$MarketResultsCopyWithImpl<$Res, _$MarketResultsImpl>
    implements _$$MarketResultsImplCopyWith<$Res> {
  __$$MarketResultsImplCopyWithImpl(
      _$MarketResultsImpl _value, $Res Function(_$MarketResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradePair = null,
    Object? userTrades = null,
    Object? restingOrders = null,
  }) {
    return _then(_$MarketResultsImpl(
      tradePair: null == tradePair
          ? _value.tradePair
          : tradePair // ignore: cast_nullable_to_non_nullable
              as TradePair,
      userTrades: null == userTrades
          ? _value._userTrades
          : userTrades // ignore: cast_nullable_to_non_nullable
              as List<UserTrade>,
      restingOrders: null == restingOrders
          ? _value._restingOrders
          : restingOrders // ignore: cast_nullable_to_non_nullable
              as List<RestingOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketResultsImpl implements _MarketResults {
  const _$MarketResultsImpl(
      {required this.tradePair,
      required final List<UserTrade> userTrades,
      required final List<RestingOrder> restingOrders})
      : _userTrades = userTrades,
        _restingOrders = restingOrders;

  factory _$MarketResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketResultsImplFromJson(json);

  @override
  final TradePair tradePair;
  final List<UserTrade> _userTrades;
  @override
  List<UserTrade> get userTrades {
    if (_userTrades is EqualUnmodifiableListView) return _userTrades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userTrades);
  }

  final List<RestingOrder> _restingOrders;
  @override
  List<RestingOrder> get restingOrders {
    if (_restingOrders is EqualUnmodifiableListView) return _restingOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restingOrders);
  }

  @override
  String toString() {
    return 'MarketResults(tradePair: $tradePair, userTrades: $userTrades, restingOrders: $restingOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketResultsImpl &&
            (identical(other.tradePair, tradePair) ||
                other.tradePair == tradePair) &&
            const DeepCollectionEquality()
                .equals(other._userTrades, _userTrades) &&
            const DeepCollectionEquality()
                .equals(other._restingOrders, _restingOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tradePair,
      const DeepCollectionEquality().hash(_userTrades),
      const DeepCollectionEquality().hash(_restingOrders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketResultsImplCopyWith<_$MarketResultsImpl> get copyWith =>
      __$$MarketResultsImplCopyWithImpl<_$MarketResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketResultsImplToJson(
      this,
    );
  }
}

abstract class _MarketResults implements MarketResults {
  const factory _MarketResults(
      {required final TradePair tradePair,
      required final List<UserTrade> userTrades,
      required final List<RestingOrder> restingOrders}) = _$MarketResultsImpl;

  factory _MarketResults.fromJson(Map<String, dynamic> json) =
      _$MarketResultsImpl.fromJson;

  @override
  TradePair get tradePair;
  @override
  List<UserTrade> get userTrades;
  @override
  List<RestingOrder> get restingOrders;
  @override
  @JsonKey(ignore: true)
  _$$MarketResultsImplCopyWith<_$MarketResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScanResults _$ScanResultsFromJson(Map<String, dynamic> json) {
  return _ScanResults.fromJson(json);
}

/// @nodoc
mixin _$ScanResults {
  Cycle get cycle => throw _privateConstructorUsedError;
  Map<String, MarketResults> get markets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanResultsCopyWith<ScanResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanResultsCopyWith<$Res> {
  factory $ScanResultsCopyWith(
          ScanResults value, $Res Function(ScanResults) then) =
      _$ScanResultsCopyWithImpl<$Res, ScanResults>;
  @useResult
  $Res call({Cycle cycle, Map<String, MarketResults> markets});

  $CycleCopyWith<$Res> get cycle;
}

/// @nodoc
class _$ScanResultsCopyWithImpl<$Res, $Val extends ScanResults>
    implements $ScanResultsCopyWith<$Res> {
  _$ScanResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cycle = null,
    Object? markets = null,
  }) {
    return _then(_value.copyWith(
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as Cycle,
      markets: null == markets
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as Map<String, MarketResults>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CycleCopyWith<$Res> get cycle {
    return $CycleCopyWith<$Res>(_value.cycle, (value) {
      return _then(_value.copyWith(cycle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanResultsImplCopyWith<$Res>
    implements $ScanResultsCopyWith<$Res> {
  factory _$$ScanResultsImplCopyWith(
          _$ScanResultsImpl value, $Res Function(_$ScanResultsImpl) then) =
      __$$ScanResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cycle cycle, Map<String, MarketResults> markets});

  @override
  $CycleCopyWith<$Res> get cycle;
}

/// @nodoc
class __$$ScanResultsImplCopyWithImpl<$Res>
    extends _$ScanResultsCopyWithImpl<$Res, _$ScanResultsImpl>
    implements _$$ScanResultsImplCopyWith<$Res> {
  __$$ScanResultsImplCopyWithImpl(
      _$ScanResultsImpl _value, $Res Function(_$ScanResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cycle = null,
    Object? markets = null,
  }) {
    return _then(_$ScanResultsImpl(
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as Cycle,
      markets: null == markets
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as Map<String, MarketResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanResultsImpl implements _ScanResults {
  const _$ScanResultsImpl(
      {required this.cycle, required final Map<String, MarketResults> markets})
      : _markets = markets;

  factory _$ScanResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanResultsImplFromJson(json);

  @override
  final Cycle cycle;
  final Map<String, MarketResults> _markets;
  @override
  Map<String, MarketResults> get markets {
    if (_markets is EqualUnmodifiableMapView) return _markets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markets);
  }

  @override
  String toString() {
    return 'ScanResults(cycle: $cycle, markets: $markets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanResultsImpl &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            const DeepCollectionEquality().equals(other._markets, _markets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cycle, const DeepCollectionEquality().hash(_markets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanResultsImplCopyWith<_$ScanResultsImpl> get copyWith =>
      __$$ScanResultsImplCopyWithImpl<_$ScanResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanResultsImplToJson(
      this,
    );
  }
}

abstract class _ScanResults implements ScanResults {
  const factory _ScanResults(
      {required final Cycle cycle,
      required final Map<String, MarketResults> markets}) = _$ScanResultsImpl;

  factory _ScanResults.fromJson(Map<String, dynamic> json) =
      _$ScanResultsImpl.fromJson;

  @override
  Cycle get cycle;
  @override
  Map<String, MarketResults> get markets;
  @override
  @JsonKey(ignore: true)
  _$$ScanResultsImplCopyWith<_$ScanResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestingOrderStats {
  RestingOrder get restingOrder => throw _privateConstructorUsedError;
  int get deltaTimestamp => throw _privateConstructorUsedError;
  set deltaTimestamp(int value) => throw _privateConstructorUsedError;
  int get qualifyingTimeLength => throw _privateConstructorUsedError;
  set qualifyingTimeLength(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestingOrderStatsCopyWith<RestingOrderStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestingOrderStatsCopyWith<$Res> {
  factory $RestingOrderStatsCopyWith(
          RestingOrderStats value, $Res Function(RestingOrderStats) then) =
      _$RestingOrderStatsCopyWithImpl<$Res, RestingOrderStats>;
  @useResult
  $Res call(
      {RestingOrder restingOrder,
      int deltaTimestamp,
      int qualifyingTimeLength});

  $RestingOrderCopyWith<$Res> get restingOrder;
}

/// @nodoc
class _$RestingOrderStatsCopyWithImpl<$Res, $Val extends RestingOrderStats>
    implements $RestingOrderStatsCopyWith<$Res> {
  _$RestingOrderStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restingOrder = null,
    Object? deltaTimestamp = null,
    Object? qualifyingTimeLength = null,
  }) {
    return _then(_value.copyWith(
      restingOrder: null == restingOrder
          ? _value.restingOrder
          : restingOrder // ignore: cast_nullable_to_non_nullable
              as RestingOrder,
      deltaTimestamp: null == deltaTimestamp
          ? _value.deltaTimestamp
          : deltaTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      qualifyingTimeLength: null == qualifyingTimeLength
          ? _value.qualifyingTimeLength
          : qualifyingTimeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestingOrderCopyWith<$Res> get restingOrder {
    return $RestingOrderCopyWith<$Res>(_value.restingOrder, (value) {
      return _then(_value.copyWith(restingOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestingOrderStatsImplCopyWith<$Res>
    implements $RestingOrderStatsCopyWith<$Res> {
  factory _$$RestingOrderStatsImplCopyWith(_$RestingOrderStatsImpl value,
          $Res Function(_$RestingOrderStatsImpl) then) =
      __$$RestingOrderStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RestingOrder restingOrder,
      int deltaTimestamp,
      int qualifyingTimeLength});

  @override
  $RestingOrderCopyWith<$Res> get restingOrder;
}

/// @nodoc
class __$$RestingOrderStatsImplCopyWithImpl<$Res>
    extends _$RestingOrderStatsCopyWithImpl<$Res, _$RestingOrderStatsImpl>
    implements _$$RestingOrderStatsImplCopyWith<$Res> {
  __$$RestingOrderStatsImplCopyWithImpl(_$RestingOrderStatsImpl _value,
      $Res Function(_$RestingOrderStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restingOrder = null,
    Object? deltaTimestamp = null,
    Object? qualifyingTimeLength = null,
  }) {
    return _then(_$RestingOrderStatsImpl(
      restingOrder: null == restingOrder
          ? _value.restingOrder
          : restingOrder // ignore: cast_nullable_to_non_nullable
              as RestingOrder,
      deltaTimestamp: null == deltaTimestamp
          ? _value.deltaTimestamp
          : deltaTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      qualifyingTimeLength: null == qualifyingTimeLength
          ? _value.qualifyingTimeLength
          : qualifyingTimeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RestingOrderStatsImpl implements _RestingOrderStats {
  _$RestingOrderStatsImpl(
      {required this.restingOrder,
      required this.deltaTimestamp,
      required this.qualifyingTimeLength});

  @override
  final RestingOrder restingOrder;
  @override
  int deltaTimestamp;
  @override
  int qualifyingTimeLength;

  @override
  String toString() {
    return 'RestingOrderStats(restingOrder: $restingOrder, deltaTimestamp: $deltaTimestamp, qualifyingTimeLength: $qualifyingTimeLength)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestingOrderStatsImplCopyWith<_$RestingOrderStatsImpl> get copyWith =>
      __$$RestingOrderStatsImplCopyWithImpl<_$RestingOrderStatsImpl>(
          this, _$identity);
}

abstract class _RestingOrderStats implements RestingOrderStats {
  factory _RestingOrderStats(
      {required final RestingOrder restingOrder,
      required int deltaTimestamp,
      required int qualifyingTimeLength}) = _$RestingOrderStatsImpl;

  @override
  RestingOrder get restingOrder;
  @override
  int get deltaTimestamp;
  set deltaTimestamp(int value);
  @override
  int get qualifyingTimeLength;
  set qualifyingTimeLength(int value);
  @override
  @JsonKey(ignore: true)
  _$$RestingOrderStatsImplCopyWith<_$RestingOrderStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QualifyingOrder {
  RestingOrder get order => throw _privateConstructorUsedError;
  Decimal get weight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QualifyingOrderCopyWith<QualifyingOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualifyingOrderCopyWith<$Res> {
  factory $QualifyingOrderCopyWith(
          QualifyingOrder value, $Res Function(QualifyingOrder) then) =
      _$QualifyingOrderCopyWithImpl<$Res, QualifyingOrder>;
  @useResult
  $Res call({RestingOrder order, Decimal weight});

  $RestingOrderCopyWith<$Res> get order;
}

/// @nodoc
class _$QualifyingOrderCopyWithImpl<$Res, $Val extends QualifyingOrder>
    implements $QualifyingOrderCopyWith<$Res> {
  _$QualifyingOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RestingOrder,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestingOrderCopyWith<$Res> get order {
    return $RestingOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QualifyingOrderImplCopyWith<$Res>
    implements $QualifyingOrderCopyWith<$Res> {
  factory _$$QualifyingOrderImplCopyWith(_$QualifyingOrderImpl value,
          $Res Function(_$QualifyingOrderImpl) then) =
      __$$QualifyingOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RestingOrder order, Decimal weight});

  @override
  $RestingOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$QualifyingOrderImplCopyWithImpl<$Res>
    extends _$QualifyingOrderCopyWithImpl<$Res, _$QualifyingOrderImpl>
    implements _$$QualifyingOrderImplCopyWith<$Res> {
  __$$QualifyingOrderImplCopyWithImpl(
      _$QualifyingOrderImpl _value, $Res Function(_$QualifyingOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? weight = null,
  }) {
    return _then(_$QualifyingOrderImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as RestingOrder,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc

class _$QualifyingOrderImpl extends _QualifyingOrder {
  const _$QualifyingOrderImpl({required this.order, required this.weight})
      : super._();

  @override
  final RestingOrder order;
  @override
  final Decimal weight;

  @override
  String toString() {
    return 'QualifyingOrder(order: $order, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualifyingOrderImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QualifyingOrderImplCopyWith<_$QualifyingOrderImpl> get copyWith =>
      __$$QualifyingOrderImplCopyWithImpl<_$QualifyingOrderImpl>(
          this, _$identity);
}

abstract class _QualifyingOrder extends QualifyingOrder {
  const factory _QualifyingOrder(
      {required final RestingOrder order,
      required final Decimal weight}) = _$QualifyingOrderImpl;
  const _QualifyingOrder._() : super._();

  @override
  RestingOrder get order;
  @override
  Decimal get weight;
  @override
  @JsonKey(ignore: true)
  _$$QualifyingOrderImplCopyWith<_$QualifyingOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReward _$UserRewardFromJson(Map<String, dynamic> json) {
  return _UserReward.fromJson(json);
}

/// @nodoc
mixin _$UserReward {
  String get address => throw _privateConstructorUsedError;
  Decimal get tradingReward => throw _privateConstructorUsedError;
  Decimal get limitOrdersReward => throw _privateConstructorUsedError;
  Decimal get totalReward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRewardCopyWith<UserReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRewardCopyWith<$Res> {
  factory $UserRewardCopyWith(
          UserReward value, $Res Function(UserReward) then) =
      _$UserRewardCopyWithImpl<$Res, UserReward>;
  @useResult
  $Res call(
      {String address,
      Decimal tradingReward,
      Decimal limitOrdersReward,
      Decimal totalReward});
}

/// @nodoc
class _$UserRewardCopyWithImpl<$Res, $Val extends UserReward>
    implements $UserRewardCopyWith<$Res> {
  _$UserRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? tradingReward = null,
    Object? limitOrdersReward = null,
    Object? totalReward = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrdersReward: null == limitOrdersReward
          ? _value.limitOrdersReward
          : limitOrdersReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRewardImplCopyWith<$Res>
    implements $UserRewardCopyWith<$Res> {
  factory _$$UserRewardImplCopyWith(
          _$UserRewardImpl value, $Res Function(_$UserRewardImpl) then) =
      __$$UserRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      Decimal tradingReward,
      Decimal limitOrdersReward,
      Decimal totalReward});
}

/// @nodoc
class __$$UserRewardImplCopyWithImpl<$Res>
    extends _$UserRewardCopyWithImpl<$Res, _$UserRewardImpl>
    implements _$$UserRewardImplCopyWith<$Res> {
  __$$UserRewardImplCopyWithImpl(
      _$UserRewardImpl _value, $Res Function(_$UserRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? tradingReward = null,
    Object? limitOrdersReward = null,
    Object? totalReward = null,
  }) {
    return _then(_$UserRewardImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tradingReward: null == tradingReward
          ? _value.tradingReward
          : tradingReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      limitOrdersReward: null == limitOrdersReward
          ? _value.limitOrdersReward
          : limitOrdersReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
      totalReward: null == totalReward
          ? _value.totalReward
          : totalReward // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRewardImpl implements _UserReward {
  const _$UserRewardImpl(
      {required this.address,
      required this.tradingReward,
      required this.limitOrdersReward,
      required this.totalReward});

  factory _$UserRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRewardImplFromJson(json);

  @override
  final String address;
  @override
  final Decimal tradingReward;
  @override
  final Decimal limitOrdersReward;
  @override
  final Decimal totalReward;

  @override
  String toString() {
    return 'UserReward(address: $address, tradingReward: $tradingReward, limitOrdersReward: $limitOrdersReward, totalReward: $totalReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRewardImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.tradingReward, tradingReward) ||
                other.tradingReward == tradingReward) &&
            (identical(other.limitOrdersReward, limitOrdersReward) ||
                other.limitOrdersReward == limitOrdersReward) &&
            (identical(other.totalReward, totalReward) ||
                other.totalReward == totalReward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address, tradingReward, limitOrdersReward, totalReward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRewardImplCopyWith<_$UserRewardImpl> get copyWith =>
      __$$UserRewardImplCopyWithImpl<_$UserRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRewardImplToJson(
      this,
    );
  }
}

abstract class _UserReward implements UserReward {
  const factory _UserReward(
      {required final String address,
      required final Decimal tradingReward,
      required final Decimal limitOrdersReward,
      required final Decimal totalReward}) = _$UserRewardImpl;

  factory _UserReward.fromJson(Map<String, dynamic> json) =
      _$UserRewardImpl.fromJson;

  @override
  String get address;
  @override
  Decimal get tradingReward;
  @override
  Decimal get limitOrdersReward;
  @override
  Decimal get totalReward;
  @override
  @JsonKey(ignore: true)
  _$$UserRewardImplCopyWith<_$UserRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CycleRewards _$CycleRewardsFromJson(Map<String, dynamic> json) {
  return _CycleRewards.fromJson(json);
}

/// @nodoc
mixin _$CycleRewards {
  Cycle get cycle => throw _privateConstructorUsedError;
  RewardsConfig get config => throw _privateConstructorUsedError;
  RewardsTotal get totalRewards => throw _privateConstructorUsedError;
  List<UserReward> get rewards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CycleRewardsCopyWith<CycleRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CycleRewardsCopyWith<$Res> {
  factory $CycleRewardsCopyWith(
          CycleRewards value, $Res Function(CycleRewards) then) =
      _$CycleRewardsCopyWithImpl<$Res, CycleRewards>;
  @useResult
  $Res call(
      {Cycle cycle,
      RewardsConfig config,
      RewardsTotal totalRewards,
      List<UserReward> rewards});

  $CycleCopyWith<$Res> get cycle;
  $RewardsConfigCopyWith<$Res> get config;
  $RewardsTotalCopyWith<$Res> get totalRewards;
}

/// @nodoc
class _$CycleRewardsCopyWithImpl<$Res, $Val extends CycleRewards>
    implements $CycleRewardsCopyWith<$Res> {
  _$CycleRewardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cycle = null,
    Object? config = null,
    Object? totalRewards = null,
    Object? rewards = null,
  }) {
    return _then(_value.copyWith(
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as Cycle,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as RewardsConfig,
      totalRewards: null == totalRewards
          ? _value.totalRewards
          : totalRewards // ignore: cast_nullable_to_non_nullable
              as RewardsTotal,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<UserReward>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CycleCopyWith<$Res> get cycle {
    return $CycleCopyWith<$Res>(_value.cycle, (value) {
      return _then(_value.copyWith(cycle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsConfigCopyWith<$Res> get config {
    return $RewardsConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsTotalCopyWith<$Res> get totalRewards {
    return $RewardsTotalCopyWith<$Res>(_value.totalRewards, (value) {
      return _then(_value.copyWith(totalRewards: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CycleRewardsImplCopyWith<$Res>
    implements $CycleRewardsCopyWith<$Res> {
  factory _$$CycleRewardsImplCopyWith(
          _$CycleRewardsImpl value, $Res Function(_$CycleRewardsImpl) then) =
      __$$CycleRewardsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Cycle cycle,
      RewardsConfig config,
      RewardsTotal totalRewards,
      List<UserReward> rewards});

  @override
  $CycleCopyWith<$Res> get cycle;
  @override
  $RewardsConfigCopyWith<$Res> get config;
  @override
  $RewardsTotalCopyWith<$Res> get totalRewards;
}

/// @nodoc
class __$$CycleRewardsImplCopyWithImpl<$Res>
    extends _$CycleRewardsCopyWithImpl<$Res, _$CycleRewardsImpl>
    implements _$$CycleRewardsImplCopyWith<$Res> {
  __$$CycleRewardsImplCopyWithImpl(
      _$CycleRewardsImpl _value, $Res Function(_$CycleRewardsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cycle = null,
    Object? config = null,
    Object? totalRewards = null,
    Object? rewards = null,
  }) {
    return _then(_$CycleRewardsImpl(
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as Cycle,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as RewardsConfig,
      totalRewards: null == totalRewards
          ? _value.totalRewards
          : totalRewards // ignore: cast_nullable_to_non_nullable
              as RewardsTotal,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<UserReward>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CycleRewardsImpl implements _CycleRewards {
  const _$CycleRewardsImpl(
      {required this.cycle,
      required this.config,
      required this.totalRewards,
      required final List<UserReward> rewards})
      : _rewards = rewards;

  factory _$CycleRewardsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CycleRewardsImplFromJson(json);

  @override
  final Cycle cycle;
  @override
  final RewardsConfig config;
  @override
  final RewardsTotal totalRewards;
  final List<UserReward> _rewards;
  @override
  List<UserReward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'CycleRewards(cycle: $cycle, config: $config, totalRewards: $totalRewards, rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CycleRewardsImpl &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.totalRewards, totalRewards) ||
                other.totalRewards == totalRewards) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cycle, config, totalRewards,
      const DeepCollectionEquality().hash(_rewards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CycleRewardsImplCopyWith<_$CycleRewardsImpl> get copyWith =>
      __$$CycleRewardsImplCopyWithImpl<_$CycleRewardsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CycleRewardsImplToJson(
      this,
    );
  }
}

abstract class _CycleRewards implements CycleRewards {
  const factory _CycleRewards(
      {required final Cycle cycle,
      required final RewardsConfig config,
      required final RewardsTotal totalRewards,
      required final List<UserReward> rewards}) = _$CycleRewardsImpl;

  factory _CycleRewards.fromJson(Map<String, dynamic> json) =
      _$CycleRewardsImpl.fromJson;

  @override
  Cycle get cycle;
  @override
  RewardsConfig get config;
  @override
  RewardsTotal get totalRewards;
  @override
  List<UserReward> get rewards;
  @override
  @JsonKey(ignore: true)
  _$$CycleRewardsImplCopyWith<_$CycleRewardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendLog _$SendLogFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'succeeded':
      return _SendLogSucceeded.fromJson(json);
    case 'failed':
      return _SendLogFailed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SendLog',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SendLog {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hash hash) succeeded,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hash hash)? succeeded,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hash hash)? succeeded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendLogSucceeded value) succeeded,
    required TResult Function(_SendLogFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLogSucceeded value)? succeeded,
    TResult? Function(_SendLogFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLogSucceeded value)? succeeded,
    TResult Function(_SendLogFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendLogCopyWith<$Res> {
  factory $SendLogCopyWith(SendLog value, $Res Function(SendLog) then) =
      _$SendLogCopyWithImpl<$Res, SendLog>;
}

/// @nodoc
class _$SendLogCopyWithImpl<$Res, $Val extends SendLog>
    implements $SendLogCopyWith<$Res> {
  _$SendLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendLogSucceededImplCopyWith<$Res> {
  factory _$$SendLogSucceededImplCopyWith(_$SendLogSucceededImpl value,
          $Res Function(_$SendLogSucceededImpl) then) =
      __$$SendLogSucceededImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Hash hash});

  $HashCopyWith<$Res> get hash;
}

/// @nodoc
class __$$SendLogSucceededImplCopyWithImpl<$Res>
    extends _$SendLogCopyWithImpl<$Res, _$SendLogSucceededImpl>
    implements _$$SendLogSucceededImplCopyWith<$Res> {
  __$$SendLogSucceededImplCopyWithImpl(_$SendLogSucceededImpl _value,
      $Res Function(_$SendLogSucceededImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
  }) {
    return _then(_$SendLogSucceededImpl(
      null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as Hash,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get hash {
    return $HashCopyWith<$Res>(_value.hash, (value) {
      return _then(_value.copyWith(hash: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SendLogSucceededImpl implements _SendLogSucceeded {
  const _$SendLogSucceededImpl(this.hash, {final String? $type})
      : $type = $type ?? 'succeeded';

  factory _$SendLogSucceededImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendLogSucceededImplFromJson(json);

  @override
  final Hash hash;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SendLog.succeeded(hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLogSucceededImpl &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLogSucceededImplCopyWith<_$SendLogSucceededImpl> get copyWith =>
      __$$SendLogSucceededImplCopyWithImpl<_$SendLogSucceededImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hash hash) succeeded,
    required TResult Function(String error) failed,
  }) {
    return succeeded(hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hash hash)? succeeded,
    TResult? Function(String error)? failed,
  }) {
    return succeeded?.call(hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hash hash)? succeeded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendLogSucceeded value) succeeded,
    required TResult Function(_SendLogFailed value) failed,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLogSucceeded value)? succeeded,
    TResult? Function(_SendLogFailed value)? failed,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLogSucceeded value)? succeeded,
    TResult Function(_SendLogFailed value)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendLogSucceededImplToJson(
      this,
    );
  }
}

abstract class _SendLogSucceeded implements SendLog {
  const factory _SendLogSucceeded(final Hash hash) = _$SendLogSucceededImpl;

  factory _SendLogSucceeded.fromJson(Map<String, dynamic> json) =
      _$SendLogSucceededImpl.fromJson;

  Hash get hash;
  @JsonKey(ignore: true)
  _$$SendLogSucceededImplCopyWith<_$SendLogSucceededImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendLogFailedImplCopyWith<$Res> {
  factory _$$SendLogFailedImplCopyWith(
          _$SendLogFailedImpl value, $Res Function(_$SendLogFailedImpl) then) =
      __$$SendLogFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SendLogFailedImplCopyWithImpl<$Res>
    extends _$SendLogCopyWithImpl<$Res, _$SendLogFailedImpl>
    implements _$$SendLogFailedImplCopyWith<$Res> {
  __$$SendLogFailedImplCopyWithImpl(
      _$SendLogFailedImpl _value, $Res Function(_$SendLogFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SendLogFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendLogFailedImpl implements _SendLogFailed {
  const _$SendLogFailedImpl(this.error, {final String? $type})
      : $type = $type ?? 'failed';

  factory _$SendLogFailedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendLogFailedImplFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SendLog.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLogFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLogFailedImplCopyWith<_$SendLogFailedImpl> get copyWith =>
      __$$SendLogFailedImplCopyWithImpl<_$SendLogFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hash hash) succeeded,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hash hash)? succeeded,
    TResult? Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hash hash)? succeeded,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendLogSucceeded value) succeeded,
    required TResult Function(_SendLogFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLogSucceeded value)? succeeded,
    TResult? Function(_SendLogFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLogSucceeded value)? succeeded,
    TResult Function(_SendLogFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendLogFailedImplToJson(
      this,
    );
  }
}

abstract class _SendLogFailed implements SendLog {
  const factory _SendLogFailed(final String error) = _$SendLogFailedImpl;

  factory _SendLogFailed.fromJson(Map<String, dynamic> json) =
      _$SendLogFailedImpl.fromJson;

  String get error;
  @JsonKey(ignore: true)
  _$$SendLogFailedImplCopyWith<_$SendLogFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistributionLog _$DistributionLogFromJson(Map<String, dynamic> json) {
  return _DistributionLog.fromJson(json);
}

/// @nodoc
mixin _$DistributionLog {
  CycleRewards get rewards => throw _privateConstructorUsedError;
  Map<String, SendLog> get logs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistributionLogCopyWith<DistributionLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionLogCopyWith<$Res> {
  factory $DistributionLogCopyWith(
          DistributionLog value, $Res Function(DistributionLog) then) =
      _$DistributionLogCopyWithImpl<$Res, DistributionLog>;
  @useResult
  $Res call({CycleRewards rewards, Map<String, SendLog> logs});

  $CycleRewardsCopyWith<$Res> get rewards;
}

/// @nodoc
class _$DistributionLogCopyWithImpl<$Res, $Val extends DistributionLog>
    implements $DistributionLogCopyWith<$Res> {
  _$DistributionLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewards = null,
    Object? logs = null,
  }) {
    return _then(_value.copyWith(
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as CycleRewards,
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as Map<String, SendLog>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CycleRewardsCopyWith<$Res> get rewards {
    return $CycleRewardsCopyWith<$Res>(_value.rewards, (value) {
      return _then(_value.copyWith(rewards: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DistributionLogImplCopyWith<$Res>
    implements $DistributionLogCopyWith<$Res> {
  factory _$$DistributionLogImplCopyWith(_$DistributionLogImpl value,
          $Res Function(_$DistributionLogImpl) then) =
      __$$DistributionLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CycleRewards rewards, Map<String, SendLog> logs});

  @override
  $CycleRewardsCopyWith<$Res> get rewards;
}

/// @nodoc
class __$$DistributionLogImplCopyWithImpl<$Res>
    extends _$DistributionLogCopyWithImpl<$Res, _$DistributionLogImpl>
    implements _$$DistributionLogImplCopyWith<$Res> {
  __$$DistributionLogImplCopyWithImpl(
      _$DistributionLogImpl _value, $Res Function(_$DistributionLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewards = null,
    Object? logs = null,
  }) {
    return _then(_$DistributionLogImpl(
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as CycleRewards,
      logs: null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as Map<String, SendLog>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistributionLogImpl implements _DistributionLog {
  const _$DistributionLogImpl(
      {required this.rewards, required final Map<String, SendLog> logs})
      : _logs = logs;

  factory _$DistributionLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistributionLogImplFromJson(json);

  @override
  final CycleRewards rewards;
  final Map<String, SendLog> _logs;
  @override
  Map<String, SendLog> get logs {
    if (_logs is EqualUnmodifiableMapView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_logs);
  }

  @override
  String toString() {
    return 'DistributionLog(rewards: $rewards, logs: $logs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistributionLogImpl &&
            (identical(other.rewards, rewards) || other.rewards == rewards) &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rewards, const DeepCollectionEquality().hash(_logs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistributionLogImplCopyWith<_$DistributionLogImpl> get copyWith =>
      __$$DistributionLogImplCopyWithImpl<_$DistributionLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistributionLogImplToJson(
      this,
    );
  }
}

abstract class _DistributionLog implements DistributionLog {
  const factory _DistributionLog(
      {required final CycleRewards rewards,
      required final Map<String, SendLog> logs}) = _$DistributionLogImpl;

  factory _DistributionLog.fromJson(Map<String, dynamic> json) =
      _$DistributionLogImpl.fromJson;

  @override
  CycleRewards get rewards;
  @override
  Map<String, SendLog> get logs;
  @override
  @JsonKey(ignore: true)
  _$$DistributionLogImplCopyWith<_$DistributionLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
