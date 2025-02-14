// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dex_trade_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DexTradeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewOrderInfo orderInfo) newOrder,
    required TResult Function(Uint8List data) orderUpdate,
    required TResult Function(Uint8List data) transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewOrderInfo orderInfo)? newOrder,
    TResult? Function(Uint8List data)? orderUpdate,
    TResult? Function(Uint8List data)? transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewOrderInfo orderInfo)? newOrder,
    TResult Function(Uint8List data)? orderUpdate,
    TResult Function(Uint8List data)? transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexTradeEventNewOrder value) newOrder,
    required TResult Function(_DexTradeEventOrderUpdate value) orderUpdate,
    required TResult Function(_DexTradeEventTransaction value) transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexTradeEventNewOrder value)? newOrder,
    TResult? Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult? Function(_DexTradeEventTransaction value)? transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexTradeEventNewOrder value)? newOrder,
    TResult Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult Function(_DexTradeEventTransaction value)? transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DexTradeEventCopyWith<$Res> {
  factory $DexTradeEventCopyWith(
          DexTradeEvent value, $Res Function(DexTradeEvent) then) =
      _$DexTradeEventCopyWithImpl<$Res, DexTradeEvent>;
}

/// @nodoc
class _$DexTradeEventCopyWithImpl<$Res, $Val extends DexTradeEvent>
    implements $DexTradeEventCopyWith<$Res> {
  _$DexTradeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DexTradeEventNewOrderImplCopyWith<$Res> {
  factory _$$DexTradeEventNewOrderImplCopyWith(
          _$DexTradeEventNewOrderImpl value,
          $Res Function(_$DexTradeEventNewOrderImpl) then) =
      __$$DexTradeEventNewOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewOrderInfo orderInfo});

  $NewOrderInfoCopyWith<$Res> get orderInfo;
}

/// @nodoc
class __$$DexTradeEventNewOrderImplCopyWithImpl<$Res>
    extends _$DexTradeEventCopyWithImpl<$Res, _$DexTradeEventNewOrderImpl>
    implements _$$DexTradeEventNewOrderImplCopyWith<$Res> {
  __$$DexTradeEventNewOrderImplCopyWithImpl(_$DexTradeEventNewOrderImpl _value,
      $Res Function(_$DexTradeEventNewOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderInfo = null,
  }) {
    return _then(_$DexTradeEventNewOrderImpl(
      orderInfo: null == orderInfo
          ? _value.orderInfo
          : orderInfo // ignore: cast_nullable_to_non_nullable
              as NewOrderInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewOrderInfoCopyWith<$Res> get orderInfo {
    return $NewOrderInfoCopyWith<$Res>(_value.orderInfo, (value) {
      return _then(_value.copyWith(orderInfo: value));
    });
  }
}

/// @nodoc

class _$DexTradeEventNewOrderImpl implements _DexTradeEventNewOrder {
  const _$DexTradeEventNewOrderImpl({required this.orderInfo});

  @override
  final NewOrderInfo orderInfo;

  @override
  String toString() {
    return 'DexTradeEvent.newOrder(orderInfo: $orderInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DexTradeEventNewOrderImpl &&
            (identical(other.orderInfo, orderInfo) ||
                other.orderInfo == orderInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DexTradeEventNewOrderImplCopyWith<_$DexTradeEventNewOrderImpl>
      get copyWith => __$$DexTradeEventNewOrderImplCopyWithImpl<
          _$DexTradeEventNewOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewOrderInfo orderInfo) newOrder,
    required TResult Function(Uint8List data) orderUpdate,
    required TResult Function(Uint8List data) transaction,
  }) {
    return newOrder(orderInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewOrderInfo orderInfo)? newOrder,
    TResult? Function(Uint8List data)? orderUpdate,
    TResult? Function(Uint8List data)? transaction,
  }) {
    return newOrder?.call(orderInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewOrderInfo orderInfo)? newOrder,
    TResult Function(Uint8List data)? orderUpdate,
    TResult Function(Uint8List data)? transaction,
    required TResult orElse(),
  }) {
    if (newOrder != null) {
      return newOrder(orderInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexTradeEventNewOrder value) newOrder,
    required TResult Function(_DexTradeEventOrderUpdate value) orderUpdate,
    required TResult Function(_DexTradeEventTransaction value) transaction,
  }) {
    return newOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexTradeEventNewOrder value)? newOrder,
    TResult? Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult? Function(_DexTradeEventTransaction value)? transaction,
  }) {
    return newOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexTradeEventNewOrder value)? newOrder,
    TResult Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult Function(_DexTradeEventTransaction value)? transaction,
    required TResult orElse(),
  }) {
    if (newOrder != null) {
      return newOrder(this);
    }
    return orElse();
  }
}

abstract class _DexTradeEventNewOrder implements DexTradeEvent {
  const factory _DexTradeEventNewOrder(
      {required final NewOrderInfo orderInfo}) = _$DexTradeEventNewOrderImpl;

  NewOrderInfo get orderInfo;
  @JsonKey(ignore: true)
  _$$DexTradeEventNewOrderImplCopyWith<_$DexTradeEventNewOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DexTradeEventOrderUpdateImplCopyWith<$Res> {
  factory _$$DexTradeEventOrderUpdateImplCopyWith(
          _$DexTradeEventOrderUpdateImpl value,
          $Res Function(_$DexTradeEventOrderUpdateImpl) then) =
      __$$DexTradeEventOrderUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List data});
}

/// @nodoc
class __$$DexTradeEventOrderUpdateImplCopyWithImpl<$Res>
    extends _$DexTradeEventCopyWithImpl<$Res, _$DexTradeEventOrderUpdateImpl>
    implements _$$DexTradeEventOrderUpdateImplCopyWith<$Res> {
  __$$DexTradeEventOrderUpdateImplCopyWithImpl(
      _$DexTradeEventOrderUpdateImpl _value,
      $Res Function(_$DexTradeEventOrderUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DexTradeEventOrderUpdateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DexTradeEventOrderUpdateImpl implements _DexTradeEventOrderUpdate {
  const _$DexTradeEventOrderUpdateImpl({required this.data});

  @override
  final Uint8List data;

  @override
  String toString() {
    return 'DexTradeEvent.orderUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DexTradeEventOrderUpdateImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DexTradeEventOrderUpdateImplCopyWith<_$DexTradeEventOrderUpdateImpl>
      get copyWith => __$$DexTradeEventOrderUpdateImplCopyWithImpl<
          _$DexTradeEventOrderUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewOrderInfo orderInfo) newOrder,
    required TResult Function(Uint8List data) orderUpdate,
    required TResult Function(Uint8List data) transaction,
  }) {
    return orderUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewOrderInfo orderInfo)? newOrder,
    TResult? Function(Uint8List data)? orderUpdate,
    TResult? Function(Uint8List data)? transaction,
  }) {
    return orderUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewOrderInfo orderInfo)? newOrder,
    TResult Function(Uint8List data)? orderUpdate,
    TResult Function(Uint8List data)? transaction,
    required TResult orElse(),
  }) {
    if (orderUpdate != null) {
      return orderUpdate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexTradeEventNewOrder value) newOrder,
    required TResult Function(_DexTradeEventOrderUpdate value) orderUpdate,
    required TResult Function(_DexTradeEventTransaction value) transaction,
  }) {
    return orderUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexTradeEventNewOrder value)? newOrder,
    TResult? Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult? Function(_DexTradeEventTransaction value)? transaction,
  }) {
    return orderUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexTradeEventNewOrder value)? newOrder,
    TResult Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult Function(_DexTradeEventTransaction value)? transaction,
    required TResult orElse(),
  }) {
    if (orderUpdate != null) {
      return orderUpdate(this);
    }
    return orElse();
  }
}

abstract class _DexTradeEventOrderUpdate implements DexTradeEvent {
  const factory _DexTradeEventOrderUpdate({required final Uint8List data}) =
      _$DexTradeEventOrderUpdateImpl;

  Uint8List get data;
  @JsonKey(ignore: true)
  _$$DexTradeEventOrderUpdateImplCopyWith<_$DexTradeEventOrderUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DexTradeEventTransactionImplCopyWith<$Res> {
  factory _$$DexTradeEventTransactionImplCopyWith(
          _$DexTradeEventTransactionImpl value,
          $Res Function(_$DexTradeEventTransactionImpl) then) =
      __$$DexTradeEventTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List data});
}

/// @nodoc
class __$$DexTradeEventTransactionImplCopyWithImpl<$Res>
    extends _$DexTradeEventCopyWithImpl<$Res, _$DexTradeEventTransactionImpl>
    implements _$$DexTradeEventTransactionImplCopyWith<$Res> {
  __$$DexTradeEventTransactionImplCopyWithImpl(
      _$DexTradeEventTransactionImpl _value,
      $Res Function(_$DexTradeEventTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DexTradeEventTransactionImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DexTradeEventTransactionImpl implements _DexTradeEventTransaction {
  const _$DexTradeEventTransactionImpl({required this.data});

  @override
  final Uint8List data;

  @override
  String toString() {
    return 'DexTradeEvent.transaction(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DexTradeEventTransactionImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DexTradeEventTransactionImplCopyWith<_$DexTradeEventTransactionImpl>
      get copyWith => __$$DexTradeEventTransactionImplCopyWithImpl<
          _$DexTradeEventTransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewOrderInfo orderInfo) newOrder,
    required TResult Function(Uint8List data) orderUpdate,
    required TResult Function(Uint8List data) transaction,
  }) {
    return transaction(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewOrderInfo orderInfo)? newOrder,
    TResult? Function(Uint8List data)? orderUpdate,
    TResult? Function(Uint8List data)? transaction,
  }) {
    return transaction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewOrderInfo orderInfo)? newOrder,
    TResult Function(Uint8List data)? orderUpdate,
    TResult Function(Uint8List data)? transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DexTradeEventNewOrder value) newOrder,
    required TResult Function(_DexTradeEventOrderUpdate value) orderUpdate,
    required TResult Function(_DexTradeEventTransaction value) transaction,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DexTradeEventNewOrder value)? newOrder,
    TResult? Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult? Function(_DexTradeEventTransaction value)? transaction,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DexTradeEventNewOrder value)? newOrder,
    TResult Function(_DexTradeEventOrderUpdate value)? orderUpdate,
    TResult Function(_DexTradeEventTransaction value)? transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class _DexTradeEventTransaction implements DexTradeEvent {
  const factory _DexTradeEventTransaction({required final Uint8List data}) =
      _$DexTradeEventTransactionImpl;

  Uint8List get data;
  @JsonKey(ignore: true)
  _$$DexTradeEventTransactionImplCopyWith<_$DexTradeEventTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DexOrder _$DexOrderFromJson(Map<String, dynamic> json) {
  return _DexOrder.fromJson(json);
}

/// @nodoc
mixin _$DexOrder {
  @Utf8StringBase64Converter()
  String get id => throw _privateConstructorUsedError;
  @Utf8StringBase64Converter()
  Address get address => throw _privateConstructorUsedError;
  int get marketId => throw _privateConstructorUsedError;
  bool get side => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  int get takerFeeRate => throw _privateConstructorUsedError;
  int get makerFeeRate => throw _privateConstructorUsedError;
  int get takerOperatorFeeRate => throw _privateConstructorUsedError;
  int get makerOperatorFeeRate => throw _privateConstructorUsedError;
  BigInt get quantity => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int? get cancelReason => throw _privateConstructorUsedError;
  BigInt? get executedQuantity => throw _privateConstructorUsedError;
  BigInt? get executedAmount => throw _privateConstructorUsedError;
  BigInt? get executedBaseFee => throw _privateConstructorUsedError;
  BigInt? get executedOperatorFee => throw _privateConstructorUsedError;
  BigInt? get refundToken => throw _privateConstructorUsedError;
  BigInt? get refundQuantitu => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  @Utf8StringBase64Converter()
  Hash get sendHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DexOrderCopyWith<DexOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DexOrderCopyWith<$Res> {
  factory $DexOrderCopyWith(DexOrder value, $Res Function(DexOrder) then) =
      _$DexOrderCopyWithImpl<$Res, DexOrder>;
  @useResult
  $Res call(
      {@Utf8StringBase64Converter() String id,
      @Utf8StringBase64Converter() Address address,
      int marketId,
      bool side,
      int type,
      Decimal price,
      int takerFeeRate,
      int makerFeeRate,
      int takerOperatorFeeRate,
      int makerOperatorFeeRate,
      BigInt quantity,
      BigInt amount,
      int status,
      int? cancelReason,
      BigInt? executedQuantity,
      BigInt? executedAmount,
      BigInt? executedBaseFee,
      BigInt? executedOperatorFee,
      BigInt? refundToken,
      BigInt? refundQuantitu,
      int timestamp,
      @Utf8StringBase64Converter() Hash sendHash});

  $AddressCopyWith<$Res> get address;
  $HashCopyWith<$Res> get sendHash;
}

/// @nodoc
class _$DexOrderCopyWithImpl<$Res, $Val extends DexOrder>
    implements $DexOrderCopyWith<$Res> {
  _$DexOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? marketId = null,
    Object? side = null,
    Object? type = null,
    Object? price = null,
    Object? takerFeeRate = null,
    Object? makerFeeRate = null,
    Object? takerOperatorFeeRate = null,
    Object? makerOperatorFeeRate = null,
    Object? quantity = null,
    Object? amount = null,
    Object? status = null,
    Object? cancelReason = freezed,
    Object? executedQuantity = freezed,
    Object? executedAmount = freezed,
    Object? executedBaseFee = freezed,
    Object? executedOperatorFee = freezed,
    Object? refundToken = freezed,
    Object? refundQuantitu = freezed,
    Object? timestamp = null,
    Object? sendHash = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      takerFeeRate: null == takerFeeRate
          ? _value.takerFeeRate
          : takerFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      makerFeeRate: null == makerFeeRate
          ? _value.makerFeeRate
          : makerFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      takerOperatorFeeRate: null == takerOperatorFeeRate
          ? _value.takerOperatorFeeRate
          : takerOperatorFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      makerOperatorFeeRate: null == makerOperatorFeeRate
          ? _value.makerOperatorFeeRate
          : makerOperatorFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as int?,
      executedQuantity: freezed == executedQuantity
          ? _value.executedQuantity
          : executedQuantity // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedAmount: freezed == executedAmount
          ? _value.executedAmount
          : executedAmount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedBaseFee: freezed == executedBaseFee
          ? _value.executedBaseFee
          : executedBaseFee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedOperatorFee: freezed == executedOperatorFee
          ? _value.executedOperatorFee
          : executedOperatorFee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      refundToken: freezed == refundToken
          ? _value.refundToken
          : refundToken // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      refundQuantitu: freezed == refundQuantitu
          ? _value.refundQuantitu
          : refundQuantitu // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      sendHash: null == sendHash
          ? _value.sendHash
          : sendHash // ignore: cast_nullable_to_non_nullable
              as Hash,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HashCopyWith<$Res> get sendHash {
    return $HashCopyWith<$Res>(_value.sendHash, (value) {
      return _then(_value.copyWith(sendHash: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DexOrderImplCopyWith<$Res>
    implements $DexOrderCopyWith<$Res> {
  factory _$$DexOrderImplCopyWith(
          _$DexOrderImpl value, $Res Function(_$DexOrderImpl) then) =
      __$$DexOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Utf8StringBase64Converter() String id,
      @Utf8StringBase64Converter() Address address,
      int marketId,
      bool side,
      int type,
      Decimal price,
      int takerFeeRate,
      int makerFeeRate,
      int takerOperatorFeeRate,
      int makerOperatorFeeRate,
      BigInt quantity,
      BigInt amount,
      int status,
      int? cancelReason,
      BigInt? executedQuantity,
      BigInt? executedAmount,
      BigInt? executedBaseFee,
      BigInt? executedOperatorFee,
      BigInt? refundToken,
      BigInt? refundQuantitu,
      int timestamp,
      @Utf8StringBase64Converter() Hash sendHash});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $HashCopyWith<$Res> get sendHash;
}

/// @nodoc
class __$$DexOrderImplCopyWithImpl<$Res>
    extends _$DexOrderCopyWithImpl<$Res, _$DexOrderImpl>
    implements _$$DexOrderImplCopyWith<$Res> {
  __$$DexOrderImplCopyWithImpl(
      _$DexOrderImpl _value, $Res Function(_$DexOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? marketId = null,
    Object? side = null,
    Object? type = null,
    Object? price = null,
    Object? takerFeeRate = null,
    Object? makerFeeRate = null,
    Object? takerOperatorFeeRate = null,
    Object? makerOperatorFeeRate = null,
    Object? quantity = null,
    Object? amount = null,
    Object? status = null,
    Object? cancelReason = freezed,
    Object? executedQuantity = freezed,
    Object? executedAmount = freezed,
    Object? executedBaseFee = freezed,
    Object? executedOperatorFee = freezed,
    Object? refundToken = freezed,
    Object? refundQuantitu = freezed,
    Object? timestamp = null,
    Object? sendHash = null,
  }) {
    return _then(_$DexOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      takerFeeRate: null == takerFeeRate
          ? _value.takerFeeRate
          : takerFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      makerFeeRate: null == makerFeeRate
          ? _value.makerFeeRate
          : makerFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      takerOperatorFeeRate: null == takerOperatorFeeRate
          ? _value.takerOperatorFeeRate
          : takerOperatorFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      makerOperatorFeeRate: null == makerOperatorFeeRate
          ? _value.makerOperatorFeeRate
          : makerOperatorFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as BigInt,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as int?,
      executedQuantity: freezed == executedQuantity
          ? _value.executedQuantity
          : executedQuantity // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedAmount: freezed == executedAmount
          ? _value.executedAmount
          : executedAmount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedBaseFee: freezed == executedBaseFee
          ? _value.executedBaseFee
          : executedBaseFee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      executedOperatorFee: freezed == executedOperatorFee
          ? _value.executedOperatorFee
          : executedOperatorFee // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      refundToken: freezed == refundToken
          ? _value.refundToken
          : refundToken // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      refundQuantitu: freezed == refundQuantitu
          ? _value.refundQuantitu
          : refundQuantitu // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      sendHash: null == sendHash
          ? _value.sendHash
          : sendHash // ignore: cast_nullable_to_non_nullable
              as Hash,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$DexOrderImpl implements _DexOrder {
  const _$DexOrderImpl(
      {@Utf8StringBase64Converter() required this.id,
      @Utf8StringBase64Converter() required this.address,
      required this.marketId,
      required this.side,
      required this.type,
      required this.price,
      required this.takerFeeRate,
      required this.makerFeeRate,
      required this.takerOperatorFeeRate,
      required this.makerOperatorFeeRate,
      required this.quantity,
      required this.amount,
      required this.status,
      this.cancelReason,
      this.executedQuantity,
      this.executedAmount,
      this.executedBaseFee,
      this.executedOperatorFee,
      this.refundToken,
      this.refundQuantitu,
      required this.timestamp,
      @Utf8StringBase64Converter() required this.sendHash});

  factory _$DexOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$DexOrderImplFromJson(json);

  @override
  @Utf8StringBase64Converter()
  final String id;
  @override
  @Utf8StringBase64Converter()
  final Address address;
  @override
  final int marketId;
  @override
  final bool side;
  @override
  final int type;
  @override
  final Decimal price;
  @override
  final int takerFeeRate;
  @override
  final int makerFeeRate;
  @override
  final int takerOperatorFeeRate;
  @override
  final int makerOperatorFeeRate;
  @override
  final BigInt quantity;
  @override
  final BigInt amount;
  @override
  final int status;
  @override
  final int? cancelReason;
  @override
  final BigInt? executedQuantity;
  @override
  final BigInt? executedAmount;
  @override
  final BigInt? executedBaseFee;
  @override
  final BigInt? executedOperatorFee;
  @override
  final BigInt? refundToken;
  @override
  final BigInt? refundQuantitu;
  @override
  final int timestamp;
  @override
  @Utf8StringBase64Converter()
  final Hash sendHash;

  @override
  String toString() {
    return 'DexOrder(id: $id, address: $address, marketId: $marketId, side: $side, type: $type, price: $price, takerFeeRate: $takerFeeRate, makerFeeRate: $makerFeeRate, takerOperatorFeeRate: $takerOperatorFeeRate, makerOperatorFeeRate: $makerOperatorFeeRate, quantity: $quantity, amount: $amount, status: $status, cancelReason: $cancelReason, executedQuantity: $executedQuantity, executedAmount: $executedAmount, executedBaseFee: $executedBaseFee, executedOperatorFee: $executedOperatorFee, refundToken: $refundToken, refundQuantitu: $refundQuantitu, timestamp: $timestamp, sendHash: $sendHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DexOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.takerFeeRate, takerFeeRate) ||
                other.takerFeeRate == takerFeeRate) &&
            (identical(other.makerFeeRate, makerFeeRate) ||
                other.makerFeeRate == makerFeeRate) &&
            (identical(other.takerOperatorFeeRate, takerOperatorFeeRate) ||
                other.takerOperatorFeeRate == takerOperatorFeeRate) &&
            (identical(other.makerOperatorFeeRate, makerOperatorFeeRate) ||
                other.makerOperatorFeeRate == makerOperatorFeeRate) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.executedQuantity, executedQuantity) ||
                other.executedQuantity == executedQuantity) &&
            (identical(other.executedAmount, executedAmount) ||
                other.executedAmount == executedAmount) &&
            (identical(other.executedBaseFee, executedBaseFee) ||
                other.executedBaseFee == executedBaseFee) &&
            (identical(other.executedOperatorFee, executedOperatorFee) ||
                other.executedOperatorFee == executedOperatorFee) &&
            (identical(other.refundToken, refundToken) ||
                other.refundToken == refundToken) &&
            (identical(other.refundQuantitu, refundQuantitu) ||
                other.refundQuantitu == refundQuantitu) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.sendHash, sendHash) ||
                other.sendHash == sendHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        address,
        marketId,
        side,
        type,
        price,
        takerFeeRate,
        makerFeeRate,
        takerOperatorFeeRate,
        makerOperatorFeeRate,
        quantity,
        amount,
        status,
        cancelReason,
        executedQuantity,
        executedAmount,
        executedBaseFee,
        executedOperatorFee,
        refundToken,
        refundQuantitu,
        timestamp,
        sendHash
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DexOrderImplCopyWith<_$DexOrderImpl> get copyWith =>
      __$$DexOrderImplCopyWithImpl<_$DexOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DexOrderImplToJson(
      this,
    );
  }
}

abstract class _DexOrder implements DexOrder {
  const factory _DexOrder(
          {@Utf8StringBase64Converter() required final String id,
          @Utf8StringBase64Converter() required final Address address,
          required final int marketId,
          required final bool side,
          required final int type,
          required final Decimal price,
          required final int takerFeeRate,
          required final int makerFeeRate,
          required final int takerOperatorFeeRate,
          required final int makerOperatorFeeRate,
          required final BigInt quantity,
          required final BigInt amount,
          required final int status,
          final int? cancelReason,
          final BigInt? executedQuantity,
          final BigInt? executedAmount,
          final BigInt? executedBaseFee,
          final BigInt? executedOperatorFee,
          final BigInt? refundToken,
          final BigInt? refundQuantitu,
          required final int timestamp,
          @Utf8StringBase64Converter() required final Hash sendHash}) =
      _$DexOrderImpl;

  factory _DexOrder.fromJson(Map<String, dynamic> json) =
      _$DexOrderImpl.fromJson;

  @override
  @Utf8StringBase64Converter()
  String get id;
  @override
  @Utf8StringBase64Converter()
  Address get address;
  @override
  int get marketId;
  @override
  bool get side;
  @override
  int get type;
  @override
  Decimal get price;
  @override
  int get takerFeeRate;
  @override
  int get makerFeeRate;
  @override
  int get takerOperatorFeeRate;
  @override
  int get makerOperatorFeeRate;
  @override
  BigInt get quantity;
  @override
  BigInt get amount;
  @override
  int get status;
  @override
  int? get cancelReason;
  @override
  BigInt? get executedQuantity;
  @override
  BigInt? get executedAmount;
  @override
  BigInt? get executedBaseFee;
  @override
  BigInt? get executedOperatorFee;
  @override
  BigInt? get refundToken;
  @override
  BigInt? get refundQuantitu;
  @override
  int get timestamp;
  @override
  @Utf8StringBase64Converter()
  Hash get sendHash;
  @override
  @JsonKey(ignore: true)
  _$$DexOrderImplCopyWith<_$DexOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewOrderInfo _$NewOrderInfoFromJson(Map<String, dynamic> json) {
  return _NewOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$NewOrderInfo {
  DexOrder get order => throw _privateConstructorUsedError;
  Token get tradeToken => throw _privateConstructorUsedError;
  Token get quoteToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewOrderInfoCopyWith<NewOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderInfoCopyWith<$Res> {
  factory $NewOrderInfoCopyWith(
          NewOrderInfo value, $Res Function(NewOrderInfo) then) =
      _$NewOrderInfoCopyWithImpl<$Res, NewOrderInfo>;
  @useResult
  $Res call({DexOrder order, Token tradeToken, Token quoteToken});

  $DexOrderCopyWith<$Res> get order;
  $TokenCopyWith<$Res> get tradeToken;
  $TokenCopyWith<$Res> get quoteToken;
}

/// @nodoc
class _$NewOrderInfoCopyWithImpl<$Res, $Val extends NewOrderInfo>
    implements $NewOrderInfoCopyWith<$Res> {
  _$NewOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? tradeToken = null,
    Object? quoteToken = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as DexOrder,
      tradeToken: null == tradeToken
          ? _value.tradeToken
          : tradeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      quoteToken: null == quoteToken
          ? _value.quoteToken
          : quoteToken // ignore: cast_nullable_to_non_nullable
              as Token,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DexOrderCopyWith<$Res> get order {
    return $DexOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
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
abstract class _$$NewOrderInfoImplCopyWith<$Res>
    implements $NewOrderInfoCopyWith<$Res> {
  factory _$$NewOrderInfoImplCopyWith(
          _$NewOrderInfoImpl value, $Res Function(_$NewOrderInfoImpl) then) =
      __$$NewOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DexOrder order, Token tradeToken, Token quoteToken});

  @override
  $DexOrderCopyWith<$Res> get order;
  @override
  $TokenCopyWith<$Res> get tradeToken;
  @override
  $TokenCopyWith<$Res> get quoteToken;
}

/// @nodoc
class __$$NewOrderInfoImplCopyWithImpl<$Res>
    extends _$NewOrderInfoCopyWithImpl<$Res, _$NewOrderInfoImpl>
    implements _$$NewOrderInfoImplCopyWith<$Res> {
  __$$NewOrderInfoImplCopyWithImpl(
      _$NewOrderInfoImpl _value, $Res Function(_$NewOrderInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? tradeToken = null,
    Object? quoteToken = null,
  }) {
    return _then(_$NewOrderInfoImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as DexOrder,
      tradeToken: null == tradeToken
          ? _value.tradeToken
          : tradeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      quoteToken: null == quoteToken
          ? _value.quoteToken
          : quoteToken // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$NewOrderInfoImpl implements _NewOrderInfo {
  const _$NewOrderInfoImpl(
      {required this.order,
      required this.tradeToken,
      required this.quoteToken});

  factory _$NewOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewOrderInfoImplFromJson(json);

  @override
  final DexOrder order;
  @override
  final Token tradeToken;
  @override
  final Token quoteToken;

  @override
  String toString() {
    return 'NewOrderInfo(order: $order, tradeToken: $tradeToken, quoteToken: $quoteToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrderInfoImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.tradeToken, tradeToken) ||
                other.tradeToken == tradeToken) &&
            (identical(other.quoteToken, quoteToken) ||
                other.quoteToken == quoteToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, tradeToken, quoteToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOrderInfoImplCopyWith<_$NewOrderInfoImpl> get copyWith =>
      __$$NewOrderInfoImplCopyWithImpl<_$NewOrderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewOrderInfoImplToJson(
      this,
    );
  }
}

abstract class _NewOrderInfo implements NewOrderInfo {
  const factory _NewOrderInfo(
      {required final DexOrder order,
      required final Token tradeToken,
      required final Token quoteToken}) = _$NewOrderInfoImpl;

  factory _NewOrderInfo.fromJson(Map<String, dynamic> json) =
      _$NewOrderInfoImpl.fromJson;

  @override
  DexOrder get order;
  @override
  Token get tradeToken;
  @override
  Token get quoteToken;
  @override
  @JsonKey(ignore: true)
  _$$NewOrderInfoImplCopyWith<_$NewOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
