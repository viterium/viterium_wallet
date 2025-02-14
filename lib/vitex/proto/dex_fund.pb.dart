///
//  Generated code. Do not modify.
//  source: dex_fund.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Account', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', $pb.PbFieldType.OY, protoName: 'Token')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Available', $pb.PbFieldType.OY, protoName: 'Available')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Locked', $pb.PbFieldType.OY, protoName: 'Locked')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VxLocked', $pb.PbFieldType.OY, protoName: 'VxLocked')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VxUnlocking', $pb.PbFieldType.OY, protoName: 'VxUnlocking')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CancellingStake', $pb.PbFieldType.OY, protoName: 'CancellingStake')
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    $core.List<$core.int>? token,
    $core.List<$core.int>? available,
    $core.List<$core.int>? locked,
    $core.List<$core.int>? vxLocked,
    $core.List<$core.int>? vxUnlocking,
    $core.List<$core.int>? cancellingStake,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (available != null) {
      _result.available = available;
    }
    if (locked != null) {
      _result.locked = locked;
    }
    if (vxLocked != null) {
      _result.vxLocked = vxLocked;
    }
    if (vxUnlocking != null) {
      _result.vxUnlocking = vxUnlocking;
    }
    if (cancellingStake != null) {
      _result.cancellingStake = cancellingStake;
    }
    return _result;
  }
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get available => $_getN(1);
  @$pb.TagNumber(2)
  set available($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvailable() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvailable() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get locked => $_getN(2);
  @$pb.TagNumber(3)
  set locked($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocked() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocked() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get vxLocked => $_getN(3);
  @$pb.TagNumber(4)
  set vxLocked($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVxLocked() => $_has(3);
  @$pb.TagNumber(4)
  void clearVxLocked() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get vxUnlocking => $_getN(4);
  @$pb.TagNumber(5)
  set vxUnlocking($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVxUnlocking() => $_has(4);
  @$pb.TagNumber(5)
  void clearVxUnlocking() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get cancellingStake => $_getN(5);
  @$pb.TagNumber(6)
  set cancellingStake($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCancellingStake() => $_has(5);
  @$pb.TagNumber(6)
  void clearCancellingStake() => clearField(6);
}

class VxUnlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxUnlock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PeriodId', $pb.PbFieldType.OU6, protoName: 'PeriodId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  VxUnlock._() : super();
  factory VxUnlock({
    $fixnum.Int64? periodId,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (periodId != null) {
      _result.periodId = periodId;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory VxUnlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxUnlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxUnlock clone() => VxUnlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxUnlock copyWith(void Function(VxUnlock) updates) => super.copyWith((message) => updates(message as VxUnlock)) as VxUnlock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxUnlock create() => VxUnlock._();
  VxUnlock createEmptyInstance() => create();
  static $pb.PbList<VxUnlock> createRepeated() => $pb.PbList<VxUnlock>();
  @$core.pragma('dart2js:noInline')
  static VxUnlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxUnlock>(create);
  static VxUnlock? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get periodId => $_getI64(0);
  @$pb.TagNumber(1)
  set periodId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriodId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class VxUnlocks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxUnlocks', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<VxUnlock>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Unlocks', $pb.PbFieldType.PM, protoName: 'Unlocks', subBuilder: VxUnlock.create)
    ..hasRequiredFields = false
  ;

  VxUnlocks._() : super();
  factory VxUnlocks({
    $core.Iterable<VxUnlock>? unlocks,
  }) {
    final _result = create();
    if (unlocks != null) {
      _result.unlocks.addAll(unlocks);
    }
    return _result;
  }
  factory VxUnlocks.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxUnlocks.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxUnlocks clone() => VxUnlocks()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxUnlocks copyWith(void Function(VxUnlocks) updates) => super.copyWith((message) => updates(message as VxUnlocks)) as VxUnlocks; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxUnlocks create() => VxUnlocks._();
  VxUnlocks createEmptyInstance() => create();
  static $pb.PbList<VxUnlocks> createRepeated() => $pb.PbList<VxUnlocks>();
  @$core.pragma('dart2js:noInline')
  static VxUnlocks getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxUnlocks>(create);
  static VxUnlocks? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VxUnlock> get unlocks => $_getList(0);
}

class CancelStake extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelStake', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PeriodId', $pb.PbFieldType.OU6, protoName: 'PeriodId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  CancelStake._() : super();
  factory CancelStake({
    $fixnum.Int64? periodId,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (periodId != null) {
      _result.periodId = periodId;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory CancelStake.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelStake.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelStake clone() => CancelStake()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelStake copyWith(void Function(CancelStake) updates) => super.copyWith((message) => updates(message as CancelStake)) as CancelStake; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelStake create() => CancelStake._();
  CancelStake createEmptyInstance() => create();
  static $pb.PbList<CancelStake> createRepeated() => $pb.PbList<CancelStake>();
  @$core.pragma('dart2js:noInline')
  static CancelStake getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelStake>(create);
  static CancelStake? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get periodId => $_getI64(0);
  @$pb.TagNumber(1)
  set periodId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriodId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class CancelStakes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelStakes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<CancelStake>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Cancels', $pb.PbFieldType.PM, protoName: 'Cancels', subBuilder: CancelStake.create)
    ..hasRequiredFields = false
  ;

  CancelStakes._() : super();
  factory CancelStakes({
    $core.Iterable<CancelStake>? cancels,
  }) {
    final _result = create();
    if (cancels != null) {
      _result.cancels.addAll(cancels);
    }
    return _result;
  }
  factory CancelStakes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelStakes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelStakes clone() => CancelStakes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelStakes copyWith(void Function(CancelStakes) updates) => super.copyWith((message) => updates(message as CancelStakes)) as CancelStakes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelStakes create() => CancelStakes._();
  CancelStakes createEmptyInstance() => create();
  static $pb.PbList<CancelStakes> createRepeated() => $pb.PbList<CancelStakes>();
  @$core.pragma('dart2js:noInline')
  static CancelStakes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelStakes>(create);
  static CancelStakes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CancelStake> get cancels => $_getList(0);
}

class Fund extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Fund', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..pc<Account>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Accounts', $pb.PbFieldType.PM, protoName: 'Accounts', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  Fund._() : super();
  factory Fund({
    $core.List<$core.int>? address,
    $core.Iterable<Account>? accounts,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (accounts != null) {
      _result.accounts.addAll(accounts);
    }
    return _result;
  }
  factory Fund.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Fund.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Fund clone() => Fund()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Fund copyWith(void Function(Fund) updates) => super.copyWith((message) => updates(message as Fund)) as Fund; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Fund create() => Fund._();
  Fund createEmptyInstance() => create();
  static $pb.PbList<Fund> createRepeated() => $pb.PbList<Fund>();
  @$core.pragma('dart2js:noInline')
  static Fund getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fund>(create);
  static Fund? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Account> get accounts => $_getList(1);
}

class AccountSettle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSettle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsTradeToken', protoName: 'IsTradeToken')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IncAvailable', $pb.PbFieldType.OY, protoName: 'IncAvailable')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReduceLocked', $pb.PbFieldType.OY, protoName: 'ReduceLocked')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReleaseLocked', $pb.PbFieldType.OY, protoName: 'ReleaseLocked')
    ..hasRequiredFields = false
  ;

  AccountSettle._() : super();
  factory AccountSettle({
    $core.bool? isTradeToken,
    $core.List<$core.int>? incAvailable,
    $core.List<$core.int>? reduceLocked,
    $core.List<$core.int>? releaseLocked,
  }) {
    final _result = create();
    if (isTradeToken != null) {
      _result.isTradeToken = isTradeToken;
    }
    if (incAvailable != null) {
      _result.incAvailable = incAvailable;
    }
    if (reduceLocked != null) {
      _result.reduceLocked = reduceLocked;
    }
    if (releaseLocked != null) {
      _result.releaseLocked = releaseLocked;
    }
    return _result;
  }
  factory AccountSettle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSettle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSettle clone() => AccountSettle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSettle copyWith(void Function(AccountSettle) updates) => super.copyWith((message) => updates(message as AccountSettle)) as AccountSettle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSettle create() => AccountSettle._();
  AccountSettle createEmptyInstance() => create();
  static $pb.PbList<AccountSettle> createRepeated() => $pb.PbList<AccountSettle>();
  @$core.pragma('dart2js:noInline')
  static AccountSettle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSettle>(create);
  static AccountSettle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isTradeToken => $_getBF(0);
  @$pb.TagNumber(1)
  set isTradeToken($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsTradeToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsTradeToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get incAvailable => $_getN(1);
  @$pb.TagNumber(2)
  set incAvailable($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncAvailable() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncAvailable() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get reduceLocked => $_getN(2);
  @$pb.TagNumber(3)
  set reduceLocked($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReduceLocked() => $_has(2);
  @$pb.TagNumber(3)
  void clearReduceLocked() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get releaseLocked => $_getN(3);
  @$pb.TagNumber(4)
  set releaseLocked($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReleaseLocked() => $_has(3);
  @$pb.TagNumber(4)
  void clearReleaseLocked() => clearField(4);
}

class FundSettle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundSettle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..pc<AccountSettle>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountSettles', $pb.PbFieldType.PM, protoName: 'AccountSettles', subBuilder: AccountSettle.create)
    ..hasRequiredFields = false
  ;

  FundSettle._() : super();
  factory FundSettle({
    $core.List<$core.int>? address,
    $core.Iterable<AccountSettle>? accountSettles,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (accountSettles != null) {
      _result.accountSettles.addAll(accountSettles);
    }
    return _result;
  }
  factory FundSettle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundSettle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundSettle clone() => FundSettle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundSettle copyWith(void Function(FundSettle) updates) => super.copyWith((message) => updates(message as FundSettle)) as FundSettle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundSettle create() => FundSettle._();
  FundSettle createEmptyInstance() => create();
  static $pb.PbList<FundSettle> createRepeated() => $pb.PbList<FundSettle>();
  @$core.pragma('dart2js:noInline')
  static FundSettle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundSettle>(create);
  static FundSettle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AccountSettle> get accountSettles => $_getList(1);
}

class FeeSettle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeSettle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BaseFee', $pb.PbFieldType.OY, protoName: 'BaseFee')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OperatorFee', $pb.PbFieldType.OY, protoName: 'OperatorFee')
    ..hasRequiredFields = false
  ;

  FeeSettle._() : super();
  factory FeeSettle({
    $core.List<$core.int>? address,
    $core.List<$core.int>? baseFee,
    $core.List<$core.int>? operatorFee,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (baseFee != null) {
      _result.baseFee = baseFee;
    }
    if (operatorFee != null) {
      _result.operatorFee = operatorFee;
    }
    return _result;
  }
  factory FeeSettle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeSettle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeSettle clone() => FeeSettle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeSettle copyWith(void Function(FeeSettle) updates) => super.copyWith((message) => updates(message as FeeSettle)) as FeeSettle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeSettle create() => FeeSettle._();
  FeeSettle createEmptyInstance() => create();
  static $pb.PbList<FeeSettle> createRepeated() => $pb.PbList<FeeSettle>();
  @$core.pragma('dart2js:noInline')
  static FeeSettle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeSettle>(create);
  static FeeSettle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get baseFee => $_getN(1);
  @$pb.TagNumber(2)
  set baseFee($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseFee() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get operatorFee => $_getN(2);
  @$pb.TagNumber(3)
  set operatorFee($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperatorFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperatorFee() => clearField(3);
}

class SettleActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TradeToken', $pb.PbFieldType.OY, protoName: 'TradeToken')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteToken', $pb.PbFieldType.OY, protoName: 'QuoteToken')
    ..pc<FundSettle>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FundActions', $pb.PbFieldType.PM, protoName: 'FundActions', subBuilder: FundSettle.create)
    ..pc<FeeSettle>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeActions', $pb.PbFieldType.PM, protoName: 'FeeActions', subBuilder: FeeSettle.create)
    ..hasRequiredFields = false
  ;

  SettleActions._() : super();
  factory SettleActions({
    $core.List<$core.int>? tradeToken,
    $core.List<$core.int>? quoteToken,
    $core.Iterable<FundSettle>? fundActions,
    $core.Iterable<FeeSettle>? feeActions,
  }) {
    final _result = create();
    if (tradeToken != null) {
      _result.tradeToken = tradeToken;
    }
    if (quoteToken != null) {
      _result.quoteToken = quoteToken;
    }
    if (fundActions != null) {
      _result.fundActions.addAll(fundActions);
    }
    if (feeActions != null) {
      _result.feeActions.addAll(feeActions);
    }
    return _result;
  }
  factory SettleActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleActions clone() => SettleActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleActions copyWith(void Function(SettleActions) updates) => super.copyWith((message) => updates(message as SettleActions)) as SettleActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleActions create() => SettleActions._();
  SettleActions createEmptyInstance() => create();
  static $pb.PbList<SettleActions> createRepeated() => $pb.PbList<SettleActions>();
  @$core.pragma('dart2js:noInline')
  static SettleActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleActions>(create);
  static SettleActions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tradeToken => $_getN(0);
  @$pb.TagNumber(1)
  set tradeToken($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTradeToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearTradeToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get quoteToken => $_getN(1);
  @$pb.TagNumber(2)
  set quoteToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuoteToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuoteToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<FundSettle> get fundActions => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<FeeSettle> get feeActions => $_getList(3);
}

class FeeForDividend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeForDividend', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', $pb.PbFieldType.OY, protoName: 'Token')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DividendPoolAmount', $pb.PbFieldType.OY, protoName: 'DividendPoolAmount')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NotRoll', protoName: 'NotRoll')
    ..hasRequiredFields = false
  ;

  FeeForDividend._() : super();
  factory FeeForDividend({
    $core.List<$core.int>? token,
    $core.List<$core.int>? dividendPoolAmount,
    $core.bool? notRoll,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (dividendPoolAmount != null) {
      _result.dividendPoolAmount = dividendPoolAmount;
    }
    if (notRoll != null) {
      _result.notRoll = notRoll;
    }
    return _result;
  }
  factory FeeForDividend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeForDividend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeForDividend clone() => FeeForDividend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeForDividend copyWith(void Function(FeeForDividend) updates) => super.copyWith((message) => updates(message as FeeForDividend)) as FeeForDividend; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeForDividend create() => FeeForDividend._();
  FeeForDividend createEmptyInstance() => create();
  static $pb.PbList<FeeForDividend> createRepeated() => $pb.PbList<FeeForDividend>();
  @$core.pragma('dart2js:noInline')
  static FeeForDividend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeForDividend>(create);
  static FeeForDividend? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dividendPoolAmount => $_getN(1);
  @$pb.TagNumber(2)
  set dividendPoolAmount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDividendPoolAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearDividendPoolAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get notRoll => $_getBF(2);
  @$pb.TagNumber(3)
  set notRoll($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotRoll() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotRoll() => clearField(3);
}

class FeeForMine extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeForMine', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BaseAmount', $pb.PbFieldType.OY, protoName: 'BaseAmount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InviteBonusAmount', $pb.PbFieldType.OY, protoName: 'InviteBonusAmount')
    ..hasRequiredFields = false
  ;

  FeeForMine._() : super();
  factory FeeForMine({
    $core.int? quoteTokenType,
    $core.List<$core.int>? baseAmount,
    $core.List<$core.int>? inviteBonusAmount,
  }) {
    final _result = create();
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    if (baseAmount != null) {
      _result.baseAmount = baseAmount;
    }
    if (inviteBonusAmount != null) {
      _result.inviteBonusAmount = inviteBonusAmount;
    }
    return _result;
  }
  factory FeeForMine.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeForMine.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeForMine clone() => FeeForMine()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeForMine copyWith(void Function(FeeForMine) updates) => super.copyWith((message) => updates(message as FeeForMine)) as FeeForMine; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeForMine create() => FeeForMine._();
  FeeForMine createEmptyInstance() => create();
  static $pb.PbList<FeeForMine> createRepeated() => $pb.PbList<FeeForMine>();
  @$core.pragma('dart2js:noInline')
  static FeeForMine getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeForMine>(create);
  static FeeForMine? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get quoteTokenType => $_getIZ(0);
  @$pb.TagNumber(1)
  set quoteTokenType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuoteTokenType() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteTokenType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get baseAmount => $_getN(1);
  @$pb.TagNumber(2)
  set baseAmount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get inviteBonusAmount => $_getN(2);
  @$pb.TagNumber(3)
  set inviteBonusAmount($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteBonusAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteBonusAmount() => clearField(3);
}

class DexFeesByPeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DexFeesByPeriod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<FeeForDividend>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeesForDividend', $pb.PbFieldType.PM, protoName: 'FeesForDividend', subBuilder: FeeForDividend.create)
    ..pc<FeeForMine>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeesForMine', $pb.PbFieldType.PM, protoName: 'FeesForMine', subBuilder: FeeForMine.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastValidPeriod', $pb.PbFieldType.OU6, protoName: 'lastValidPeriod', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FinishDividend', protoName: 'FinishDividend')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FinishMine', protoName: 'FinishMine')
    ..hasRequiredFields = false
  ;

  DexFeesByPeriod._() : super();
  factory DexFeesByPeriod({
    $core.Iterable<FeeForDividend>? feesForDividend,
    $core.Iterable<FeeForMine>? feesForMine,
    $fixnum.Int64? lastValidPeriod,
    $core.bool? finishDividend,
    $core.bool? finishMine,
  }) {
    final _result = create();
    if (feesForDividend != null) {
      _result.feesForDividend.addAll(feesForDividend);
    }
    if (feesForMine != null) {
      _result.feesForMine.addAll(feesForMine);
    }
    if (lastValidPeriod != null) {
      _result.lastValidPeriod = lastValidPeriod;
    }
    if (finishDividend != null) {
      _result.finishDividend = finishDividend;
    }
    if (finishMine != null) {
      _result.finishMine = finishMine;
    }
    return _result;
  }
  factory DexFeesByPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DexFeesByPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DexFeesByPeriod clone() => DexFeesByPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DexFeesByPeriod copyWith(void Function(DexFeesByPeriod) updates) => super.copyWith((message) => updates(message as DexFeesByPeriod)) as DexFeesByPeriod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DexFeesByPeriod create() => DexFeesByPeriod._();
  DexFeesByPeriod createEmptyInstance() => create();
  static $pb.PbList<DexFeesByPeriod> createRepeated() => $pb.PbList<DexFeesByPeriod>();
  @$core.pragma('dart2js:noInline')
  static DexFeesByPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DexFeesByPeriod>(create);
  static DexFeesByPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeeForDividend> get feesForDividend => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<FeeForMine> get feesForMine => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastValidPeriod => $_getI64(2);
  @$pb.TagNumber(3)
  set lastValidPeriod($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastValidPeriod() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastValidPeriod() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get finishDividend => $_getBF(3);
  @$pb.TagNumber(4)
  set finishDividend($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFinishDividend() => $_has(3);
  @$pb.TagNumber(4)
  void clearFinishDividend() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get finishMine => $_getBF(4);
  @$pb.TagNumber(5)
  set finishMine($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFinishMine() => $_has(4);
  @$pb.TagNumber(5)
  void clearFinishMine() => clearField(5);
}

class FeeAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BaseAmount', $pb.PbFieldType.OY, protoName: 'BaseAmount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InviteBonusAmount', $pb.PbFieldType.OY, protoName: 'InviteBonusAmount')
    ..hasRequiredFields = false
  ;

  FeeAccount._() : super();
  factory FeeAccount({
    $core.int? quoteTokenType,
    $core.List<$core.int>? baseAmount,
    $core.List<$core.int>? inviteBonusAmount,
  }) {
    final _result = create();
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    if (baseAmount != null) {
      _result.baseAmount = baseAmount;
    }
    if (inviteBonusAmount != null) {
      _result.inviteBonusAmount = inviteBonusAmount;
    }
    return _result;
  }
  factory FeeAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeAccount clone() => FeeAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeAccount copyWith(void Function(FeeAccount) updates) => super.copyWith((message) => updates(message as FeeAccount)) as FeeAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeAccount create() => FeeAccount._();
  FeeAccount createEmptyInstance() => create();
  static $pb.PbList<FeeAccount> createRepeated() => $pb.PbList<FeeAccount>();
  @$core.pragma('dart2js:noInline')
  static FeeAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeAccount>(create);
  static FeeAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get quoteTokenType => $_getIZ(0);
  @$pb.TagNumber(1)
  set quoteTokenType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuoteTokenType() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteTokenType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get baseAmount => $_getN(1);
  @$pb.TagNumber(2)
  set baseAmount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get inviteBonusAmount => $_getN(2);
  @$pb.TagNumber(3)
  set inviteBonusAmount($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteBonusAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteBonusAmount() => clearField(3);
}

class FeesByPeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeesByPeriod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<FeeAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Fees', $pb.PbFieldType.PM, protoName: 'Fees', subBuilder: FeeAccount.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Period', $pb.PbFieldType.OU6, protoName: 'Period', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  FeesByPeriod._() : super();
  factory FeesByPeriod({
    $core.Iterable<FeeAccount>? fees,
    $fixnum.Int64? period,
  }) {
    final _result = create();
    if (fees != null) {
      _result.fees.addAll(fees);
    }
    if (period != null) {
      _result.period = period;
    }
    return _result;
  }
  factory FeesByPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeesByPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeesByPeriod clone() => FeesByPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeesByPeriod copyWith(void Function(FeesByPeriod) updates) => super.copyWith((message) => updates(message as FeesByPeriod)) as FeesByPeriod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeesByPeriod create() => FeesByPeriod._();
  FeesByPeriod createEmptyInstance() => create();
  static $pb.PbList<FeesByPeriod> createRepeated() => $pb.PbList<FeesByPeriod>();
  @$core.pragma('dart2js:noInline')
  static FeesByPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeesByPeriod>(create);
  static FeesByPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeeAccount> get fees => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get period => $_getI64(1);
  @$pb.TagNumber(2)
  set period($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriod() => clearField(2);
}

class UserFees extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserFees', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<FeesByPeriod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Fees', $pb.PbFieldType.PM, protoName: 'Fees', subBuilder: FeesByPeriod.create)
    ..hasRequiredFields = false
  ;

  UserFees._() : super();
  factory UserFees({
    $core.Iterable<FeesByPeriod>? fees,
  }) {
    final _result = create();
    if (fees != null) {
      _result.fees.addAll(fees);
    }
    return _result;
  }
  factory UserFees.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserFees.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserFees clone() => UserFees()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserFees copyWith(void Function(UserFees) updates) => super.copyWith((message) => updates(message as UserFees)) as UserFees; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserFees create() => UserFees._();
  UserFees createEmptyInstance() => create();
  static $pb.PbList<UserFees> createRepeated() => $pb.PbList<UserFees>();
  @$core.pragma('dart2js:noInline')
  static UserFees getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserFees>(create);
  static UserFees? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeesByPeriod> get fees => $_getList(0);
}

class OperatorMarketFee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OperatorMarketFee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketId', $pb.PbFieldType.O3, protoName: 'MarketId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'TakerOperatorFeeRate')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'MakerOperatorFeeRate')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  OperatorMarketFee._() : super();
  factory OperatorMarketFee({
    $core.int? marketId,
    $core.int? takerOperatorFeeRate,
    $core.int? makerOperatorFeeRate,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (marketId != null) {
      _result.marketId = marketId;
    }
    if (takerOperatorFeeRate != null) {
      _result.takerOperatorFeeRate = takerOperatorFeeRate;
    }
    if (makerOperatorFeeRate != null) {
      _result.makerOperatorFeeRate = makerOperatorFeeRate;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory OperatorMarketFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperatorMarketFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperatorMarketFee clone() => OperatorMarketFee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperatorMarketFee copyWith(void Function(OperatorMarketFee) updates) => super.copyWith((message) => updates(message as OperatorMarketFee)) as OperatorMarketFee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OperatorMarketFee create() => OperatorMarketFee._();
  OperatorMarketFee createEmptyInstance() => create();
  static $pb.PbList<OperatorMarketFee> createRepeated() => $pb.PbList<OperatorMarketFee>();
  @$core.pragma('dart2js:noInline')
  static OperatorMarketFee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperatorMarketFee>(create);
  static OperatorMarketFee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get marketId => $_getIZ(0);
  @$pb.TagNumber(1)
  set marketId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get takerOperatorFeeRate => $_getIZ(1);
  @$pb.TagNumber(2)
  set takerOperatorFeeRate($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTakerOperatorFeeRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTakerOperatorFeeRate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get makerOperatorFeeRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set makerOperatorFeeRate($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMakerOperatorFeeRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearMakerOperatorFeeRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get amount => $_getN(3);
  @$pb.TagNumber(4)
  set amount($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);
}

class OperatorFeeAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OperatorFeeAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', $pb.PbFieldType.OY, protoName: 'Token')
    ..pc<OperatorMarketFee>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketFees', $pb.PbFieldType.PM, protoName: 'MarketFees', subBuilder: OperatorMarketFee.create)
    ..hasRequiredFields = false
  ;

  OperatorFeeAccount._() : super();
  factory OperatorFeeAccount({
    $core.List<$core.int>? token,
    $core.Iterable<OperatorMarketFee>? marketFees,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (marketFees != null) {
      _result.marketFees.addAll(marketFees);
    }
    return _result;
  }
  factory OperatorFeeAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperatorFeeAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperatorFeeAccount clone() => OperatorFeeAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperatorFeeAccount copyWith(void Function(OperatorFeeAccount) updates) => super.copyWith((message) => updates(message as OperatorFeeAccount)) as OperatorFeeAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OperatorFeeAccount create() => OperatorFeeAccount._();
  OperatorFeeAccount createEmptyInstance() => create();
  static $pb.PbList<OperatorFeeAccount> createRepeated() => $pb.PbList<OperatorFeeAccount>();
  @$core.pragma('dart2js:noInline')
  static OperatorFeeAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperatorFeeAccount>(create);
  static OperatorFeeAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<OperatorMarketFee> get marketFees => $_getList(1);
}

class OperatorFeesByPeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OperatorFeesByPeriod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<OperatorFeeAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OperatorFees', $pb.PbFieldType.PM, protoName: 'OperatorFees', subBuilder: OperatorFeeAccount.create)
    ..hasRequiredFields = false
  ;

  OperatorFeesByPeriod._() : super();
  factory OperatorFeesByPeriod({
    $core.Iterable<OperatorFeeAccount>? operatorFees,
  }) {
    final _result = create();
    if (operatorFees != null) {
      _result.operatorFees.addAll(operatorFees);
    }
    return _result;
  }
  factory OperatorFeesByPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperatorFeesByPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperatorFeesByPeriod clone() => OperatorFeesByPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperatorFeesByPeriod copyWith(void Function(OperatorFeesByPeriod) updates) => super.copyWith((message) => updates(message as OperatorFeesByPeriod)) as OperatorFeesByPeriod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OperatorFeesByPeriod create() => OperatorFeesByPeriod._();
  OperatorFeesByPeriod createEmptyInstance() => create();
  static $pb.PbList<OperatorFeesByPeriod> createRepeated() => $pb.PbList<OperatorFeesByPeriod>();
  @$core.pragma('dart2js:noInline')
  static OperatorFeesByPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperatorFeesByPeriod>(create);
  static OperatorFeesByPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OperatorFeeAccount> get operatorFees => $_getList(0);
}

class VxFundByPeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxFundByPeriod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Period', $pb.PbFieldType.OU6, protoName: 'Period', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  VxFundByPeriod._() : super();
  factory VxFundByPeriod({
    $fixnum.Int64? period,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (period != null) {
      _result.period = period;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory VxFundByPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxFundByPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxFundByPeriod clone() => VxFundByPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxFundByPeriod copyWith(void Function(VxFundByPeriod) updates) => super.copyWith((message) => updates(message as VxFundByPeriod)) as VxFundByPeriod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxFundByPeriod create() => VxFundByPeriod._();
  VxFundByPeriod createEmptyInstance() => create();
  static $pb.PbList<VxFundByPeriod> createRepeated() => $pb.PbList<VxFundByPeriod>();
  @$core.pragma('dart2js:noInline')
  static VxFundByPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxFundByPeriod>(create);
  static VxFundByPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get period => $_getI64(0);
  @$pb.TagNumber(1)
  set period($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class VxFunds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxFunds', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<VxFundByPeriod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Funds', $pb.PbFieldType.PM, protoName: 'Funds', subBuilder: VxFundByPeriod.create)
    ..hasRequiredFields = false
  ;

  VxFunds._() : super();
  factory VxFunds({
    $core.Iterable<VxFundByPeriod>? funds,
  }) {
    final _result = create();
    if (funds != null) {
      _result.funds.addAll(funds);
    }
    return _result;
  }
  factory VxFunds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxFunds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxFunds clone() => VxFunds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxFunds copyWith(void Function(VxFunds) updates) => super.copyWith((message) => updates(message as VxFunds)) as VxFunds; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxFunds create() => VxFunds._();
  VxFunds createEmptyInstance() => create();
  static $pb.PbList<VxFunds> createRepeated() => $pb.PbList<VxFunds>();
  @$core.pragma('dart2js:noInline')
  static VxFunds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxFunds>(create);
  static VxFunds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VxFundByPeriod> get funds => $_getList(0);
}

class VIPStaking extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VIPStaking', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StakedTimes', $pb.PbFieldType.O3, protoName: 'StakedTimes')
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StakingHashes', $pb.PbFieldType.PY, protoName: 'StakingHashes')
    ..hasRequiredFields = false
  ;

  VIPStaking._() : super();
  factory VIPStaking({
    $fixnum.Int64? timestamp,
    $core.int? stakedTimes,
    $core.Iterable<$core.List<$core.int>>? stakingHashes,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (stakedTimes != null) {
      _result.stakedTimes = stakedTimes;
    }
    if (stakingHashes != null) {
      _result.stakingHashes.addAll(stakingHashes);
    }
    return _result;
  }
  factory VIPStaking.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VIPStaking.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VIPStaking clone() => VIPStaking()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VIPStaking copyWith(void Function(VIPStaking) updates) => super.copyWith((message) => updates(message as VIPStaking)) as VIPStaking; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VIPStaking create() => VIPStaking._();
  VIPStaking createEmptyInstance() => create();
  static $pb.PbList<VIPStaking> createRepeated() => $pb.PbList<VIPStaking>();
  @$core.pragma('dart2js:noInline')
  static VIPStaking getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VIPStaking>(create);
  static VIPStaking? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get stakedTimes => $_getIZ(1);
  @$pb.TagNumber(2)
  set stakedTimes($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStakedTimes() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakedTimes() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get stakingHashes => $_getList(2);
}

class DelegateStakeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelegateStakeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StakeType', $pb.PbFieldType.O3, protoName: 'StakeType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Principal', $pb.PbFieldType.OY, protoName: 'Principal')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', $pb.PbFieldType.O3, protoName: 'Status')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SerialNo', $pb.PbFieldType.OU6, protoName: 'SerialNo', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.OY, protoName: 'Id')
    ..hasRequiredFields = false
  ;

  DelegateStakeInfo._() : super();
  factory DelegateStakeInfo({
    $core.int? stakeType,
    $core.List<$core.int>? address,
    $core.List<$core.int>? principal,
    $core.List<$core.int>? amount,
    $core.int? status,
    $fixnum.Int64? serialNo,
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (stakeType != null) {
      _result.stakeType = stakeType;
    }
    if (address != null) {
      _result.address = address;
    }
    if (principal != null) {
      _result.principal = principal;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (status != null) {
      _result.status = status;
    }
    if (serialNo != null) {
      _result.serialNo = serialNo;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DelegateStakeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelegateStakeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelegateStakeInfo clone() => DelegateStakeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelegateStakeInfo copyWith(void Function(DelegateStakeInfo) updates) => super.copyWith((message) => updates(message as DelegateStakeInfo)) as DelegateStakeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelegateStakeInfo create() => DelegateStakeInfo._();
  DelegateStakeInfo createEmptyInstance() => create();
  static $pb.PbList<DelegateStakeInfo> createRepeated() => $pb.PbList<DelegateStakeInfo>();
  @$core.pragma('dart2js:noInline')
  static DelegateStakeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelegateStakeInfo>(create);
  static DelegateStakeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get stakeType => $_getIZ(0);
  @$pb.TagNumber(1)
  set stakeType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStakeType() => $_has(0);
  @$pb.TagNumber(1)
  void clearStakeType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get address => $_getN(1);
  @$pb.TagNumber(2)
  set address($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get principal => $_getN(2);
  @$pb.TagNumber(3)
  set principal($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrincipal() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrincipal() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get amount => $_getN(3);
  @$pb.TagNumber(4)
  set amount($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get serialNo => $_getI64(5);
  @$pb.TagNumber(6)
  set serialNo($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSerialNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearSerialNo() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get id => $_getN(6);
  @$pb.TagNumber(7)
  set id($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasId() => $_has(6);
  @$pb.TagNumber(7)
  void clearId() => clearField(7);
}

class DelegateStakeAddressIndex extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelegateStakeAddressIndex', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.OY, protoName: 'Id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StakeType', $pb.PbFieldType.O3, protoName: 'StakeType')
    ..hasRequiredFields = false
  ;

  DelegateStakeAddressIndex._() : super();
  factory DelegateStakeAddressIndex({
    $core.List<$core.int>? id,
    $core.int? stakeType,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (stakeType != null) {
      _result.stakeType = stakeType;
    }
    return _result;
  }
  factory DelegateStakeAddressIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelegateStakeAddressIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelegateStakeAddressIndex clone() => DelegateStakeAddressIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelegateStakeAddressIndex copyWith(void Function(DelegateStakeAddressIndex) updates) => super.copyWith((message) => updates(message as DelegateStakeAddressIndex)) as DelegateStakeAddressIndex; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelegateStakeAddressIndex create() => DelegateStakeAddressIndex._();
  DelegateStakeAddressIndex createEmptyInstance() => create();
  static $pb.PbList<DelegateStakeAddressIndex> createRepeated() => $pb.PbList<DelegateStakeAddressIndex>();
  @$core.pragma('dart2js:noInline')
  static DelegateStakeAddressIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelegateStakeAddressIndex>(create);
  static DelegateStakeAddressIndex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get stakeType => $_getIZ(1);
  @$pb.TagNumber(2)
  set stakeType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStakeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakeType() => clearField(2);
}

class MiningStakingByPeriod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiningStakingByPeriod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Period', $pb.PbFieldType.OU6, protoName: 'Period', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  MiningStakingByPeriod._() : super();
  factory MiningStakingByPeriod({
    $fixnum.Int64? period,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (period != null) {
      _result.period = period;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory MiningStakingByPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiningStakingByPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiningStakingByPeriod clone() => MiningStakingByPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiningStakingByPeriod copyWith(void Function(MiningStakingByPeriod) updates) => super.copyWith((message) => updates(message as MiningStakingByPeriod)) as MiningStakingByPeriod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiningStakingByPeriod create() => MiningStakingByPeriod._();
  MiningStakingByPeriod createEmptyInstance() => create();
  static $pb.PbList<MiningStakingByPeriod> createRepeated() => $pb.PbList<MiningStakingByPeriod>();
  @$core.pragma('dart2js:noInline')
  static MiningStakingByPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiningStakingByPeriod>(create);
  static MiningStakingByPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get period => $_getI64(0);
  @$pb.TagNumber(1)
  set period($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class MiningStakings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiningStakings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..pc<MiningStakingByPeriod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Stakings', $pb.PbFieldType.PM, protoName: 'Stakings', subBuilder: MiningStakingByPeriod.create)
    ..hasRequiredFields = false
  ;

  MiningStakings._() : super();
  factory MiningStakings({
    $core.Iterable<MiningStakingByPeriod>? stakings,
  }) {
    final _result = create();
    if (stakings != null) {
      _result.stakings.addAll(stakings);
    }
    return _result;
  }
  factory MiningStakings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiningStakings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiningStakings clone() => MiningStakings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiningStakings copyWith(void Function(MiningStakings) updates) => super.copyWith((message) => updates(message as MiningStakings)) as MiningStakings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiningStakings create() => MiningStakings._();
  MiningStakings createEmptyInstance() => create();
  static $pb.PbList<MiningStakings> createRepeated() => $pb.PbList<MiningStakings>();
  @$core.pragma('dart2js:noInline')
  static MiningStakings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiningStakings>(create);
  static MiningStakings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MiningStakingByPeriod> get stakings => $_getList(0);
}

class VxSettleAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxSettleAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  VxSettleAction._() : super();
  factory VxSettleAction({
    $core.List<$core.int>? address,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory VxSettleAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxSettleAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxSettleAction clone() => VxSettleAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxSettleAction copyWith(void Function(VxSettleAction) updates) => super.copyWith((message) => updates(message as VxSettleAction)) as VxSettleAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxSettleAction create() => VxSettleAction._();
  VxSettleAction createEmptyInstance() => create();
  static $pb.PbList<VxSettleAction> createRepeated() => $pb.PbList<VxSettleAction>();
  @$core.pragma('dart2js:noInline')
  static VxSettleAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxSettleAction>(create);
  static VxSettleAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class VxSettleActions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VxSettleActions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Period', $pb.PbFieldType.OU6, protoName: 'Period', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..pc<VxSettleAction>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actions', $pb.PbFieldType.PM, subBuilder: VxSettleAction.create)
    ..hasRequiredFields = false
  ;

  VxSettleActions._() : super();
  factory VxSettleActions({
    $fixnum.Int64? period,
    $core.int? page,
    $core.Iterable<VxSettleAction>? actions,
  }) {
    final _result = create();
    if (period != null) {
      _result.period = period;
    }
    if (page != null) {
      _result.page = page;
    }
    if (actions != null) {
      _result.actions.addAll(actions);
    }
    return _result;
  }
  factory VxSettleActions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VxSettleActions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VxSettleActions clone() => VxSettleActions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VxSettleActions copyWith(void Function(VxSettleActions) updates) => super.copyWith((message) => updates(message as VxSettleActions)) as VxSettleActions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VxSettleActions create() => VxSettleActions._();
  VxSettleActions createEmptyInstance() => create();
  static $pb.PbList<VxSettleActions> createRepeated() => $pb.PbList<VxSettleActions>();
  @$core.pragma('dart2js:noInline')
  static VxSettleActions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VxSettleActions>(create);
  static VxSettleActions? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get period => $_getI64(0);
  @$pb.TagNumber(1)
  set period($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<VxSettleAction> get actions => $_getList(2);
}

class PeriodJobForBiz extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PeriodJobForBiz', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Period', $pb.PbFieldType.OU6, protoName: 'Period', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BizType', $pb.PbFieldType.O3, protoName: 'BizType')
    ..hasRequiredFields = false
  ;

  PeriodJobForBiz._() : super();
  factory PeriodJobForBiz({
    $fixnum.Int64? period,
    $core.int? bizType,
  }) {
    final _result = create();
    if (period != null) {
      _result.period = period;
    }
    if (bizType != null) {
      _result.bizType = bizType;
    }
    return _result;
  }
  factory PeriodJobForBiz.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeriodJobForBiz.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PeriodJobForBiz clone() => PeriodJobForBiz()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PeriodJobForBiz copyWith(void Function(PeriodJobForBiz) updates) => super.copyWith((message) => updates(message as PeriodJobForBiz)) as PeriodJobForBiz; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeriodJobForBiz create() => PeriodJobForBiz._();
  PeriodJobForBiz createEmptyInstance() => create();
  static $pb.PbList<PeriodJobForBiz> createRepeated() => $pb.PbList<PeriodJobForBiz>();
  @$core.pragma('dart2js:noInline')
  static PeriodJobForBiz getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeriodJobForBiz>(create);
  static PeriodJobForBiz? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get period => $_getI64(0);
  @$pb.TagNumber(1)
  set period($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bizType => $_getIZ(1);
  @$pb.TagNumber(2)
  set bizType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBizType() => $_has(1);
  @$pb.TagNumber(2)
  void clearBizType() => clearField(2);
}

class FeeDividendForVxHolder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeDividendForVxHolder', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VxAmount', $pb.PbFieldType.OY, protoName: 'VxAmount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeToken', $pb.PbFieldType.OY, protoName: 'FeeToken')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeDividend', $pb.PbFieldType.OY, protoName: 'FeeDividend')
    ..hasRequiredFields = false
  ;

  FeeDividendForVxHolder._() : super();
  factory FeeDividendForVxHolder({
    $core.List<$core.int>? address,
    $core.List<$core.int>? vxAmount,
    $core.List<$core.int>? feeToken,
    $core.List<$core.int>? feeDividend,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (vxAmount != null) {
      _result.vxAmount = vxAmount;
    }
    if (feeToken != null) {
      _result.feeToken = feeToken;
    }
    if (feeDividend != null) {
      _result.feeDividend = feeDividend;
    }
    return _result;
  }
  factory FeeDividendForVxHolder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeDividendForVxHolder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeDividendForVxHolder clone() => FeeDividendForVxHolder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeDividendForVxHolder copyWith(void Function(FeeDividendForVxHolder) updates) => super.copyWith((message) => updates(message as FeeDividendForVxHolder)) as FeeDividendForVxHolder; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeDividendForVxHolder create() => FeeDividendForVxHolder._();
  FeeDividendForVxHolder createEmptyInstance() => create();
  static $pb.PbList<FeeDividendForVxHolder> createRepeated() => $pb.PbList<FeeDividendForVxHolder>();
  @$core.pragma('dart2js:noInline')
  static FeeDividendForVxHolder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeDividendForVxHolder>(create);
  static FeeDividendForVxHolder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vxAmount => $_getN(1);
  @$pb.TagNumber(2)
  set vxAmount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVxAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearVxAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get feeToken => $_getN(2);
  @$pb.TagNumber(3)
  set feeToken($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get feeDividend => $_getN(3);
  @$pb.TagNumber(4)
  set feeDividend($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeDividend() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeDividend() => clearField(4);
}

class MinedVxForFee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MinedVxForFee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteTokenType', $pb.PbFieldType.O3, protoName: 'QuoteTokenType')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeeAmount', $pb.PbFieldType.OY, protoName: 'FeeAmount')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MinedAmount', $pb.PbFieldType.OY, protoName: 'MinedAmount')
    ..hasRequiredFields = false
  ;

  MinedVxForFee._() : super();
  factory MinedVxForFee({
    $core.List<$core.int>? address,
    $core.int? quoteTokenType,
    $core.List<$core.int>? feeAmount,
    $core.List<$core.int>? minedAmount,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (quoteTokenType != null) {
      _result.quoteTokenType = quoteTokenType;
    }
    if (feeAmount != null) {
      _result.feeAmount = feeAmount;
    }
    if (minedAmount != null) {
      _result.minedAmount = minedAmount;
    }
    return _result;
  }
  factory MinedVxForFee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MinedVxForFee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MinedVxForFee clone() => MinedVxForFee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MinedVxForFee copyWith(void Function(MinedVxForFee) updates) => super.copyWith((message) => updates(message as MinedVxForFee)) as MinedVxForFee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MinedVxForFee create() => MinedVxForFee._();
  MinedVxForFee createEmptyInstance() => create();
  static $pb.PbList<MinedVxForFee> createRepeated() => $pb.PbList<MinedVxForFee>();
  @$core.pragma('dart2js:noInline')
  static MinedVxForFee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MinedVxForFee>(create);
  static MinedVxForFee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quoteTokenType => $_getIZ(1);
  @$pb.TagNumber(2)
  set quoteTokenType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuoteTokenType() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuoteTokenType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get feeAmount => $_getN(2);
  @$pb.TagNumber(3)
  set feeAmount($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get minedAmount => $_getN(3);
  @$pb.TagNumber(4)
  set minedAmount($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinedAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinedAmount() => clearField(4);
}

class MinedVxForStaking extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MinedVxForStaking', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'StakedAmount', $pb.PbFieldType.OY, protoName: 'StakedAmount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MinedAmount', $pb.PbFieldType.OY, protoName: 'MinedAmount')
    ..hasRequiredFields = false
  ;

  MinedVxForStaking._() : super();
  factory MinedVxForStaking({
    $core.List<$core.int>? address,
    $core.List<$core.int>? stakedAmount,
    $core.List<$core.int>? minedAmount,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (stakedAmount != null) {
      _result.stakedAmount = stakedAmount;
    }
    if (minedAmount != null) {
      _result.minedAmount = minedAmount;
    }
    return _result;
  }
  factory MinedVxForStaking.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MinedVxForStaking.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MinedVxForStaking clone() => MinedVxForStaking()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MinedVxForStaking copyWith(void Function(MinedVxForStaking) updates) => super.copyWith((message) => updates(message as MinedVxForStaking)) as MinedVxForStaking; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MinedVxForStaking create() => MinedVxForStaking._();
  MinedVxForStaking createEmptyInstance() => create();
  static $pb.PbList<MinedVxForStaking> createRepeated() => $pb.PbList<MinedVxForStaking>();
  @$core.pragma('dart2js:noInline')
  static MinedVxForStaking getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MinedVxForStaking>(create);
  static MinedVxForStaking? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get stakedAmount => $_getN(1);
  @$pb.TagNumber(2)
  set stakedAmount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStakedAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakedAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get minedAmount => $_getN(2);
  @$pb.TagNumber(3)
  set minedAmount($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinedAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinedAmount() => clearField(3);
}

class OperatorFeeDividend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OperatorFeeDividend', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketId', $pb.PbFieldType.O3, protoName: 'MarketId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'TakerOperatorFeeRate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MakerOperatorFeeRate', $pb.PbFieldType.O3, protoName: 'MakerOperatorFeeRate')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  OperatorFeeDividend._() : super();
  factory OperatorFeeDividend({
    $core.List<$core.int>? address,
    $core.int? marketId,
    $core.int? takerOperatorFeeRate,
    $core.int? makerOperatorFeeRate,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (marketId != null) {
      _result.marketId = marketId;
    }
    if (takerOperatorFeeRate != null) {
      _result.takerOperatorFeeRate = takerOperatorFeeRate;
    }
    if (makerOperatorFeeRate != null) {
      _result.makerOperatorFeeRate = makerOperatorFeeRate;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory OperatorFeeDividend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperatorFeeDividend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperatorFeeDividend clone() => OperatorFeeDividend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperatorFeeDividend copyWith(void Function(OperatorFeeDividend) updates) => super.copyWith((message) => updates(message as OperatorFeeDividend)) as OperatorFeeDividend; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OperatorFeeDividend create() => OperatorFeeDividend._();
  OperatorFeeDividend createEmptyInstance() => create();
  static $pb.PbList<OperatorFeeDividend> createRepeated() => $pb.PbList<OperatorFeeDividend>();
  @$core.pragma('dart2js:noInline')
  static OperatorFeeDividend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperatorFeeDividend>(create);
  static OperatorFeeDividend? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get marketId => $_getIZ(1);
  @$pb.TagNumber(2)
  set marketId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarketId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarketId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get takerOperatorFeeRate => $_getIZ(2);
  @$pb.TagNumber(3)
  set takerOperatorFeeRate($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTakerOperatorFeeRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTakerOperatorFeeRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get makerOperatorFeeRate => $_getIZ(3);
  @$pb.TagNumber(4)
  set makerOperatorFeeRate($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMakerOperatorFeeRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearMakerOperatorFeeRate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get amount => $_getN(4);
  @$pb.TagNumber(5)
  set amount($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmount() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmount() => clearField(5);
}

class MinedVxForOperation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MinedVxForOperation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BizType', $pb.PbFieldType.O3, protoName: 'BizType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Address', $pb.PbFieldType.OY, protoName: 'Address')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  MinedVxForOperation._() : super();
  factory MinedVxForOperation({
    $core.int? bizType,
    $core.List<$core.int>? address,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (bizType != null) {
      _result.bizType = bizType;
    }
    if (address != null) {
      _result.address = address;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory MinedVxForOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MinedVxForOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MinedVxForOperation clone() => MinedVxForOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MinedVxForOperation copyWith(void Function(MinedVxForOperation) updates) => super.copyWith((message) => updates(message as MinedVxForOperation)) as MinedVxForOperation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MinedVxForOperation create() => MinedVxForOperation._();
  MinedVxForOperation createEmptyInstance() => create();
  static $pb.PbList<MinedVxForOperation> createRepeated() => $pb.PbList<MinedVxForOperation>();
  @$core.pragma('dart2js:noInline')
  static MinedVxForOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MinedVxForOperation>(create);
  static MinedVxForOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bizType => $_getIZ(0);
  @$pb.TagNumber(1)
  set bizType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBizType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBizType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get address => $_getN(1);
  @$pb.TagNumber(2)
  set address($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class InviteRelation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InviteRelation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Inviter', $pb.PbFieldType.OY, protoName: 'Inviter')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Invitee', $pb.PbFieldType.OY, protoName: 'Invitee')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'InviteCode', $pb.PbFieldType.OU3, protoName: 'InviteCode')
    ..hasRequiredFields = false
  ;

  InviteRelation._() : super();
  factory InviteRelation({
    $core.List<$core.int>? inviter,
    $core.List<$core.int>? invitee,
    $core.int? inviteCode,
  }) {
    final _result = create();
    if (inviter != null) {
      _result.inviter = inviter;
    }
    if (invitee != null) {
      _result.invitee = invitee;
    }
    if (inviteCode != null) {
      _result.inviteCode = inviteCode;
    }
    return _result;
  }
  factory InviteRelation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteRelation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteRelation clone() => InviteRelation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteRelation copyWith(void Function(InviteRelation) updates) => super.copyWith((message) => updates(message as InviteRelation)) as InviteRelation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteRelation create() => InviteRelation._();
  InviteRelation createEmptyInstance() => create();
  static $pb.PbList<InviteRelation> createRepeated() => $pb.PbList<InviteRelation>();
  @$core.pragma('dart2js:noInline')
  static InviteRelation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteRelation>(create);
  static InviteRelation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get inviter => $_getN(0);
  @$pb.TagNumber(1)
  set inviter($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviter() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviter() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get invitee => $_getN(1);
  @$pb.TagNumber(2)
  set invitee($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInvitee() => $_has(1);
  @$pb.TagNumber(2)
  void clearInvitee() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get inviteCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set inviteCode($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInviteCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearInviteCode() => clearField(3);
}

class SettleMakerMinedVx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleMakerMinedVx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PeriodId', $pb.PbFieldType.OU6, protoName: 'PeriodId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Finish', protoName: 'Finish')
    ..hasRequiredFields = false
  ;

  SettleMakerMinedVx._() : super();
  factory SettleMakerMinedVx({
    $fixnum.Int64? periodId,
    $core.int? page,
    $core.bool? finish,
  }) {
    final _result = create();
    if (periodId != null) {
      _result.periodId = periodId;
    }
    if (page != null) {
      _result.page = page;
    }
    if (finish != null) {
      _result.finish = finish;
    }
    return _result;
  }
  factory SettleMakerMinedVx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleMakerMinedVx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleMakerMinedVx clone() => SettleMakerMinedVx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleMakerMinedVx copyWith(void Function(SettleMakerMinedVx) updates) => super.copyWith((message) => updates(message as SettleMakerMinedVx)) as SettleMakerMinedVx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleMakerMinedVx create() => SettleMakerMinedVx._();
  SettleMakerMinedVx createEmptyInstance() => create();
  static $pb.PbList<SettleMakerMinedVx> createRepeated() => $pb.PbList<SettleMakerMinedVx>();
  @$core.pragma('dart2js:noInline')
  static SettleMakerMinedVx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleMakerMinedVx>(create);
  static SettleMakerMinedVx? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get periodId => $_getI64(0);
  @$pb.TagNumber(1)
  set periodId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriodId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get finish => $_getBF(2);
  @$pb.TagNumber(3)
  set finish($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFinish() => $_has(2);
  @$pb.TagNumber(3)
  void clearFinish() => clearField(3);
}

class MarketAgentRelation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarketAgentRelation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Principal', $pb.PbFieldType.OY, protoName: 'Principal')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Agent', $pb.PbFieldType.OY, protoName: 'Agent')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MarketId', $pb.PbFieldType.O3, protoName: 'MarketId')
    ..hasRequiredFields = false
  ;

  MarketAgentRelation._() : super();
  factory MarketAgentRelation({
    $core.List<$core.int>? principal,
    $core.List<$core.int>? agent,
    $core.int? marketId,
  }) {
    final _result = create();
    if (principal != null) {
      _result.principal = principal;
    }
    if (agent != null) {
      _result.agent = agent;
    }
    if (marketId != null) {
      _result.marketId = marketId;
    }
    return _result;
  }
  factory MarketAgentRelation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketAgentRelation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketAgentRelation clone() => MarketAgentRelation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketAgentRelation copyWith(void Function(MarketAgentRelation) updates) => super.copyWith((message) => updates(message as MarketAgentRelation)) as MarketAgentRelation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarketAgentRelation create() => MarketAgentRelation._();
  MarketAgentRelation createEmptyInstance() => create();
  static $pb.PbList<MarketAgentRelation> createRepeated() => $pb.PbList<MarketAgentRelation>();
  @$core.pragma('dart2js:noInline')
  static MarketAgentRelation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketAgentRelation>(create);
  static MarketAgentRelation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get principal => $_getN(0);
  @$pb.TagNumber(1)
  set principal($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrincipal() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrincipal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get agent => $_getN(1);
  @$pb.TagNumber(2)
  set agent($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgent() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgent() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get marketId => $_getIZ(2);
  @$pb.TagNumber(3)
  set marketId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarketId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarketId() => clearField(3);
}

class BurnVite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BurnVite', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BizType', $pb.PbFieldType.O3, protoName: 'BizType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  BurnVite._() : super();
  factory BurnVite({
    $core.int? bizType,
    $core.List<$core.int>? amount,
  }) {
    final _result = create();
    if (bizType != null) {
      _result.bizType = bizType;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory BurnVite.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BurnVite.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BurnVite clone() => BurnVite()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BurnVite copyWith(void Function(BurnVite) updates) => super.copyWith((message) => updates(message as BurnVite)) as BurnVite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BurnVite create() => BurnVite._();
  BurnVite createEmptyInstance() => create();
  static $pb.PbList<BurnVite> createRepeated() => $pb.PbList<BurnVite>();
  @$core.pragma('dart2js:noInline')
  static BurnVite getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BurnVite>(create);
  static BurnVite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bizType => $_getIZ(0);
  @$pb.TagNumber(1)
  set bizType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBizType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBizType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class TransferAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferAsset', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BizType', $pb.PbFieldType.O3, protoName: 'BizType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', $pb.PbFieldType.OY, protoName: 'From')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', $pb.PbFieldType.OY, protoName: 'To')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', $pb.PbFieldType.OY, protoName: 'Token')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', $pb.PbFieldType.OY, protoName: 'Amount')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Extra', $pb.PbFieldType.OY, protoName: 'Extra')
    ..hasRequiredFields = false
  ;

  TransferAsset._() : super();
  factory TransferAsset({
    $core.int? bizType,
    $core.List<$core.int>? from,
    $core.List<$core.int>? to,
    $core.List<$core.int>? token,
    $core.List<$core.int>? amount,
    $core.List<$core.int>? extra,
  }) {
    final _result = create();
    if (bizType != null) {
      _result.bizType = bizType;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (token != null) {
      _result.token = token;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory TransferAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferAsset clone() => TransferAsset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferAsset copyWith(void Function(TransferAsset) updates) => super.copyWith((message) => updates(message as TransferAsset)) as TransferAsset; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferAsset create() => TransferAsset._();
  TransferAsset createEmptyInstance() => create();
  static $pb.PbList<TransferAsset> createRepeated() => $pb.PbList<TransferAsset>();
  @$core.pragma('dart2js:noInline')
  static TransferAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferAsset>(create);
  static TransferAsset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bizType => $_getIZ(0);
  @$pb.TagNumber(1)
  set bizType($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBizType() => $_has(0);
  @$pb.TagNumber(1)
  void clearBizType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get from => $_getN(1);
  @$pb.TagNumber(2)
  set from($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get to => $_getN(2);
  @$pb.TagNumber(3)
  set to($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get token => $_getN(3);
  @$pb.TagNumber(4)
  set token($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get amount => $_getN(4);
  @$pb.TagNumber(5)
  set amount($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmount() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmount() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get extra => $_getN(5);
  @$pb.TagNumber(6)
  set extra($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExtra() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtra() => clearField(6);
}

