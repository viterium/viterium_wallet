///
//  Generated code. Do not modify.
//  source: dex_order.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Order', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.OY, protoName: 'Id')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketId', $pb.PbFieldType.O3, protoName: 'MarketId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Side', protoName: 'Side')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Type', $pb.PbFieldType.O3, protoName: 'Type')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', $pb.PbFieldType.OY, protoName: 'Price')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerFeeRate', $pb.PbFieldType.O3, protoName: 'TakerFeeRate')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerFeeRate', $pb.PbFieldType.O3, protoName: 'MakerFeeRate')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'TakerOperatorFeeRate')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'MakerOperatorFeeRate')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Quantity', $pb.PbFieldType.OY, protoName: 'Quantity')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LockedBuyFee', $pb.PbFieldType.OY, protoName: 'LockedBuyFee')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.O3, protoName: 'Status')
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CancelReason', $pb.PbFieldType.O3, protoName: 'CancelReason')
    ..a<$core.List<$core.int>>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedQuantity', $pb.PbFieldType.OY, protoName: 'ExecutedQuantity')
    ..a<$core.List<$core.int>>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedAmount', $pb.PbFieldType.OY, protoName: 'ExecutedAmount')
    ..a<$core.List<$core.int>>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedBaseFee', $pb.PbFieldType.OY, protoName: 'ExecutedBaseFee')
    ..a<$core.List<$core.int>>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedOperatorFee', $pb.PbFieldType.OY, protoName: 'ExecutedOperatorFee')
    ..a<$core.List<$core.int>>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefundToken', $pb.PbFieldType.OY, protoName: 'RefundToken')
    ..a<$core.List<$core.int>>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefundQuantity', $pb.PbFieldType.OY, protoName: 'RefundQuantity')
    ..aInt64(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..a<$core.List<$core.int>>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Agent', $pb.PbFieldType.OY, protoName: 'Agent')
    ..a<$core.List<$core.int>>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SendHash', $pb.PbFieldType.OY, protoName: 'SendHash')
    ..a<$core.List<$core.int>>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketOrderAmtThreshold', $pb.PbFieldType.OY, protoName: 'MarketOrderAmtThreshold')
    ..hasRequiredFields = false
  ;

  Order._() : super();
  factory Order({
    $core.List<$core.int>? id,
    $core.List<$core.int>? address,
    $core.int? marketId,
    $core.bool? side,
    $core.int? type,
    $core.List<$core.int>? price,
    $core.int? takerFeeRate,
    $core.int? makerFeeRate,
    $core.int? takerOperatorFeeRate,
    $core.int? makerOperatorFeeRate,
    $core.List<$core.int>? quantity,
    $core.List<$core.int>? amount,
    $core.List<$core.int>? lockedBuyFee,
    $core.int? status,
    $core.int? cancelReason,
    $core.List<$core.int>? executedQuantity,
    $core.List<$core.int>? executedAmount,
    $core.List<$core.int>? executedBaseFee,
    $core.List<$core.int>? executedOperatorFee,
    $core.List<$core.int>? refundToken,
    $core.List<$core.int>? refundQuantity,
    $fixnum.Int64? timestamp,
    $core.List<$core.int>? agent,
    $core.List<$core.int>? sendHash,
    $core.List<$core.int>? marketOrderAmtThreshold,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (address != null) {
      _result.address = address;
    }
    if (marketId != null) {
      _result.marketId = marketId;
    }
    if (side != null) {
      _result.side = side;
    }
    if (type != null) {
      _result.type = type;
    }
    if (price != null) {
      _result.price = price;
    }
    if (takerFeeRate != null) {
      _result.takerFeeRate = takerFeeRate;
    }
    if (makerFeeRate != null) {
      _result.makerFeeRate = makerFeeRate;
    }
    if (takerOperatorFeeRate != null) {
      _result.takerOperatorFeeRate = takerOperatorFeeRate;
    }
    if (makerOperatorFeeRate != null) {
      _result.makerOperatorFeeRate = makerOperatorFeeRate;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (lockedBuyFee != null) {
      _result.lockedBuyFee = lockedBuyFee;
    }
    if (status != null) {
      _result.status = status;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (executedQuantity != null) {
      _result.executedQuantity = executedQuantity;
    }
    if (executedAmount != null) {
      _result.executedAmount = executedAmount;
    }
    if (executedBaseFee != null) {
      _result.executedBaseFee = executedBaseFee;
    }
    if (executedOperatorFee != null) {
      _result.executedOperatorFee = executedOperatorFee;
    }
    if (refundToken != null) {
      _result.refundToken = refundToken;
    }
    if (refundQuantity != null) {
      _result.refundQuantity = refundQuantity;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (agent != null) {
      _result.agent = agent;
    }
    if (sendHash != null) {
      _result.sendHash = sendHash;
    }
    if (marketOrderAmtThreshold != null) {
      _result.marketOrderAmtThreshold = marketOrderAmtThreshold;
    }
    return _result;
  }
  factory Order.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Order.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Order clone() => Order()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Order copyWith(void Function(Order) updates) => super.copyWith((message) => updates(message as Order)) as Order; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Order create() => Order._();
  Order createEmptyInstance() => create();
  static $pb.PbList<Order> createRepeated() => $pb.PbList<Order>();
  @$core.pragma('dart2js:noInline')
  static Order getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Order>(create);
  static Order? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get address => $_getN(1);
  @$pb.TagNumber(2)
  set address($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get marketId => $_getIZ(2);
  @$pb.TagNumber(3)
  set marketId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarketId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarketId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get side => $_getBF(3);
  @$pb.TagNumber(4)
  set side($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSide() => $_has(3);
  @$pb.TagNumber(4)
  void clearSide() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get price => $_getN(5);
  @$pb.TagNumber(6)
  set price($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get takerFeeRate => $_getIZ(6);
  @$pb.TagNumber(7)
  set takerFeeRate($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTakerFeeRate() => $_has(6);
  @$pb.TagNumber(7)
  void clearTakerFeeRate() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get makerFeeRate => $_getIZ(7);
  @$pb.TagNumber(8)
  set makerFeeRate($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMakerFeeRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearMakerFeeRate() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get takerOperatorFeeRate => $_getIZ(8);
  @$pb.TagNumber(9)
  set takerOperatorFeeRate($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTakerOperatorFeeRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearTakerOperatorFeeRate() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get makerOperatorFeeRate => $_getIZ(9);
  @$pb.TagNumber(10)
  set makerOperatorFeeRate($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMakerOperatorFeeRate() => $_has(9);
  @$pb.TagNumber(10)
  void clearMakerOperatorFeeRate() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get quantity => $_getN(10);
  @$pb.TagNumber(11)
  set quantity($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasQuantity() => $_has(10);
  @$pb.TagNumber(11)
  void clearQuantity() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get amount => $_getN(11);
  @$pb.TagNumber(12)
  set amount($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearAmount() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get lockedBuyFee => $_getN(12);
  @$pb.TagNumber(13)
  set lockedBuyFee($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLockedBuyFee() => $_has(12);
  @$pb.TagNumber(13)
  void clearLockedBuyFee() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get status => $_getIZ(13);
  @$pb.TagNumber(14)
  set status($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStatus() => $_has(13);
  @$pb.TagNumber(14)
  void clearStatus() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get cancelReason => $_getIZ(14);
  @$pb.TagNumber(15)
  set cancelReason($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCancelReason() => $_has(14);
  @$pb.TagNumber(15)
  void clearCancelReason() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get executedQuantity => $_getN(15);
  @$pb.TagNumber(16)
  set executedQuantity($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasExecutedQuantity() => $_has(15);
  @$pb.TagNumber(16)
  void clearExecutedQuantity() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get executedAmount => $_getN(16);
  @$pb.TagNumber(17)
  set executedAmount($core.List<$core.int> v) { $_setBytes(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasExecutedAmount() => $_has(16);
  @$pb.TagNumber(17)
  void clearExecutedAmount() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get executedBaseFee => $_getN(17);
  @$pb.TagNumber(18)
  set executedBaseFee($core.List<$core.int> v) { $_setBytes(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasExecutedBaseFee() => $_has(17);
  @$pb.TagNumber(18)
  void clearExecutedBaseFee() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$core.int> get executedOperatorFee => $_getN(18);
  @$pb.TagNumber(19)
  set executedOperatorFee($core.List<$core.int> v) { $_setBytes(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasExecutedOperatorFee() => $_has(18);
  @$pb.TagNumber(19)
  void clearExecutedOperatorFee() => clearField(19);

  @$pb.TagNumber(20)
  $core.List<$core.int> get refundToken => $_getN(19);
  @$pb.TagNumber(20)
  set refundToken($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasRefundToken() => $_has(19);
  @$pb.TagNumber(20)
  void clearRefundToken() => clearField(20);

  @$pb.TagNumber(21)
  $core.List<$core.int> get refundQuantity => $_getN(20);
  @$pb.TagNumber(21)
  set refundQuantity($core.List<$core.int> v) { $_setBytes(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasRefundQuantity() => $_has(20);
  @$pb.TagNumber(21)
  void clearRefundQuantity() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get timestamp => $_getI64(21);
  @$pb.TagNumber(22)
  set timestamp($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasTimestamp() => $_has(21);
  @$pb.TagNumber(22)
  void clearTimestamp() => clearField(22);

  @$pb.TagNumber(23)
  $core.List<$core.int> get agent => $_getN(22);
  @$pb.TagNumber(23)
  set agent($core.List<$core.int> v) { $_setBytes(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasAgent() => $_has(22);
  @$pb.TagNumber(23)
  void clearAgent() => clearField(23);

  @$pb.TagNumber(24)
  $core.List<$core.int> get sendHash => $_getN(23);
  @$pb.TagNumber(24)
  set sendHash($core.List<$core.int> v) { $_setBytes(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasSendHash() => $_has(23);
  @$pb.TagNumber(24)
  void clearSendHash() => clearField(24);

  @$pb.TagNumber(25)
  $core.List<$core.int> get marketOrderAmtThreshold => $_getN(24);
  @$pb.TagNumber(25)
  set marketOrderAmtThreshold($core.List<$core.int> v) { $_setBytes(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasMarketOrderAmtThreshold() => $_has(24);
  @$pb.TagNumber(25)
  void clearMarketOrderAmtThreshold() => clearField(25);
}

class SerialNo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SerialNo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'No', $pb.PbFieldType.O3, protoName: 'No')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..hasRequiredFields = false
  ;

  SerialNo._() : super();
  factory SerialNo({
    $core.int? no,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (no != null) {
      _result.no = no;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory SerialNo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SerialNo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SerialNo clone() => SerialNo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SerialNo copyWith(void Function(SerialNo) updates) => super.copyWith((message) => updates(message as SerialNo)) as SerialNo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SerialNo create() => SerialNo._();
  SerialNo createEmptyInstance() => create();
  static $pb.PbList<SerialNo> createRepeated() => $pb.PbList<SerialNo>();
  @$core.pragma('dart2js:noInline')
  static SerialNo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SerialNo>(create);
  static SerialNo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get no => $_getIZ(0);
  @$pb.TagNumber(1)
  set no($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.OY, protoName: 'Id')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerSide', protoName: 'TakerSide')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerId', $pb.PbFieldType.OY, protoName: 'TakerId')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerId', $pb.PbFieldType.OY, protoName: 'MakerId')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Price', $pb.PbFieldType.OY, protoName: 'Price')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Quantity', $pb.PbFieldType.OY, protoName: 'Quantity')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerFee', $pb.PbFieldType.OY, protoName: 'TakerFee')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerFee', $pb.PbFieldType.OY, protoName: 'MakerFee')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerOperatorFee', $pb.PbFieldType.OY, protoName: 'TakerOperatorFee')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerOperatorFee', $pb.PbFieldType.OY, protoName: 'MakerOperatorFee')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction({
    $core.List<$core.int>? id,
    $core.bool? takerSide,
    $core.List<$core.int>? takerId,
    $core.List<$core.int>? makerId,
    $core.List<$core.int>? price,
    $core.List<$core.int>? quantity,
    $core.List<$core.int>? amount,
    $core.List<$core.int>? takerFee,
    $core.List<$core.int>? makerFee,
    $core.List<$core.int>? takerOperatorFee,
    $core.List<$core.int>? makerOperatorFee,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (takerSide != null) {
      _result.takerSide = takerSide;
    }
    if (takerId != null) {
      _result.takerId = takerId;
    }
    if (makerId != null) {
      _result.makerId = makerId;
    }
    if (price != null) {
      _result.price = price;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (takerFee != null) {
      _result.takerFee = takerFee;
    }
    if (makerFee != null) {
      _result.makerFee = makerFee;
    }
    if (takerOperatorFee != null) {
      _result.takerOperatorFee = takerOperatorFee;
    }
    if (makerOperatorFee != null) {
      _result.makerOperatorFee = makerOperatorFee;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get takerSide => $_getBF(1);
  @$pb.TagNumber(2)
  set takerSide($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTakerSide() => $_has(1);
  @$pb.TagNumber(2)
  void clearTakerSide() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get takerId => $_getN(2);
  @$pb.TagNumber(3)
  set takerId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTakerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTakerId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get makerId => $_getN(3);
  @$pb.TagNumber(4)
  set makerId($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMakerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearMakerId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get quantity => $_getN(5);
  @$pb.TagNumber(6)
  set quantity($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuantity() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuantity() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get amount => $_getN(6);
  @$pb.TagNumber(7)
  set amount($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAmount() => $_has(6);
  @$pb.TagNumber(7)
  void clearAmount() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get takerFee => $_getN(7);
  @$pb.TagNumber(8)
  set takerFee($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTakerFee() => $_has(7);
  @$pb.TagNumber(8)
  void clearTakerFee() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get makerFee => $_getN(8);
  @$pb.TagNumber(9)
  set makerFee($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMakerFee() => $_has(8);
  @$pb.TagNumber(9)
  void clearMakerFee() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get takerOperatorFee => $_getN(9);
  @$pb.TagNumber(10)
  set takerOperatorFee($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTakerOperatorFee() => $_has(9);
  @$pb.TagNumber(10)
  void clearTakerOperatorFee() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get makerOperatorFee => $_getN(10);
  @$pb.TagNumber(11)
  set makerOperatorFee($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMakerOperatorFee() => $_has(10);
  @$pb.TagNumber(11)
  void clearMakerOperatorFee() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get timestamp => $_getI64(11);
  @$pb.TagNumber(12)
  set timestamp($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTimestamp() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimestamp() => clearField(12);
}

class TokenInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TokenId', $pb.PbFieldType.OY, protoName: 'TokenId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Decimals', $pb.PbFieldType.O3, protoName: 'Decimals')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Symbol', protoName: 'Symbol')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Index', $pb.PbFieldType.O3, protoName: 'Index')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Owner', $pb.PbFieldType.OY, protoName: 'Owner')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..hasRequiredFields = false
  ;

  TokenInfo._() : super();
  factory TokenInfo({
    $core.List<$core.int>? tokenId,
    $core.int? decimals,
    $core.String? symbol,
    $core.int? index,
    $core.List<$core.int>? owner,
    $core.int? quoteTokenType,
  }) {
    final _result = create();
    if (tokenId != null) {
      _result.tokenId = tokenId;
    }
    if (decimals != null) {
      _result.decimals = decimals;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (index != null) {
      _result.index = index;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    return _result;
  }
  factory TokenInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenInfo clone() => TokenInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenInfo copyWith(void Function(TokenInfo) updates) => super.copyWith((message) => updates(message as TokenInfo)) as TokenInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenInfo create() => TokenInfo._();
  TokenInfo createEmptyInstance() => create();
  static $pb.PbList<TokenInfo> createRepeated() => $pb.PbList<TokenInfo>();
  @$core.pragma('dart2js:noInline')
  static TokenInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenInfo>(create);
  static TokenInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tokenId => $_getN(0);
  @$pb.TagNumber(1)
  set tokenId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get decimals => $_getIZ(1);
  @$pb.TagNumber(2)
  set decimals($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDecimals() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecimals() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get index => $_getIZ(3);
  @$pb.TagNumber(4)
  set index($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get owner => $_getN(4);
  @$pb.TagNumber(5)
  set owner($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get quoteTokenType => $_getIZ(5);
  @$pb.TagNumber(6)
  set quoteTokenType($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuoteTokenType() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuoteTokenType() => clearField(6);
}

class MarketInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketId', $pb.PbFieldType.O3, protoName: 'MarketId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketSymbol', protoName: 'MarketSymbol')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeToken', $pb.PbFieldType.OY, protoName: 'TradeToken')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteToken', $pb.PbFieldType.OY, protoName: 'QuoteToken')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeTokenDecimals', $pb.PbFieldType.O3, protoName: 'TradeTokenDecimals')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenDecimals', $pb.PbFieldType.O3, protoName: 'QuoteTokenDecimals')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'TakerOperatorFeeRate')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'MakerOperatorFeeRate')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AllowMining', protoName: 'AllowMining')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Valid', protoName: 'Valid')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Owner', $pb.PbFieldType.OY, protoName: 'Owner')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Creator', $pb.PbFieldType.OY, protoName: 'Creator')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Stopped', protoName: 'Stopped')
    ..aInt64(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StableMarket', protoName: 'StableMarket')
    ..hasRequiredFields = false
  ;

  MarketInfo._() : super();
  factory MarketInfo({
    $core.int? marketId,
    $core.String? marketSymbol,
    $core.List<$core.int>? tradeToken,
    $core.List<$core.int>? quoteToken,
    $core.int? quoteTokenType,
    $core.int? tradeTokenDecimals,
    $core.int? quoteTokenDecimals,
    $core.int? takerOperatorFeeRate,
    $core.int? makerOperatorFeeRate,
    $core.bool? allowMining,
    $core.bool? valid,
    $core.List<$core.int>? owner,
    $core.List<$core.int>? creator,
    $core.bool? stopped,
    $fixnum.Int64? timestamp,
    $core.bool? stableMarket,
  }) {
    final _result = create();
    if (marketId != null) {
      _result.marketId = marketId;
    }
    if (marketSymbol != null) {
      _result.marketSymbol = marketSymbol;
    }
    if (tradeToken != null) {
      _result.tradeToken = tradeToken;
    }
    if (quoteToken != null) {
      _result.quoteToken = quoteToken;
    }
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    if (tradeTokenDecimals != null) {
      _result.tradeTokenDecimals = tradeTokenDecimals;
    }
    if (quoteTokenDecimals != null) {
      _result.quoteTokenDecimals = quoteTokenDecimals;
    }
    if (takerOperatorFeeRate != null) {
      _result.takerOperatorFeeRate = takerOperatorFeeRate;
    }
    if (makerOperatorFeeRate != null) {
      _result.makerOperatorFeeRate = makerOperatorFeeRate;
    }
    if (allowMining != null) {
      _result.allowMining = allowMining;
    }
    if (valid != null) {
      _result.valid = valid;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (creator != null) {
      _result.creator = creator;
    }
    if (stopped != null) {
      _result.stopped = stopped;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (stableMarket != null) {
      _result.stableMarket = stableMarket;
    }
    return _result;
  }
  factory MarketInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketInfo clone() => MarketInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketInfo copyWith(void Function(MarketInfo) updates) => super.copyWith((message) => updates(message as MarketInfo)) as MarketInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketInfo create() => MarketInfo._();
  MarketInfo createEmptyInstance() => create();
  static $pb.PbList<MarketInfo> createRepeated() => $pb.PbList<MarketInfo>();
  @$core.pragma('dart2js:noInline')
  static MarketInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketInfo>(create);
  static MarketInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get marketId => $_getIZ(0);
  @$pb.TagNumber(1)
  set marketId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get marketSymbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set marketSymbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarketSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarketSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get tradeToken => $_getN(2);
  @$pb.TagNumber(3)
  set tradeToken($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTradeToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearTradeToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get quoteToken => $_getN(3);
  @$pb.TagNumber(4)
  set quoteToken($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuoteToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuoteToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get quoteTokenType => $_getIZ(4);
  @$pb.TagNumber(5)
  set quoteTokenType($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasQuoteTokenType() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuoteTokenType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tradeTokenDecimals => $_getIZ(5);
  @$pb.TagNumber(6)
  set tradeTokenDecimals($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTradeTokenDecimals() => $_has(5);
  @$pb.TagNumber(6)
  void clearTradeTokenDecimals() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get quoteTokenDecimals => $_getIZ(6);
  @$pb.TagNumber(7)
  set quoteTokenDecimals($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuoteTokenDecimals() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuoteTokenDecimals() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get takerOperatorFeeRate => $_getIZ(7);
  @$pb.TagNumber(8)
  set takerOperatorFeeRate($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTakerOperatorFeeRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearTakerOperatorFeeRate() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get makerOperatorFeeRate => $_getIZ(8);
  @$pb.TagNumber(9)
  set makerOperatorFeeRate($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMakerOperatorFeeRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearMakerOperatorFeeRate() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get allowMining => $_getBF(9);
  @$pb.TagNumber(10)
  set allowMining($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAllowMining() => $_has(9);
  @$pb.TagNumber(10)
  void clearAllowMining() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get valid => $_getBF(10);
  @$pb.TagNumber(11)
  set valid($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasValid() => $_has(10);
  @$pb.TagNumber(11)
  void clearValid() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get owner => $_getN(11);
  @$pb.TagNumber(12)
  set owner($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOwner() => $_has(11);
  @$pb.TagNumber(12)
  void clearOwner() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get creator => $_getN(12);
  @$pb.TagNumber(13)
  set creator($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreator() => $_has(12);
  @$pb.TagNumber(13)
  void clearCreator() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get stopped => $_getBF(13);
  @$pb.TagNumber(14)
  set stopped($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStopped() => $_has(13);
  @$pb.TagNumber(14)
  void clearStopped() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get timestamp => $_getI64(14);
  @$pb.TagNumber(15)
  set timestamp($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasTimestamp() => $_has(14);
  @$pb.TagNumber(15)
  void clearTimestamp() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get stableMarket => $_getBF(15);
  @$pb.TagNumber(16)
  set stableMarket($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasStableMarket() => $_has(15);
  @$pb.TagNumber(16)
  void clearStableMarket() => clearField(16);
}

class NewOrderInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewOrderInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aOM<Order>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Order', protoName: 'Order', subBuilder: Order.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeToken', $pb.PbFieldType.OY, protoName: 'TradeToken')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteToken', $pb.PbFieldType.OY, protoName: 'QuoteToken')
    ..hasRequiredFields = false
  ;

  NewOrderInfo._() : super();
  factory NewOrderInfo({
    Order? order,
    $core.List<$core.int>? tradeToken,
    $core.List<$core.int>? quoteToken,
  }) {
    final _result = create();
    if (order != null) {
      _result.order = order;
    }
    if (tradeToken != null) {
      _result.tradeToken = tradeToken;
    }
    if (quoteToken != null) {
      _result.quoteToken = quoteToken;
    }
    return _result;
  }
  factory NewOrderInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewOrderInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewOrderInfo clone() => NewOrderInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewOrderInfo copyWith(void Function(NewOrderInfo) updates) => super.copyWith((message) => updates(message as NewOrderInfo)) as NewOrderInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewOrderInfo create() => NewOrderInfo._();
  NewOrderInfo createEmptyInstance() => create();
  static $pb.PbList<NewOrderInfo> createRepeated() => $pb.PbList<NewOrderInfo>();
  @$core.pragma('dart2js:noInline')
  static NewOrderInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewOrderInfo>(create);
  static NewOrderInfo? _defaultInstance;

  @$pb.TagNumber(1)
  Order get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(Order v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  Order ensureOrder() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tradeToken => $_getN(1);
  @$pb.TagNumber(2)
  set tradeToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTradeToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearTradeToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get quoteToken => $_getN(2);
  @$pb.TagNumber(3)
  set quoteToken($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuoteToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuoteToken() => clearField(3);
}

class OrderUpdateInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderUpdateInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.OY, protoName: 'Id')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeToken', $pb.PbFieldType.OY, protoName: 'TradeToken')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteToken', $pb.PbFieldType.OY, protoName: 'QuoteToken')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.O3, protoName: 'Status')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CancelReason', $pb.PbFieldType.O3, protoName: 'CancelReason')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedQuantity', $pb.PbFieldType.OY, protoName: 'ExecutedQuantity')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedAmount', $pb.PbFieldType.OY, protoName: 'ExecutedAmount')
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedBaseFee', $pb.PbFieldType.OY, protoName: 'ExecutedBaseFee')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExecutedOperatorFee', $pb.PbFieldType.OY, protoName: 'ExecutedOperatorFee')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefundToken', $pb.PbFieldType.OY, protoName: 'RefundToken')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RefundQuantity', $pb.PbFieldType.OY, protoName: 'RefundQuantity')
    ..hasRequiredFields = false
  ;

  OrderUpdateInfo._() : super();
  factory OrderUpdateInfo({
    $core.List<$core.int>? id,
    $core.List<$core.int>? tradeToken,
    $core.List<$core.int>? quoteToken,
    $core.int? status,
    $core.int? cancelReason,
    $core.List<$core.int>? executedQuantity,
    $core.List<$core.int>? executedAmount,
    $core.List<$core.int>? executedBaseFee,
    $core.List<$core.int>? executedOperatorFee,
    $core.List<$core.int>? refundToken,
    $core.List<$core.int>? refundQuantity,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (tradeToken != null) {
      _result.tradeToken = tradeToken;
    }
    if (quoteToken != null) {
      _result.quoteToken = quoteToken;
    }
    if (status != null) {
      _result.status = status;
    }
    if (cancelReason != null) {
      _result.cancelReason = cancelReason;
    }
    if (executedQuantity != null) {
      _result.executedQuantity = executedQuantity;
    }
    if (executedAmount != null) {
      _result.executedAmount = executedAmount;
    }
    if (executedBaseFee != null) {
      _result.executedBaseFee = executedBaseFee;
    }
    if (executedOperatorFee != null) {
      _result.executedOperatorFee = executedOperatorFee;
    }
    if (refundToken != null) {
      _result.refundToken = refundToken;
    }
    if (refundQuantity != null) {
      _result.refundQuantity = refundQuantity;
    }
    return _result;
  }
  factory OrderUpdateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderUpdateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderUpdateInfo clone() => OrderUpdateInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderUpdateInfo copyWith(void Function(OrderUpdateInfo) updates) => super.copyWith((message) => updates(message as OrderUpdateInfo)) as OrderUpdateInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderUpdateInfo create() => OrderUpdateInfo._();
  OrderUpdateInfo createEmptyInstance() => create();
  static $pb.PbList<OrderUpdateInfo> createRepeated() => $pb.PbList<OrderUpdateInfo>();
  @$core.pragma('dart2js:noInline')
  static OrderUpdateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderUpdateInfo>(create);
  static OrderUpdateInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tradeToken => $_getN(1);
  @$pb.TagNumber(2)
  set tradeToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTradeToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearTradeToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get quoteToken => $_getN(2);
  @$pb.TagNumber(3)
  set quoteToken($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuoteToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuoteToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cancelReason => $_getIZ(4);
  @$pb.TagNumber(5)
  set cancelReason($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCancelReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearCancelReason() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get executedQuantity => $_getN(5);
  @$pb.TagNumber(6)
  set executedQuantity($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExecutedQuantity() => $_has(5);
  @$pb.TagNumber(6)
  void clearExecutedQuantity() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get executedAmount => $_getN(6);
  @$pb.TagNumber(7)
  set executedAmount($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExecutedAmount() => $_has(6);
  @$pb.TagNumber(7)
  void clearExecutedAmount() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get executedBaseFee => $_getN(7);
  @$pb.TagNumber(8)
  set executedBaseFee($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExecutedBaseFee() => $_has(7);
  @$pb.TagNumber(8)
  void clearExecutedBaseFee() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get executedOperatorFee => $_getN(8);
  @$pb.TagNumber(9)
  set executedOperatorFee($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExecutedOperatorFee() => $_has(8);
  @$pb.TagNumber(9)
  void clearExecutedOperatorFee() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get refundToken => $_getN(9);
  @$pb.TagNumber(10)
  set refundToken($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRefundToken() => $_has(9);
  @$pb.TagNumber(10)
  void clearRefundToken() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get refundQuantity => $_getN(10);
  @$pb.TagNumber(11)
  set refundQuantity($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRefundQuantity() => $_has(10);
  @$pb.TagNumber(11)
  void clearRefundQuantity() => clearField(11);
}

class NewMarketAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewMarketAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeToken', $pb.PbFieldType.OY, protoName: 'TradeToken')
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokens', $pb.PbFieldType.PY, protoName: 'QuoteTokens')
    ..hasRequiredFields = false
  ;

  NewMarketAction._() : super();
  factory NewMarketAction({
    $core.List<$core.int>? tradeToken,
    $core.Iterable<$core.List<$core.int>>? quoteTokens,
  }) {
    final _result = create();
    if (tradeToken != null) {
      _result.tradeToken = tradeToken;
    }
    if (quoteTokens != null) {
      _result.quoteTokens.addAll(quoteTokens);
    }
    return _result;
  }
  factory NewMarketAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewMarketAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewMarketAction clone() => NewMarketAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewMarketAction copyWith(void Function(NewMarketAction) updates) => super.copyWith((message) => updates(message as NewMarketAction)) as NewMarketAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewMarketAction create() => NewMarketAction._();
  NewMarketAction createEmptyInstance() => create();
  static $pb.PbList<NewMarketAction> createRepeated() => $pb.PbList<NewMarketAction>();
  @$core.pragma('dart2js:noInline')
  static NewMarketAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewMarketAction>(create);
  static NewMarketAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tradeToken => $_getN(0);
  @$pb.TagNumber(1)
  set tradeToken($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTradeToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearTradeToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get quoteTokens => $_getList(1);
}

class PendingNewMarkets extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingNewMarkets', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<NewMarketAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PendingActions', $pb.PbFieldType.PM, protoName: 'PendingActions', subBuilder: NewMarketAction.create)
    ..hasRequiredFields = false
  ;

  PendingNewMarkets._() : super();
  factory PendingNewMarkets({
    $core.Iterable<NewMarketAction>? pendingActions,
  }) {
    final _result = create();
    if (pendingActions != null) {
      _result.pendingActions.addAll(pendingActions);
    }
    return _result;
  }
  factory PendingNewMarkets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingNewMarkets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingNewMarkets clone() => PendingNewMarkets()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingNewMarkets copyWith(void Function(PendingNewMarkets) updates) => super.copyWith((message) => updates(message as PendingNewMarkets)) as PendingNewMarkets; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingNewMarkets create() => PendingNewMarkets._();
  PendingNewMarkets createEmptyInstance() => create();
  static $pb.PbList<PendingNewMarkets> createRepeated() => $pb.PbList<PendingNewMarkets>();
  @$core.pragma('dart2js:noInline')
  static PendingNewMarkets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingNewMarkets>(create);
  static PendingNewMarkets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NewMarketAction> get pendingActions => $_getList(0);
}

class SetQuoteTokenAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetQuoteTokenAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', $pb.PbFieldType.OY, protoName: 'Token')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..hasRequiredFields = false
  ;

  SetQuoteTokenAction._() : super();
  factory SetQuoteTokenAction({
    $core.List<$core.int>? token,
    $core.int? quoteTokenType,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    return _result;
  }
  factory SetQuoteTokenAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetQuoteTokenAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetQuoteTokenAction clone() => SetQuoteTokenAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetQuoteTokenAction copyWith(void Function(SetQuoteTokenAction) updates) => super.copyWith((message) => updates(message as SetQuoteTokenAction)) as SetQuoteTokenAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetQuoteTokenAction create() => SetQuoteTokenAction._();
  SetQuoteTokenAction createEmptyInstance() => create();
  static $pb.PbList<SetQuoteTokenAction> createRepeated() => $pb.PbList<SetQuoteTokenAction>();
  @$core.pragma('dart2js:noInline')
  static SetQuoteTokenAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetQuoteTokenAction>(create);
  static SetQuoteTokenAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quoteTokenType => $_getIZ(1);
  @$pb.TagNumber(2)
  set quoteTokenType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuoteTokenType() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuoteTokenType() => clearField(2);
}

class PendingSetQuoteTokenActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingSetQuoteTokenActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<SetQuoteTokenAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingActions', $pb.PbFieldType.PM, protoName: 'pendingActions', subBuilder: SetQuoteTokenAction.create)
    ..hasRequiredFields = false
  ;

  PendingSetQuoteTokenActions._() : super();
  factory PendingSetQuoteTokenActions({
    $core.Iterable<SetQuoteTokenAction>? pendingActions,
  }) {
    final _result = create();
    if (pendingActions != null) {
      _result.pendingActions.addAll(pendingActions);
    }
    return _result;
  }
  factory PendingSetQuoteTokenActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingSetQuoteTokenActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingSetQuoteTokenActions clone() => PendingSetQuoteTokenActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingSetQuoteTokenActions copyWith(void Function(PendingSetQuoteTokenActions) updates) => super.copyWith((message) => updates(message as PendingSetQuoteTokenActions)) as PendingSetQuoteTokenActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingSetQuoteTokenActions create() => PendingSetQuoteTokenActions._();
  PendingSetQuoteTokenActions createEmptyInstance() => create();
  static $pb.PbList<PendingSetQuoteTokenActions> createRepeated() => $pb.PbList<PendingSetQuoteTokenActions>();
  @$core.pragma('dart2js:noInline')
  static PendingSetQuoteTokenActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingSetQuoteTokenActions>(create);
  static PendingSetQuoteTokenActions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SetQuoteTokenAction> get pendingActions => $_getList(0);
}

class TransferTokenOwnerAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferTokenOwnerAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Origin', $pb.PbFieldType.OY, protoName: 'Origin')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'New', $pb.PbFieldType.OY, protoName: 'New')
    ..hasRequiredFields = false
  ;

  TransferTokenOwnerAction._() : super();
  factory TransferTokenOwnerAction({
    $core.List<$core.int>? token,
    $core.List<$core.int>? origin,
    $core.List<$core.int>? new_3,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (origin != null) {
      _result.origin = origin;
    }
    if (new_3 != null) {
      _result.new_3 = new_3;
    }
    return _result;
  }
  factory TransferTokenOwnerAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferTokenOwnerAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferTokenOwnerAction clone() => TransferTokenOwnerAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferTokenOwnerAction copyWith(void Function(TransferTokenOwnerAction) updates) => super.copyWith((message) => updates(message as TransferTokenOwnerAction)) as TransferTokenOwnerAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferTokenOwnerAction create() => TransferTokenOwnerAction._();
  TransferTokenOwnerAction createEmptyInstance() => create();
  static $pb.PbList<TransferTokenOwnerAction> createRepeated() => $pb.PbList<TransferTokenOwnerAction>();
  @$core.pragma('dart2js:noInline')
  static TransferTokenOwnerAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferTokenOwnerAction>(create);
  static TransferTokenOwnerAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get origin => $_getN(1);
  @$pb.TagNumber(2)
  set origin($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get new_3 => $_getN(2);
  @$pb.TagNumber(3)
  set new_3($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNew_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearNew_3() => clearField(3);
}

class PendingTransferTokenOwnerActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingTransferTokenOwnerActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<TransferTokenOwnerAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingActions', $pb.PbFieldType.PM, protoName: 'pendingActions', subBuilder: TransferTokenOwnerAction.create)
    ..hasRequiredFields = false
  ;

  PendingTransferTokenOwnerActions._() : super();
  factory PendingTransferTokenOwnerActions({
    $core.Iterable<TransferTokenOwnerAction>? pendingActions,
  }) {
    final _result = create();
    if (pendingActions != null) {
      _result.pendingActions.addAll(pendingActions);
    }
    return _result;
  }
  factory PendingTransferTokenOwnerActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingTransferTokenOwnerActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingTransferTokenOwnerActions clone() => PendingTransferTokenOwnerActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingTransferTokenOwnerActions copyWith(void Function(PendingTransferTokenOwnerActions) updates) => super.copyWith((message) => updates(message as PendingTransferTokenOwnerActions)) as PendingTransferTokenOwnerActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingTransferTokenOwnerActions create() => PendingTransferTokenOwnerActions._();
  PendingTransferTokenOwnerActions createEmptyInstance() => create();
  static $pb.PbList<PendingTransferTokenOwnerActions> createRepeated() => $pb.PbList<PendingTransferTokenOwnerActions>();
  @$core.pragma('dart2js:noInline')
  static PendingTransferTokenOwnerActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingTransferTokenOwnerActions>(create);
  static PendingTransferTokenOwnerActions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransferTokenOwnerAction> get pendingActions => $_getList(0);
}

