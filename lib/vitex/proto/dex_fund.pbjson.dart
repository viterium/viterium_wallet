//
//  Generated code. Do not modify.
//  source: dex_fund.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 12, '10': 'Token'},
    const {'1': 'Available', '3': 2, '4': 1, '5': 12, '10': 'Available'},
    const {'1': 'Locked', '3': 3, '4': 1, '5': 12, '10': 'Locked'},
    const {'1': 'VxLocked', '3': 4, '4': 1, '5': 12, '10': 'VxLocked'},
    const {'1': 'VxUnlocking', '3': 5, '4': 1, '5': 12, '10': 'VxUnlocking'},
    const {
      '1': 'CancellingStake',
      '3': 6,
      '4': 1,
      '5': 12,
      '10': 'CancellingStake'
    },
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50EhQKBVRva2VuGAEgASgMUgVUb2tlbhIcCglBdmFpbGFibGUYAiABKAxSCUF2YWlsYWJsZRIWCgZMb2NrZWQYAyABKAxSBkxvY2tlZBIaCghWeExvY2tlZBgEIAEoDFIIVnhMb2NrZWQSIAoLVnhVbmxvY2tpbmcYBSABKAxSC1Z4VW5sb2NraW5nEigKD0NhbmNlbGxpbmdTdGFrZRgGIAEoDFIPQ2FuY2VsbGluZ1N0YWtl');
@$core.Deprecated('Use vxUnlockDescriptor instead')
const VxUnlock$json = const {
  '1': 'VxUnlock',
  '2': const [
    const {'1': 'PeriodId', '3': 1, '4': 1, '5': 4, '10': 'PeriodId'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `VxUnlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxUnlockDescriptor = $convert.base64Decode(
    'CghWeFVubG9jaxIaCghQZXJpb2RJZBgBIAEoBFIIUGVyaW9kSWQSFgoGQW1vdW50GAIgASgMUgZBbW91bnQ=');
@$core.Deprecated('Use vxUnlocksDescriptor instead')
const VxUnlocks$json = const {
  '1': 'VxUnlocks',
  '2': const [
    const {
      '1': 'Unlocks',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.VxUnlock',
      '10': 'Unlocks'
    },
  ],
};

/// Descriptor for `VxUnlocks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxUnlocksDescriptor = $convert.base64Decode(
    'CglWeFVubG9ja3MSKQoHVW5sb2NrcxgBIAMoCzIPLnByb3RvLlZ4VW5sb2NrUgdVbmxvY2tz');
@$core.Deprecated('Use cancelStakeDescriptor instead')
const CancelStake$json = const {
  '1': 'CancelStake',
  '2': const [
    const {'1': 'PeriodId', '3': 1, '4': 1, '5': 4, '10': 'PeriodId'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `CancelStake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelStakeDescriptor = $convert.base64Decode(
    'CgtDYW5jZWxTdGFrZRIaCghQZXJpb2RJZBgBIAEoBFIIUGVyaW9kSWQSFgoGQW1vdW50GAIgASgMUgZBbW91bnQ=');
@$core.Deprecated('Use cancelStakesDescriptor instead')
const CancelStakes$json = const {
  '1': 'CancelStakes',
  '2': const [
    const {
      '1': 'Cancels',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.CancelStake',
      '10': 'Cancels'
    },
  ],
};

/// Descriptor for `CancelStakes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelStakesDescriptor = $convert.base64Decode(
    'CgxDYW5jZWxTdGFrZXMSLAoHQ2FuY2VscxgBIAMoCzISLnByb3RvLkNhbmNlbFN0YWtlUgdDYW5jZWxz');
@$core.Deprecated('Use fundDescriptor instead')
const Fund$json = const {
  '1': 'Fund',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {
      '1': 'Accounts',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.Account',
      '10': 'Accounts'
    },
  ],
};

/// Descriptor for `Fund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundDescriptor = $convert.base64Decode(
    'CgRGdW5kEhgKB0FkZHJlc3MYASABKAxSB0FkZHJlc3MSKgoIQWNjb3VudHMYAiADKAsyDi5wcm90by5BY2NvdW50UghBY2NvdW50cw==');
@$core.Deprecated('Use accountSettleDescriptor instead')
const AccountSettle$json = const {
  '1': 'AccountSettle',
  '2': const [
    const {'1': 'IsTradeToken', '3': 1, '4': 1, '5': 8, '10': 'IsTradeToken'},
    const {'1': 'IncAvailable', '3': 2, '4': 1, '5': 12, '10': 'IncAvailable'},
    const {'1': 'ReduceLocked', '3': 3, '4': 1, '5': 12, '10': 'ReduceLocked'},
    const {
      '1': 'ReleaseLocked',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'ReleaseLocked'
    },
  ],
};

/// Descriptor for `AccountSettle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSettleDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50U2V0dGxlEiIKDElzVHJhZGVUb2tlbhgBIAEoCFIMSXNUcmFkZVRva2VuEiIKDEluY0F2YWlsYWJsZRgCIAEoDFIMSW5jQXZhaWxhYmxlEiIKDFJlZHVjZUxvY2tlZBgDIAEoDFIMUmVkdWNlTG9ja2VkEiQKDVJlbGVhc2VMb2NrZWQYBCABKAxSDVJlbGVhc2VMb2NrZWQ=');
@$core.Deprecated('Use fundSettleDescriptor instead')
const FundSettle$json = const {
  '1': 'FundSettle',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {
      '1': 'AccountSettles',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.AccountSettle',
      '10': 'AccountSettles'
    },
  ],
};

/// Descriptor for `FundSettle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundSettleDescriptor = $convert.base64Decode(
    'CgpGdW5kU2V0dGxlEhgKB0FkZHJlc3MYASABKAxSB0FkZHJlc3MSPAoOQWNjb3VudFNldHRsZXMYAiADKAsyFC5wcm90by5BY2NvdW50U2V0dGxlUg5BY2NvdW50U2V0dGxlcw==');
@$core.Deprecated('Use feeSettleDescriptor instead')
const FeeSettle$json = const {
  '1': 'FeeSettle',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'BaseFee', '3': 2, '4': 1, '5': 12, '10': 'BaseFee'},
    const {'1': 'OperatorFee', '3': 3, '4': 1, '5': 12, '10': 'OperatorFee'},
  ],
};

/// Descriptor for `FeeSettle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeSettleDescriptor = $convert.base64Decode(
    'CglGZWVTZXR0bGUSGAoHQWRkcmVzcxgBIAEoDFIHQWRkcmVzcxIYCgdCYXNlRmVlGAIgASgMUgdCYXNlRmVlEiAKC09wZXJhdG9yRmVlGAMgASgMUgtPcGVyYXRvckZlZQ==');
@$core.Deprecated('Use settleActionsDescriptor instead')
const SettleActions$json = const {
  '1': 'SettleActions',
  '2': const [
    const {'1': 'TradeToken', '3': 1, '4': 1, '5': 12, '10': 'TradeToken'},
    const {'1': 'QuoteToken', '3': 2, '4': 1, '5': 12, '10': 'QuoteToken'},
    const {
      '1': 'FundActions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.FundSettle',
      '10': 'FundActions'
    },
    const {
      '1': 'FeeActions',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.proto.FeeSettle',
      '10': 'FeeActions'
    },
  ],
};

/// Descriptor for `SettleActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleActionsDescriptor = $convert.base64Decode(
    'Cg1TZXR0bGVBY3Rpb25zEh4KClRyYWRlVG9rZW4YASABKAxSClRyYWRlVG9rZW4SHgoKUXVvdGVUb2tlbhgCIAEoDFIKUXVvdGVUb2tlbhIzCgtGdW5kQWN0aW9ucxgDIAMoCzIRLnByb3RvLkZ1bmRTZXR0bGVSC0Z1bmRBY3Rpb25zEjAKCkZlZUFjdGlvbnMYBCADKAsyEC5wcm90by5GZWVTZXR0bGVSCkZlZUFjdGlvbnM=');
@$core.Deprecated('Use feeForDividendDescriptor instead')
const FeeForDividend$json = const {
  '1': 'FeeForDividend',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 12, '10': 'Token'},
    const {
      '1': 'DividendPoolAmount',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'DividendPoolAmount'
    },
    const {'1': 'NotRoll', '3': 3, '4': 1, '5': 8, '10': 'NotRoll'},
  ],
};

/// Descriptor for `FeeForDividend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeForDividendDescriptor = $convert.base64Decode(
    'Cg5GZWVGb3JEaXZpZGVuZBIUCgVUb2tlbhgBIAEoDFIFVG9rZW4SLgoSRGl2aWRlbmRQb29sQW1vdW50GAIgASgMUhJEaXZpZGVuZFBvb2xBbW91bnQSGAoHTm90Um9sbBgDIAEoCFIHTm90Um9sbA==');
@$core.Deprecated('Use feeForMineDescriptor instead')
const FeeForMine$json = const {
  '1': 'FeeForMine',
  '2': const [
    const {
      '1': 'QuoteTokenType',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
    const {'1': 'BaseAmount', '3': 2, '4': 1, '5': 12, '10': 'BaseAmount'},
    const {
      '1': 'InviteBonusAmount',
      '3': 3,
      '4': 1,
      '5': 12,
      '10': 'InviteBonusAmount'
    },
  ],
};

/// Descriptor for `FeeForMine`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeForMineDescriptor = $convert.base64Decode(
    'CgpGZWVGb3JNaW5lEiYKDlF1b3RlVG9rZW5UeXBlGAEgASgFUg5RdW90ZVRva2VuVHlwZRIeCgpCYXNlQW1vdW50GAIgASgMUgpCYXNlQW1vdW50EiwKEUludml0ZUJvbnVzQW1vdW50GAMgASgMUhFJbnZpdGVCb251c0Ftb3VudA==');
@$core.Deprecated('Use dexFeesByPeriodDescriptor instead')
const DexFeesByPeriod$json = const {
  '1': 'DexFeesByPeriod',
  '2': const [
    const {
      '1': 'FeesForDividend',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.FeeForDividend',
      '10': 'FeesForDividend'
    },
    const {
      '1': 'FeesForMine',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.FeeForMine',
      '10': 'FeesForMine'
    },
    const {
      '1': 'lastValidPeriod',
      '3': 3,
      '4': 1,
      '5': 4,
      '10': 'lastValidPeriod'
    },
    const {
      '1': 'FinishDividend',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'FinishDividend'
    },
    const {'1': 'FinishMine', '3': 5, '4': 1, '5': 8, '10': 'FinishMine'},
  ],
};

/// Descriptor for `DexFeesByPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dexFeesByPeriodDescriptor = $convert.base64Decode(
    'Cg9EZXhGZWVzQnlQZXJpb2QSPwoPRmVlc0ZvckRpdmlkZW5kGAEgAygLMhUucHJvdG8uRmVlRm9yRGl2aWRlbmRSD0ZlZXNGb3JEaXZpZGVuZBIzCgtGZWVzRm9yTWluZRgCIAMoCzIRLnByb3RvLkZlZUZvck1pbmVSC0ZlZXNGb3JNaW5lEigKD2xhc3RWYWxpZFBlcmlvZBgDIAEoBFIPbGFzdFZhbGlkUGVyaW9kEiYKDkZpbmlzaERpdmlkZW5kGAQgASgIUg5GaW5pc2hEaXZpZGVuZBIeCgpGaW5pc2hNaW5lGAUgASgIUgpGaW5pc2hNaW5l');
@$core.Deprecated('Use feeAccountDescriptor instead')
const FeeAccount$json = const {
  '1': 'FeeAccount',
  '2': const [
    const {
      '1': 'QuoteTokenType',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
    const {'1': 'BaseAmount', '3': 2, '4': 1, '5': 12, '10': 'BaseAmount'},
    const {
      '1': 'InviteBonusAmount',
      '3': 3,
      '4': 1,
      '5': 12,
      '10': 'InviteBonusAmount'
    },
  ],
};

/// Descriptor for `FeeAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeAccountDescriptor = $convert.base64Decode(
    'CgpGZWVBY2NvdW50EiYKDlF1b3RlVG9rZW5UeXBlGAEgASgFUg5RdW90ZVRva2VuVHlwZRIeCgpCYXNlQW1vdW50GAIgASgMUgpCYXNlQW1vdW50EiwKEUludml0ZUJvbnVzQW1vdW50GAMgASgMUhFJbnZpdGVCb251c0Ftb3VudA==');
@$core.Deprecated('Use feesByPeriodDescriptor instead')
const FeesByPeriod$json = const {
  '1': 'FeesByPeriod',
  '2': const [
    const {
      '1': 'Fees',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.FeeAccount',
      '10': 'Fees'
    },
    const {'1': 'Period', '3': 2, '4': 1, '5': 4, '10': 'Period'},
  ],
};

/// Descriptor for `FeesByPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feesByPeriodDescriptor = $convert.base64Decode(
    'CgxGZWVzQnlQZXJpb2QSJQoERmVlcxgBIAMoCzIRLnByb3RvLkZlZUFjY291bnRSBEZlZXMSFgoGUGVyaW9kGAIgASgEUgZQZXJpb2Q=');
@$core.Deprecated('Use userFeesDescriptor instead')
const UserFees$json = const {
  '1': 'UserFees',
  '2': const [
    const {
      '1': 'Fees',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.FeesByPeriod',
      '10': 'Fees'
    },
  ],
};

/// Descriptor for `UserFees`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFeesDescriptor = $convert.base64Decode(
    'CghVc2VyRmVlcxInCgRGZWVzGAEgAygLMhMucHJvdG8uRmVlc0J5UGVyaW9kUgRGZWVz');
@$core.Deprecated('Use operatorMarketFeeDescriptor instead')
const OperatorMarketFee$json = const {
  '1': 'OperatorMarketFee',
  '2': const [
    const {'1': 'MarketId', '3': 1, '4': 1, '5': 5, '10': 'MarketId'},
    const {
      '1': 'TakerOperatorFeeRate',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'TakerOperatorFeeRate'
    },
    const {
      '1': 'MakerOperatorFeeRate',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'MakerOperatorFeeRate'
    },
    const {'1': 'Amount', '3': 4, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `OperatorMarketFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operatorMarketFeeDescriptor = $convert.base64Decode(
    'ChFPcGVyYXRvck1hcmtldEZlZRIaCghNYXJrZXRJZBgBIAEoBVIITWFya2V0SWQSMgoUVGFrZXJPcGVyYXRvckZlZVJhdGUYAiABKAVSFFRha2VyT3BlcmF0b3JGZWVSYXRlEjIKFE1ha2VyT3BlcmF0b3JGZWVSYXRlGAMgASgFUhRNYWtlck9wZXJhdG9yRmVlUmF0ZRIWCgZBbW91bnQYBCABKAxSBkFtb3VudA==');
@$core.Deprecated('Use operatorFeeAccountDescriptor instead')
const OperatorFeeAccount$json = const {
  '1': 'OperatorFeeAccount',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 12, '10': 'Token'},
    const {
      '1': 'MarketFees',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.proto.OperatorMarketFee',
      '10': 'MarketFees'
    },
  ],
};

/// Descriptor for `OperatorFeeAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operatorFeeAccountDescriptor = $convert.base64Decode(
    'ChJPcGVyYXRvckZlZUFjY291bnQSFAoFVG9rZW4YASABKAxSBVRva2VuEjgKCk1hcmtldEZlZXMYAiADKAsyGC5wcm90by5PcGVyYXRvck1hcmtldEZlZVIKTWFya2V0RmVlcw==');
@$core.Deprecated('Use operatorFeesByPeriodDescriptor instead')
const OperatorFeesByPeriod$json = const {
  '1': 'OperatorFeesByPeriod',
  '2': const [
    const {
      '1': 'OperatorFees',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.OperatorFeeAccount',
      '10': 'OperatorFees'
    },
  ],
};

/// Descriptor for `OperatorFeesByPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operatorFeesByPeriodDescriptor = $convert.base64Decode(
    'ChRPcGVyYXRvckZlZXNCeVBlcmlvZBI9CgxPcGVyYXRvckZlZXMYASADKAsyGS5wcm90by5PcGVyYXRvckZlZUFjY291bnRSDE9wZXJhdG9yRmVlcw==');
@$core.Deprecated('Use vxFundByPeriodDescriptor instead')
const VxFundByPeriod$json = const {
  '1': 'VxFundByPeriod',
  '2': const [
    const {'1': 'Period', '3': 1, '4': 1, '5': 4, '10': 'Period'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `VxFundByPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxFundByPeriodDescriptor = $convert.base64Decode(
    'Cg5WeEZ1bmRCeVBlcmlvZBIWCgZQZXJpb2QYASABKARSBlBlcmlvZBIWCgZBbW91bnQYAiABKAxSBkFtb3VudA==');
@$core.Deprecated('Use vxFundsDescriptor instead')
const VxFunds$json = const {
  '1': 'VxFunds',
  '2': const [
    const {
      '1': 'Funds',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.VxFundByPeriod',
      '10': 'Funds'
    },
  ],
};

/// Descriptor for `VxFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxFundsDescriptor = $convert.base64Decode(
    'CgdWeEZ1bmRzEisKBUZ1bmRzGAEgAygLMhUucHJvdG8uVnhGdW5kQnlQZXJpb2RSBUZ1bmRz');
@$core.Deprecated('Use vIPStakingDescriptor instead')
const VIPStaking$json = const {
  '1': 'VIPStaking',
  '2': const [
    const {'1': 'Timestamp', '3': 1, '4': 1, '5': 3, '10': 'Timestamp'},
    const {'1': 'StakedTimes', '3': 2, '4': 1, '5': 5, '10': 'StakedTimes'},
    const {
      '1': 'StakingHashes',
      '3': 3,
      '4': 3,
      '5': 12,
      '10': 'StakingHashes'
    },
  ],
};

/// Descriptor for `VIPStaking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vIPStakingDescriptor = $convert.base64Decode(
    'CgpWSVBTdGFraW5nEhwKCVRpbWVzdGFtcBgBIAEoA1IJVGltZXN0YW1wEiAKC1N0YWtlZFRpbWVzGAIgASgFUgtTdGFrZWRUaW1lcxIkCg1TdGFraW5nSGFzaGVzGAMgAygMUg1TdGFraW5nSGFzaGVz');
@$core.Deprecated('Use delegateStakeInfoDescriptor instead')
const DelegateStakeInfo$json = const {
  '1': 'DelegateStakeInfo',
  '2': const [
    const {'1': 'StakeType', '3': 1, '4': 1, '5': 5, '10': 'StakeType'},
    const {'1': 'Address', '3': 2, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'Principal', '3': 3, '4': 1, '5': 12, '10': 'Principal'},
    const {'1': 'Amount', '3': 4, '4': 1, '5': 12, '10': 'Amount'},
    const {'1': 'Status', '3': 5, '4': 1, '5': 5, '10': 'Status'},
    const {'1': 'SerialNo', '3': 6, '4': 1, '5': 4, '10': 'SerialNo'},
    const {'1': 'Id', '3': 7, '4': 1, '5': 12, '10': 'Id'},
  ],
};

/// Descriptor for `DelegateStakeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delegateStakeInfoDescriptor = $convert.base64Decode(
    'ChFEZWxlZ2F0ZVN0YWtlSW5mbxIcCglTdGFrZVR5cGUYASABKAVSCVN0YWtlVHlwZRIYCgdBZGRyZXNzGAIgASgMUgdBZGRyZXNzEhwKCVByaW5jaXBhbBgDIAEoDFIJUHJpbmNpcGFsEhYKBkFtb3VudBgEIAEoDFIGQW1vdW50EhYKBlN0YXR1cxgFIAEoBVIGU3RhdHVzEhoKCFNlcmlhbE5vGAYgASgEUghTZXJpYWxObxIOCgJJZBgHIAEoDFICSWQ=');
@$core.Deprecated('Use delegateStakeAddressIndexDescriptor instead')
const DelegateStakeAddressIndex$json = const {
  '1': 'DelegateStakeAddressIndex',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 12, '10': 'Id'},
    const {'1': 'StakeType', '3': 2, '4': 1, '5': 5, '10': 'StakeType'},
  ],
};

/// Descriptor for `DelegateStakeAddressIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delegateStakeAddressIndexDescriptor =
    $convert.base64Decode(
        'ChlEZWxlZ2F0ZVN0YWtlQWRkcmVzc0luZGV4Eg4KAklkGAEgASgMUgJJZBIcCglTdGFrZVR5cGUYAiABKAVSCVN0YWtlVHlwZQ==');
@$core.Deprecated('Use miningStakingByPeriodDescriptor instead')
const MiningStakingByPeriod$json = const {
  '1': 'MiningStakingByPeriod',
  '2': const [
    const {'1': 'Period', '3': 1, '4': 1, '5': 4, '10': 'Period'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `MiningStakingByPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miningStakingByPeriodDescriptor = $convert.base64Decode(
    'ChVNaW5pbmdTdGFraW5nQnlQZXJpb2QSFgoGUGVyaW9kGAEgASgEUgZQZXJpb2QSFgoGQW1vdW50GAIgASgMUgZBbW91bnQ=');
@$core.Deprecated('Use miningStakingsDescriptor instead')
const MiningStakings$json = const {
  '1': 'MiningStakings',
  '2': const [
    const {
      '1': 'Stakings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.MiningStakingByPeriod',
      '10': 'Stakings'
    },
  ],
};

/// Descriptor for `MiningStakings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miningStakingsDescriptor = $convert.base64Decode(
    'Cg5NaW5pbmdTdGFraW5ncxI4CghTdGFraW5ncxgBIAMoCzIcLnByb3RvLk1pbmluZ1N0YWtpbmdCeVBlcmlvZFIIU3Rha2luZ3M=');
@$core.Deprecated('Use vxSettleActionDescriptor instead')
const VxSettleAction$json = const {
  '1': 'VxSettleAction',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `VxSettleAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxSettleActionDescriptor = $convert.base64Decode(
    'Cg5WeFNldHRsZUFjdGlvbhIYCgdBZGRyZXNzGAEgASgMUgdBZGRyZXNzEhYKBkFtb3VudBgCIAEoDFIGQW1vdW50');
@$core.Deprecated('Use vxSettleActionsDescriptor instead')
const VxSettleActions$json = const {
  '1': 'VxSettleActions',
  '2': const [
    const {'1': 'Period', '3': 1, '4': 1, '5': 4, '10': 'Period'},
    const {'1': 'Page', '3': 2, '4': 1, '5': 5, '10': 'Page'},
    const {
      '1': 'actions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.proto.VxSettleAction',
      '10': 'actions'
    },
  ],
};

/// Descriptor for `VxSettleActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vxSettleActionsDescriptor = $convert.base64Decode(
    'Cg9WeFNldHRsZUFjdGlvbnMSFgoGUGVyaW9kGAEgASgEUgZQZXJpb2QSEgoEUGFnZRgCIAEoBVIEUGFnZRIvCgdhY3Rpb25zGAMgAygLMhUucHJvdG8uVnhTZXR0bGVBY3Rpb25SB2FjdGlvbnM=');
@$core.Deprecated('Use periodJobForBizDescriptor instead')
const PeriodJobForBiz$json = const {
  '1': 'PeriodJobForBiz',
  '2': const [
    const {'1': 'Period', '3': 1, '4': 1, '5': 4, '10': 'Period'},
    const {'1': 'BizType', '3': 2, '4': 1, '5': 5, '10': 'BizType'},
  ],
};

/// Descriptor for `PeriodJobForBiz`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List periodJobForBizDescriptor = $convert.base64Decode(
    'Cg9QZXJpb2RKb2JGb3JCaXoSFgoGUGVyaW9kGAEgASgEUgZQZXJpb2QSGAoHQml6VHlwZRgCIAEoBVIHQml6VHlwZQ==');
@$core.Deprecated('Use feeDividendForVxHolderDescriptor instead')
const FeeDividendForVxHolder$json = const {
  '1': 'FeeDividendForVxHolder',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'VxAmount', '3': 2, '4': 1, '5': 12, '10': 'VxAmount'},
    const {'1': 'FeeToken', '3': 3, '4': 1, '5': 12, '10': 'FeeToken'},
    const {'1': 'FeeDividend', '3': 4, '4': 1, '5': 12, '10': 'FeeDividend'},
  ],
};

/// Descriptor for `FeeDividendForVxHolder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeDividendForVxHolderDescriptor =
    $convert.base64Decode(
        'ChZGZWVEaXZpZGVuZEZvclZ4SG9sZGVyEhgKB0FkZHJlc3MYASABKAxSB0FkZHJlc3MSGgoIVnhBbW91bnQYAiABKAxSCFZ4QW1vdW50EhoKCEZlZVRva2VuGAMgASgMUghGZWVUb2tlbhIgCgtGZWVEaXZpZGVuZBgEIAEoDFILRmVlRGl2aWRlbmQ=');
@$core.Deprecated('Use minedVxForFeeDescriptor instead')
const MinedVxForFee$json = const {
  '1': 'MinedVxForFee',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {
      '1': 'QuoteTokenType',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
    const {'1': 'FeeAmount', '3': 3, '4': 1, '5': 12, '10': 'FeeAmount'},
    const {'1': 'MinedAmount', '3': 4, '4': 1, '5': 12, '10': 'MinedAmount'},
  ],
};

/// Descriptor for `MinedVxForFee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minedVxForFeeDescriptor = $convert.base64Decode(
    'Cg1NaW5lZFZ4Rm9yRmVlEhgKB0FkZHJlc3MYASABKAxSB0FkZHJlc3MSJgoOUXVvdGVUb2tlblR5cGUYAiABKAVSDlF1b3RlVG9rZW5UeXBlEhwKCUZlZUFtb3VudBgDIAEoDFIJRmVlQW1vdW50EiAKC01pbmVkQW1vdW50GAQgASgMUgtNaW5lZEFtb3VudA==');
@$core.Deprecated('Use minedVxForStakingDescriptor instead')
const MinedVxForStaking$json = const {
  '1': 'MinedVxForStaking',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'StakedAmount', '3': 2, '4': 1, '5': 12, '10': 'StakedAmount'},
    const {'1': 'MinedAmount', '3': 3, '4': 1, '5': 12, '10': 'MinedAmount'},
  ],
};

/// Descriptor for `MinedVxForStaking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minedVxForStakingDescriptor = $convert.base64Decode(
    'ChFNaW5lZFZ4Rm9yU3Rha2luZxIYCgdBZGRyZXNzGAEgASgMUgdBZGRyZXNzEiIKDFN0YWtlZEFtb3VudBgCIAEoDFIMU3Rha2VkQW1vdW50EiAKC01pbmVkQW1vdW50GAMgASgMUgtNaW5lZEFtb3VudA==');
@$core.Deprecated('Use operatorFeeDividendDescriptor instead')
const OperatorFeeDividend$json = const {
  '1': 'OperatorFeeDividend',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'MarketId', '3': 2, '4': 1, '5': 5, '10': 'MarketId'},
    const {
      '1': 'TakerOperatorFeeRate',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'TakerOperatorFeeRate'
    },
    const {
      '1': 'MakerOperatorFeeRate',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'MakerOperatorFeeRate'
    },
    const {'1': 'Amount', '3': 5, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `OperatorFeeDividend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operatorFeeDividendDescriptor = $convert.base64Decode(
    'ChNPcGVyYXRvckZlZURpdmlkZW5kEhgKB0FkZHJlc3MYASABKAxSB0FkZHJlc3MSGgoITWFya2V0SWQYAiABKAVSCE1hcmtldElkEjIKFFRha2VyT3BlcmF0b3JGZWVSYXRlGAMgASgFUhRUYWtlck9wZXJhdG9yRmVlUmF0ZRIyChRNYWtlck9wZXJhdG9yRmVlUmF0ZRgEIAEoBVIUTWFrZXJPcGVyYXRvckZlZVJhdGUSFgoGQW1vdW50GAUgASgMUgZBbW91bnQ=');
@$core.Deprecated('Use minedVxForOperationDescriptor instead')
const MinedVxForOperation$json = const {
  '1': 'MinedVxForOperation',
  '2': const [
    const {'1': 'BizType', '3': 1, '4': 1, '5': 5, '10': 'BizType'},
    const {'1': 'Address', '3': 2, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'Amount', '3': 3, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `MinedVxForOperation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minedVxForOperationDescriptor = $convert.base64Decode(
    'ChNNaW5lZFZ4Rm9yT3BlcmF0aW9uEhgKB0JpelR5cGUYASABKAVSB0JpelR5cGUSGAoHQWRkcmVzcxgCIAEoDFIHQWRkcmVzcxIWCgZBbW91bnQYAyABKAxSBkFtb3VudA==');
@$core.Deprecated('Use inviteRelationDescriptor instead')
const InviteRelation$json = const {
  '1': 'InviteRelation',
  '2': const [
    const {'1': 'Inviter', '3': 1, '4': 1, '5': 12, '10': 'Inviter'},
    const {'1': 'Invitee', '3': 2, '4': 1, '5': 12, '10': 'Invitee'},
    const {'1': 'InviteCode', '3': 3, '4': 1, '5': 13, '10': 'InviteCode'},
  ],
};

/// Descriptor for `InviteRelation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteRelationDescriptor = $convert.base64Decode(
    'Cg5JbnZpdGVSZWxhdGlvbhIYCgdJbnZpdGVyGAEgASgMUgdJbnZpdGVyEhgKB0ludml0ZWUYAiABKAxSB0ludml0ZWUSHgoKSW52aXRlQ29kZRgDIAEoDVIKSW52aXRlQ29kZQ==');
@$core.Deprecated('Use settleMakerMinedVxDescriptor instead')
const SettleMakerMinedVx$json = const {
  '1': 'SettleMakerMinedVx',
  '2': const [
    const {'1': 'PeriodId', '3': 1, '4': 1, '5': 4, '10': 'PeriodId'},
    const {'1': 'Page', '3': 2, '4': 1, '5': 5, '10': 'Page'},
    const {'1': 'Finish', '3': 3, '4': 1, '5': 8, '10': 'Finish'},
  ],
};

/// Descriptor for `SettleMakerMinedVx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleMakerMinedVxDescriptor = $convert.base64Decode(
    'ChJTZXR0bGVNYWtlck1pbmVkVngSGgoIUGVyaW9kSWQYASABKARSCFBlcmlvZElkEhIKBFBhZ2UYAiABKAVSBFBhZ2USFgoGRmluaXNoGAMgASgIUgZGaW5pc2g=');
@$core.Deprecated('Use marketAgentRelationDescriptor instead')
const MarketAgentRelation$json = const {
  '1': 'MarketAgentRelation',
  '2': const [
    const {'1': 'Principal', '3': 1, '4': 1, '5': 12, '10': 'Principal'},
    const {'1': 'Agent', '3': 2, '4': 1, '5': 12, '10': 'Agent'},
    const {'1': 'MarketId', '3': 3, '4': 1, '5': 5, '10': 'MarketId'},
  ],
};

/// Descriptor for `MarketAgentRelation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketAgentRelationDescriptor = $convert.base64Decode(
    'ChNNYXJrZXRBZ2VudFJlbGF0aW9uEhwKCVByaW5jaXBhbBgBIAEoDFIJUHJpbmNpcGFsEhQKBUFnZW50GAIgASgMUgVBZ2VudBIaCghNYXJrZXRJZBgDIAEoBVIITWFya2V0SWQ=');
@$core.Deprecated('Use burnViteDescriptor instead')
const BurnVite$json = const {
  '1': 'BurnVite',
  '2': const [
    const {'1': 'BizType', '3': 1, '4': 1, '5': 5, '10': 'BizType'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 12, '10': 'Amount'},
  ],
};

/// Descriptor for `BurnVite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List burnViteDescriptor = $convert.base64Decode(
    'CghCdXJuVml0ZRIYCgdCaXpUeXBlGAEgASgFUgdCaXpUeXBlEhYKBkFtb3VudBgCIAEoDFIGQW1vdW50');
@$core.Deprecated('Use transferAssetDescriptor instead')
const TransferAsset$json = const {
  '1': 'TransferAsset',
  '2': const [
    const {'1': 'BizType', '3': 1, '4': 1, '5': 5, '10': 'BizType'},
    const {'1': 'From', '3': 2, '4': 1, '5': 12, '10': 'From'},
    const {'1': 'To', '3': 3, '4': 1, '5': 12, '10': 'To'},
    const {'1': 'Token', '3': 4, '4': 1, '5': 12, '10': 'Token'},
    const {'1': 'Amount', '3': 5, '4': 1, '5': 12, '10': 'Amount'},
    const {'1': 'Extra', '3': 6, '4': 1, '5': 12, '10': 'Extra'},
  ],
};

/// Descriptor for `TransferAsset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferAssetDescriptor = $convert.base64Decode(
    'Cg1UcmFuc2ZlckFzc2V0EhgKB0JpelR5cGUYASABKAVSB0JpelR5cGUSEgoERnJvbRgCIAEoDFIERnJvbRIOCgJUbxgDIAEoDFICVG8SFAoFVG9rZW4YBCABKAxSBVRva2VuEhYKBkFtb3VudBgFIAEoDFIGQW1vdW50EhQKBUV4dHJhGAYgASgMUgVFeHRyYQ==');
