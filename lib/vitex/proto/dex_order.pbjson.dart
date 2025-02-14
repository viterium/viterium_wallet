//
//  Generated code. Do not modify.
//  source: dex_order.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use orderDescriptor instead')
const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 12, '10': 'Id'},
    const {'1': 'Address', '3': 2, '4': 1, '5': 12, '10': 'Address'},
    const {'1': 'MarketId', '3': 3, '4': 1, '5': 5, '10': 'MarketId'},
    const {'1': 'Side', '3': 4, '4': 1, '5': 8, '10': 'Side'},
    const {'1': 'Type', '3': 5, '4': 1, '5': 5, '10': 'Type'},
    const {'1': 'Price', '3': 6, '4': 1, '5': 12, '10': 'Price'},
    const {'1': 'TakerFeeRate', '3': 7, '4': 1, '5': 5, '10': 'TakerFeeRate'},
    const {'1': 'MakerFeeRate', '3': 8, '4': 1, '5': 5, '10': 'MakerFeeRate'},
    const {
      '1': 'TakerOperatorFeeRate',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'TakerOperatorFeeRate'
    },
    const {
      '1': 'MakerOperatorFeeRate',
      '3': 10,
      '4': 1,
      '5': 5,
      '10': 'MakerOperatorFeeRate'
    },
    const {'1': 'Quantity', '3': 11, '4': 1, '5': 12, '10': 'Quantity'},
    const {'1': 'Amount', '3': 12, '4': 1, '5': 12, '10': 'Amount'},
    const {'1': 'LockedBuyFee', '3': 13, '4': 1, '5': 12, '10': 'LockedBuyFee'},
    const {'1': 'Status', '3': 14, '4': 1, '5': 5, '10': 'Status'},
    const {'1': 'CancelReason', '3': 15, '4': 1, '5': 5, '10': 'CancelReason'},
    const {
      '1': 'ExecutedQuantity',
      '3': 16,
      '4': 1,
      '5': 12,
      '10': 'ExecutedQuantity'
    },
    const {
      '1': 'ExecutedAmount',
      '3': 17,
      '4': 1,
      '5': 12,
      '10': 'ExecutedAmount'
    },
    const {
      '1': 'ExecutedBaseFee',
      '3': 18,
      '4': 1,
      '5': 12,
      '10': 'ExecutedBaseFee'
    },
    const {
      '1': 'ExecutedOperatorFee',
      '3': 19,
      '4': 1,
      '5': 12,
      '10': 'ExecutedOperatorFee'
    },
    const {'1': 'RefundToken', '3': 20, '4': 1, '5': 12, '10': 'RefundToken'},
    const {
      '1': 'RefundQuantity',
      '3': 21,
      '4': 1,
      '5': 12,
      '10': 'RefundQuantity'
    },
    const {'1': 'Timestamp', '3': 22, '4': 1, '5': 3, '10': 'Timestamp'},
    const {'1': 'Agent', '3': 23, '4': 1, '5': 12, '10': 'Agent'},
    const {'1': 'SendHash', '3': 24, '4': 1, '5': 12, '10': 'SendHash'},
    const {
      '1': 'MarketOrderAmtThreshold',
      '3': 25,
      '4': 1,
      '5': 12,
      '10': 'MarketOrderAmtThreshold'
    },
  ],
};

/// Descriptor for `Order`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderDescriptor = $convert.base64Decode(
    'CgVPcmRlchIOCgJJZBgBIAEoDFICSWQSGAoHQWRkcmVzcxgCIAEoDFIHQWRkcmVzcxIaCghNYXJrZXRJZBgDIAEoBVIITWFya2V0SWQSEgoEU2lkZRgEIAEoCFIEU2lkZRISCgRUeXBlGAUgASgFUgRUeXBlEhQKBVByaWNlGAYgASgMUgVQcmljZRIiCgxUYWtlckZlZVJhdGUYByABKAVSDFRha2VyRmVlUmF0ZRIiCgxNYWtlckZlZVJhdGUYCCABKAVSDE1ha2VyRmVlUmF0ZRIyChRUYWtlck9wZXJhdG9yRmVlUmF0ZRgJIAEoBVIUVGFrZXJPcGVyYXRvckZlZVJhdGUSMgoUTWFrZXJPcGVyYXRvckZlZVJhdGUYCiABKAVSFE1ha2VyT3BlcmF0b3JGZWVSYXRlEhoKCFF1YW50aXR5GAsgASgMUghRdWFudGl0eRIWCgZBbW91bnQYDCABKAxSBkFtb3VudBIiCgxMb2NrZWRCdXlGZWUYDSABKAxSDExvY2tlZEJ1eUZlZRIWCgZTdGF0dXMYDiABKAVSBlN0YXR1cxIiCgxDYW5jZWxSZWFzb24YDyABKAVSDENhbmNlbFJlYXNvbhIqChBFeGVjdXRlZFF1YW50aXR5GBAgASgMUhBFeGVjdXRlZFF1YW50aXR5EiYKDkV4ZWN1dGVkQW1vdW50GBEgASgMUg5FeGVjdXRlZEFtb3VudBIoCg9FeGVjdXRlZEJhc2VGZWUYEiABKAxSD0V4ZWN1dGVkQmFzZUZlZRIwChNFeGVjdXRlZE9wZXJhdG9yRmVlGBMgASgMUhNFeGVjdXRlZE9wZXJhdG9yRmVlEiAKC1JlZnVuZFRva2VuGBQgASgMUgtSZWZ1bmRUb2tlbhImCg5SZWZ1bmRRdWFudGl0eRgVIAEoDFIOUmVmdW5kUXVhbnRpdHkSHAoJVGltZXN0YW1wGBYgASgDUglUaW1lc3RhbXASFAoFQWdlbnQYFyABKAxSBUFnZW50EhoKCFNlbmRIYXNoGBggASgMUghTZW5kSGFzaBI4ChdNYXJrZXRPcmRlckFtdFRocmVzaG9sZBgZIAEoDFIXTWFya2V0T3JkZXJBbXRUaHJlc2hvbGQ=');
@$core.Deprecated('Use serialNoDescriptor instead')
const SerialNo$json = const {
  '1': 'SerialNo',
  '2': const [
    const {'1': 'No', '3': 1, '4': 1, '5': 5, '10': 'No'},
    const {'1': 'Timestamp', '3': 2, '4': 1, '5': 3, '10': 'Timestamp'},
  ],
};

/// Descriptor for `SerialNo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serialNoDescriptor = $convert.base64Decode(
    'CghTZXJpYWxObxIOCgJObxgBIAEoBVICTm8SHAoJVGltZXN0YW1wGAIgASgDUglUaW1lc3RhbXA=');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 12, '10': 'Id'},
    const {'1': 'TakerSide', '3': 2, '4': 1, '5': 8, '10': 'TakerSide'},
    const {'1': 'TakerId', '3': 3, '4': 1, '5': 12, '10': 'TakerId'},
    const {'1': 'MakerId', '3': 4, '4': 1, '5': 12, '10': 'MakerId'},
    const {'1': 'Price', '3': 5, '4': 1, '5': 12, '10': 'Price'},
    const {'1': 'Quantity', '3': 6, '4': 1, '5': 12, '10': 'Quantity'},
    const {'1': 'Amount', '3': 7, '4': 1, '5': 12, '10': 'Amount'},
    const {'1': 'TakerFee', '3': 8, '4': 1, '5': 12, '10': 'TakerFee'},
    const {'1': 'MakerFee', '3': 9, '4': 1, '5': 12, '10': 'MakerFee'},
    const {
      '1': 'TakerOperatorFee',
      '3': 10,
      '4': 1,
      '5': 12,
      '10': 'TakerOperatorFee'
    },
    const {
      '1': 'MakerOperatorFee',
      '3': 11,
      '4': 1,
      '5': 12,
      '10': 'MakerOperatorFee'
    },
    const {'1': 'Timestamp', '3': 12, '4': 1, '5': 3, '10': 'Timestamp'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode(
    'CgtUcmFuc2FjdGlvbhIOCgJJZBgBIAEoDFICSWQSHAoJVGFrZXJTaWRlGAIgASgIUglUYWtlclNpZGUSGAoHVGFrZXJJZBgDIAEoDFIHVGFrZXJJZBIYCgdNYWtlcklkGAQgASgMUgdNYWtlcklkEhQKBVByaWNlGAUgASgMUgVQcmljZRIaCghRdWFudGl0eRgGIAEoDFIIUXVhbnRpdHkSFgoGQW1vdW50GAcgASgMUgZBbW91bnQSGgoIVGFrZXJGZWUYCCABKAxSCFRha2VyRmVlEhoKCE1ha2VyRmVlGAkgASgMUghNYWtlckZlZRIqChBUYWtlck9wZXJhdG9yRmVlGAogASgMUhBUYWtlck9wZXJhdG9yRmVlEioKEE1ha2VyT3BlcmF0b3JGZWUYCyABKAxSEE1ha2VyT3BlcmF0b3JGZWUSHAoJVGltZXN0YW1wGAwgASgDUglUaW1lc3RhbXA=');
@$core.Deprecated('Use tokenInfoDescriptor instead')
const TokenInfo$json = const {
  '1': 'TokenInfo',
  '2': const [
    const {'1': 'TokenId', '3': 1, '4': 1, '5': 12, '10': 'TokenId'},
    const {'1': 'Decimals', '3': 2, '4': 1, '5': 5, '10': 'Decimals'},
    const {'1': 'Symbol', '3': 3, '4': 1, '5': 9, '10': 'Symbol'},
    const {'1': 'Index', '3': 4, '4': 1, '5': 5, '10': 'Index'},
    const {'1': 'Owner', '3': 5, '4': 1, '5': 12, '10': 'Owner'},
    const {
      '1': 'QuoteTokenType',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
  ],
};

/// Descriptor for `TokenInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenInfoDescriptor = $convert.base64Decode(
    'CglUb2tlbkluZm8SGAoHVG9rZW5JZBgBIAEoDFIHVG9rZW5JZBIaCghEZWNpbWFscxgCIAEoBVIIRGVjaW1hbHMSFgoGU3ltYm9sGAMgASgJUgZTeW1ib2wSFAoFSW5kZXgYBCABKAVSBUluZGV4EhQKBU93bmVyGAUgASgMUgVPd25lchImCg5RdW90ZVRva2VuVHlwZRgGIAEoBVIOUXVvdGVUb2tlblR5cGU=');
@$core.Deprecated('Use marketInfoDescriptor instead')
const MarketInfo$json = const {
  '1': 'MarketInfo',
  '2': const [
    const {'1': 'MarketId', '3': 1, '4': 1, '5': 5, '10': 'MarketId'},
    const {'1': 'MarketSymbol', '3': 2, '4': 1, '5': 9, '10': 'MarketSymbol'},
    const {'1': 'TradeToken', '3': 3, '4': 1, '5': 12, '10': 'TradeToken'},
    const {'1': 'QuoteToken', '3': 4, '4': 1, '5': 12, '10': 'QuoteToken'},
    const {
      '1': 'QuoteTokenType',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
    const {
      '1': 'TradeTokenDecimals',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'TradeTokenDecimals'
    },
    const {
      '1': 'QuoteTokenDecimals',
      '3': 7,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenDecimals'
    },
    const {
      '1': 'TakerOperatorFeeRate',
      '3': 8,
      '4': 1,
      '5': 5,
      '10': 'TakerOperatorFeeRate'
    },
    const {
      '1': 'MakerOperatorFeeRate',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'MakerOperatorFeeRate'
    },
    const {'1': 'AllowMining', '3': 10, '4': 1, '5': 8, '10': 'AllowMining'},
    const {'1': 'Valid', '3': 11, '4': 1, '5': 8, '10': 'Valid'},
    const {'1': 'Owner', '3': 12, '4': 1, '5': 12, '10': 'Owner'},
    const {'1': 'Creator', '3': 13, '4': 1, '5': 12, '10': 'Creator'},
    const {'1': 'Stopped', '3': 14, '4': 1, '5': 8, '10': 'Stopped'},
    const {'1': 'Timestamp', '3': 15, '4': 1, '5': 3, '10': 'Timestamp'},
    const {'1': 'StableMarket', '3': 16, '4': 1, '5': 8, '10': 'StableMarket'},
  ],
};

/// Descriptor for `MarketInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketInfoDescriptor = $convert.base64Decode(
    'CgpNYXJrZXRJbmZvEhoKCE1hcmtldElkGAEgASgFUghNYXJrZXRJZBIiCgxNYXJrZXRTeW1ib2wYAiABKAlSDE1hcmtldFN5bWJvbBIeCgpUcmFkZVRva2VuGAMgASgMUgpUcmFkZVRva2VuEh4KClF1b3RlVG9rZW4YBCABKAxSClF1b3RlVG9rZW4SJgoOUXVvdGVUb2tlblR5cGUYBSABKAVSDlF1b3RlVG9rZW5UeXBlEi4KElRyYWRlVG9rZW5EZWNpbWFscxgGIAEoBVISVHJhZGVUb2tlbkRlY2ltYWxzEi4KElF1b3RlVG9rZW5EZWNpbWFscxgHIAEoBVISUXVvdGVUb2tlbkRlY2ltYWxzEjIKFFRha2VyT3BlcmF0b3JGZWVSYXRlGAggASgFUhRUYWtlck9wZXJhdG9yRmVlUmF0ZRIyChRNYWtlck9wZXJhdG9yRmVlUmF0ZRgJIAEoBVIUTWFrZXJPcGVyYXRvckZlZVJhdGUSIAoLQWxsb3dNaW5pbmcYCiABKAhSC0FsbG93TWluaW5nEhQKBVZhbGlkGAsgASgIUgVWYWxpZBIUCgVPd25lchgMIAEoDFIFT3duZXISGAoHQ3JlYXRvchgNIAEoDFIHQ3JlYXRvchIYCgdTdG9wcGVkGA4gASgIUgdTdG9wcGVkEhwKCVRpbWVzdGFtcBgPIAEoA1IJVGltZXN0YW1wEiIKDFN0YWJsZU1hcmtldBgQIAEoCFIMU3RhYmxlTWFya2V0');
@$core.Deprecated('Use newOrderInfoDescriptor instead')
const NewOrderInfo$json = const {
  '1': 'NewOrderInfo',
  '2': const [
    const {
      '1': 'Order',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.proto.Order',
      '10': 'Order'
    },
    const {'1': 'TradeToken', '3': 2, '4': 1, '5': 12, '10': 'TradeToken'},
    const {'1': 'QuoteToken', '3': 3, '4': 1, '5': 12, '10': 'QuoteToken'},
  ],
};

/// Descriptor for `NewOrderInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newOrderInfoDescriptor = $convert.base64Decode(
    'CgxOZXdPcmRlckluZm8SIgoFT3JkZXIYASABKAsyDC5wcm90by5PcmRlclIFT3JkZXISHgoKVHJhZGVUb2tlbhgCIAEoDFIKVHJhZGVUb2tlbhIeCgpRdW90ZVRva2VuGAMgASgMUgpRdW90ZVRva2Vu');
@$core.Deprecated('Use orderUpdateInfoDescriptor instead')
const OrderUpdateInfo$json = const {
  '1': 'OrderUpdateInfo',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 12, '10': 'Id'},
    const {'1': 'TradeToken', '3': 2, '4': 1, '5': 12, '10': 'TradeToken'},
    const {'1': 'QuoteToken', '3': 3, '4': 1, '5': 12, '10': 'QuoteToken'},
    const {'1': 'Status', '3': 4, '4': 1, '5': 5, '10': 'Status'},
    const {'1': 'CancelReason', '3': 5, '4': 1, '5': 5, '10': 'CancelReason'},
    const {
      '1': 'ExecutedQuantity',
      '3': 6,
      '4': 1,
      '5': 12,
      '10': 'ExecutedQuantity'
    },
    const {
      '1': 'ExecutedAmount',
      '3': 7,
      '4': 1,
      '5': 12,
      '10': 'ExecutedAmount'
    },
    const {
      '1': 'ExecutedBaseFee',
      '3': 8,
      '4': 1,
      '5': 12,
      '10': 'ExecutedBaseFee'
    },
    const {
      '1': 'ExecutedOperatorFee',
      '3': 9,
      '4': 1,
      '5': 12,
      '10': 'ExecutedOperatorFee'
    },
    const {'1': 'RefundToken', '3': 10, '4': 1, '5': 12, '10': 'RefundToken'},
    const {
      '1': 'RefundQuantity',
      '3': 11,
      '4': 1,
      '5': 12,
      '10': 'RefundQuantity'
    },
  ],
};

/// Descriptor for `OrderUpdateInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderUpdateInfoDescriptor = $convert.base64Decode(
    'Cg9PcmRlclVwZGF0ZUluZm8SDgoCSWQYASABKAxSAklkEh4KClRyYWRlVG9rZW4YAiABKAxSClRyYWRlVG9rZW4SHgoKUXVvdGVUb2tlbhgDIAEoDFIKUXVvdGVUb2tlbhIWCgZTdGF0dXMYBCABKAVSBlN0YXR1cxIiCgxDYW5jZWxSZWFzb24YBSABKAVSDENhbmNlbFJlYXNvbhIqChBFeGVjdXRlZFF1YW50aXR5GAYgASgMUhBFeGVjdXRlZFF1YW50aXR5EiYKDkV4ZWN1dGVkQW1vdW50GAcgASgMUg5FeGVjdXRlZEFtb3VudBIoCg9FeGVjdXRlZEJhc2VGZWUYCCABKAxSD0V4ZWN1dGVkQmFzZUZlZRIwChNFeGVjdXRlZE9wZXJhdG9yRmVlGAkgASgMUhNFeGVjdXRlZE9wZXJhdG9yRmVlEiAKC1JlZnVuZFRva2VuGAogASgMUgtSZWZ1bmRUb2tlbhImCg5SZWZ1bmRRdWFudGl0eRgLIAEoDFIOUmVmdW5kUXVhbnRpdHk=');
@$core.Deprecated('Use newMarketActionDescriptor instead')
const NewMarketAction$json = const {
  '1': 'NewMarketAction',
  '2': const [
    const {'1': 'TradeToken', '3': 1, '4': 1, '5': 12, '10': 'TradeToken'},
    const {'1': 'QuoteTokens', '3': 2, '4': 3, '5': 12, '10': 'QuoteTokens'},
  ],
};

/// Descriptor for `NewMarketAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newMarketActionDescriptor = $convert.base64Decode(
    'Cg9OZXdNYXJrZXRBY3Rpb24SHgoKVHJhZGVUb2tlbhgBIAEoDFIKVHJhZGVUb2tlbhIgCgtRdW90ZVRva2VucxgCIAMoDFILUXVvdGVUb2tlbnM=');
@$core.Deprecated('Use pendingNewMarketsDescriptor instead')
const PendingNewMarkets$json = const {
  '1': 'PendingNewMarkets',
  '2': const [
    const {
      '1': 'PendingActions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.NewMarketAction',
      '10': 'PendingActions'
    },
  ],
};

/// Descriptor for `PendingNewMarkets`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingNewMarketsDescriptor = $convert.base64Decode(
    'ChFQZW5kaW5nTmV3TWFya2V0cxI+Cg5QZW5kaW5nQWN0aW9ucxgBIAMoCzIWLnByb3RvLk5ld01hcmtldEFjdGlvblIOUGVuZGluZ0FjdGlvbnM=');
@$core.Deprecated('Use setQuoteTokenActionDescriptor instead')
const SetQuoteTokenAction$json = const {
  '1': 'SetQuoteTokenAction',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 12, '10': 'Token'},
    const {
      '1': 'QuoteTokenType',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'QuoteTokenType'
    },
  ],
};

/// Descriptor for `SetQuoteTokenAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setQuoteTokenActionDescriptor = $convert.base64Decode(
    'ChNTZXRRdW90ZVRva2VuQWN0aW9uEhQKBVRva2VuGAEgASgMUgVUb2tlbhImCg5RdW90ZVRva2VuVHlwZRgCIAEoBVIOUXVvdGVUb2tlblR5cGU=');
@$core.Deprecated('Use pendingSetQuoteTokenActionsDescriptor instead')
const PendingSetQuoteTokenActions$json = const {
  '1': 'PendingSetQuoteTokenActions',
  '2': const [
    const {
      '1': 'pendingActions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.SetQuoteTokenAction',
      '10': 'pendingActions'
    },
  ],
};

/// Descriptor for `PendingSetQuoteTokenActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingSetQuoteTokenActionsDescriptor =
    $convert.base64Decode(
        'ChtQZW5kaW5nU2V0UXVvdGVUb2tlbkFjdGlvbnMSQgoOcGVuZGluZ0FjdGlvbnMYASADKAsyGi5wcm90by5TZXRRdW90ZVRva2VuQWN0aW9uUg5wZW5kaW5nQWN0aW9ucw==');
@$core.Deprecated('Use transferTokenOwnerActionDescriptor instead')
const TransferTokenOwnerAction$json = const {
  '1': 'TransferTokenOwnerAction',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
    const {'1': 'Origin', '3': 2, '4': 1, '5': 12, '10': 'Origin'},
    const {'1': 'New', '3': 3, '4': 1, '5': 12, '10': 'New'},
  ],
};

/// Descriptor for `TransferTokenOwnerAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferTokenOwnerActionDescriptor =
    $convert.base64Decode(
        'ChhUcmFuc2ZlclRva2VuT3duZXJBY3Rpb24SFAoFdG9rZW4YASABKAxSBXRva2VuEhYKBk9yaWdpbhgCIAEoDFIGT3JpZ2luEhAKA05ldxgDIAEoDFIDTmV3');
@$core.Deprecated('Use pendingTransferTokenOwnerActionsDescriptor instead')
const PendingTransferTokenOwnerActions$json = const {
  '1': 'PendingTransferTokenOwnerActions',
  '2': const [
    const {
      '1': 'pendingActions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.proto.TransferTokenOwnerAction',
      '10': 'pendingActions'
    },
  ],
};

/// Descriptor for `PendingTransferTokenOwnerActions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingTransferTokenOwnerActionsDescriptor =
    $convert.base64Decode(
        'CiBQZW5kaW5nVHJhbnNmZXJUb2tlbk93bmVyQWN0aW9ucxJHCg5wZW5kaW5nQWN0aW9ucxgBIAMoCzIfLnByb3RvLlRyYW5zZmVyVG9rZW5Pd25lckFjdGlvblIOcGVuZGluZ0FjdGlvbnM=');
