// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dex_trade_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DexOrderImpl _$$DexOrderImplFromJson(Map json) => _$DexOrderImpl(
      id: const Utf8StringBase64Converter().fromJson(json['Id'] as String),
      address: Address.fromJson(const Utf8StringBase64Converter()
          .fromJson(json['Address'] as String)),
      marketId: json['MarketId'] as int,
      side: json['Side'] as bool,
      type: json['Type'] as int,
      price: Decimal.fromJson(json['Price'] as String),
      takerFeeRate: json['TakerFeeRate'] as int,
      makerFeeRate: json['MakerFeeRate'] as int,
      takerOperatorFeeRate: json['TakerOperatorFeeRate'] as int,
      makerOperatorFeeRate: json['MakerOperatorFeeRate'] as int,
      quantity: BigInt.parse(json['Quantity'] as String),
      amount: BigInt.parse(json['Amount'] as String),
      status: json['Status'] as int,
      cancelReason: json['CancelReason'] as int?,
      executedQuantity: json['ExecutedQuantity'] == null
          ? null
          : BigInt.parse(json['ExecutedQuantity'] as String),
      executedAmount: json['ExecutedAmount'] == null
          ? null
          : BigInt.parse(json['ExecutedAmount'] as String),
      executedBaseFee: json['ExecutedBaseFee'] == null
          ? null
          : BigInt.parse(json['ExecutedBaseFee'] as String),
      executedOperatorFee: json['ExecutedOperatorFee'] == null
          ? null
          : BigInt.parse(json['ExecutedOperatorFee'] as String),
      refundToken: json['RefundToken'] == null
          ? null
          : BigInt.parse(json['RefundToken'] as String),
      refundQuantitu: json['RefundQuantitu'] == null
          ? null
          : BigInt.parse(json['RefundQuantitu'] as String),
      timestamp: json['Timestamp'] as int,
      sendHash: Hash.fromJson(const Utf8StringBase64Converter()
          .fromJson(json['SendHash'] as String)),
    );

Map<String, dynamic> _$$DexOrderImplToJson(_$DexOrderImpl instance) {
  final val = <String, dynamic>{
    'Id': const Utf8StringBase64Converter().toJson(instance.id),
    'Address': instance.address.toJson(),
    'MarketId': instance.marketId,
    'Side': instance.side,
    'Type': instance.type,
    'Price': instance.price.toJson(),
    'TakerFeeRate': instance.takerFeeRate,
    'MakerFeeRate': instance.makerFeeRate,
    'TakerOperatorFeeRate': instance.takerOperatorFeeRate,
    'MakerOperatorFeeRate': instance.makerOperatorFeeRate,
    'Quantity': instance.quantity.toString(),
    'Amount': instance.amount.toString(),
    'Status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CancelReason', instance.cancelReason);
  writeNotNull('ExecutedQuantity', instance.executedQuantity?.toString());
  writeNotNull('ExecutedAmount', instance.executedAmount?.toString());
  writeNotNull('ExecutedBaseFee', instance.executedBaseFee?.toString());
  writeNotNull('ExecutedOperatorFee', instance.executedOperatorFee?.toString());
  writeNotNull('RefundToken', instance.refundToken?.toString());
  writeNotNull('RefundQuantitu', instance.refundQuantitu?.toString());
  val['Timestamp'] = instance.timestamp;
  val['SendHash'] = instance.sendHash.toJson();
  return val;
}

_$NewOrderInfoImpl _$$NewOrderInfoImplFromJson(Map json) => _$NewOrderInfoImpl(
      order: DexOrder.fromJson(Map<String, dynamic>.from(json['Order'] as Map)),
      tradeToken: Token.fromJson(json['TradeToken'] as String),
      quoteToken: Token.fromJson(json['QuoteToken'] as String),
    );

Map<String, dynamic> _$$NewOrderInfoImplToJson(_$NewOrderInfoImpl instance) =>
    <String, dynamic>{
      'Order': instance.order.toJson(),
      'TradeToken': instance.tradeToken.toJson(),
      'QuoteToken': instance.quoteToken.toJson(),
    };
