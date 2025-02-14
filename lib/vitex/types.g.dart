// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentOrderImpl _$$CurrentOrderImplFromJson(Map json) => _$CurrentOrderImpl(
      orderId: json['Id'] as String,
      price: Decimal.fromJson(json['Price'] as String),
      quantity: Decimal.fromJson(json['Quantity'] as String),
      amount: Decimal.fromJson(json['Amount'] as String),
      executedQuantity: json['ExecutedQuantity'] == null
          ? null
          : Decimal.fromJson(json['ExecutedQuantity'] as String),
      executedAmount: json['ExecutedAmount'] == null
          ? null
          : Decimal.fromJson(json['ExecutedAmount'] as String),
      address: json['Address'] as String,
      side: json['Side'] as bool,
      timestamp: json['Timestamp'] as int,
    );

Map<String, dynamic> _$$CurrentOrderImplToJson(_$CurrentOrderImpl instance) {
  final val = <String, dynamic>{
    'Id': instance.orderId,
    'Price': instance.price.toJson(),
    'Quantity': instance.quantity.toJson(),
    'Amount': instance.amount.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ExecutedQuantity', instance.executedQuantity?.toJson());
  writeNotNull('ExecutedAmount', instance.executedAmount?.toJson());
  val['Address'] = instance.address;
  val['Side'] = instance.side;
  val['Timestamp'] = instance.timestamp;
  return val;
}

_$OrderModelImpl _$$OrderModelImplFromJson(Map json) => _$OrderModelImpl(
      orderId: json['Id'] as String,
      price: Decimal.fromJson(json['price'] as String),
      quantity: Decimal.fromJson(json['quantity'] as String),
      amount: Decimal.fromJson(json['amount'] as String),
      address: json['address'] as String,
      side: json['side'] as bool,
      tradePair: json['tradePair'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.orderId,
      'price': instance.price.toJson(),
      'quantity': instance.quantity.toJson(),
      'amount': instance.amount.toJson(),
      'address': instance.address,
      'side': instance.side,
      'tradePair': instance.tradePair,
      'timestamp': instance.timestamp,
    };

_$TradePairImpl _$$TradePairImplFromJson(Map json) => _$TradePairImpl(
      tradeTokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['tradeTokenInfo'] as Map)),
      quoteTokenInfo: TokenInfo.fromJson(
          Map<String, dynamic>.from(json['quoteTokenInfo'] as Map)),
    );

Map<String, dynamic> _$$TradePairImplToJson(_$TradePairImpl instance) =>
    <String, dynamic>{
      'tradeTokenInfo': instance.tradeTokenInfo.toJson(),
      'quoteTokenInfo': instance.quoteTokenInfo.toJson(),
    };

_$OrdersResponseImpl _$$OrdersResponseImplFromJson(Map json) =>
    _$OrdersResponseImpl(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) =>
                  CurrentOrder.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      size: json['size'] as int,
      queryStart: HashHeight.fromJson(
          Map<String, dynamic>.from(json['queryStart'] as Map)),
      queryEnd: HashHeight.fromJson(
          Map<String, dynamic>.from(json['queryEnd'] as Map)),
    );

Map<String, dynamic> _$$OrdersResponseImplToJson(
        _$OrdersResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders.map((e) => e.toJson()).toList(),
      'size': instance.size,
      'queryStart': instance.queryStart.toJson(),
      'queryEnd': instance.queryEnd.toJson(),
    };

_$MarketOrderParamsImpl _$$MarketOrderParamsImplFromJson(Map json) =>
    _$MarketOrderParamsImpl(
      tradeToken: Token.fromJson(json['tradeToken'] as String),
      quoteToken: Token.fromJson(json['quoteToken'] as String),
      sellBegin: json['sellBegin'] as int,
      sellEnd: json['sellEnd'] as int,
      buyBegin: json['buyBegin'] as int,
      buyEnd: json['buyEnd'] as int,
    );

Map<String, dynamic> _$$MarketOrderParamsImplToJson(
        _$MarketOrderParamsImpl instance) =>
    <String, dynamic>{
      'tradeToken': instance.tradeToken.toJson(),
      'quoteToken': instance.quoteToken.toJson(),
      'sellBegin': instance.sellBegin,
      'sellEnd': instance.sellEnd,
      'buyBegin': instance.buyBegin,
      'buyEnd': instance.buyEnd,
    };

_$RestingOrderImpl _$$RestingOrderImplFromJson(Map json) => _$RestingOrderImpl(
      address: json['address'] as String,
      orderId: json['orderId'] as String,
      tradePair: json['tradePair'] as String,
      amount: Decimal.fromJson(json['amount'] as String),
      quantity: Decimal.fromJson(json['quantity'] as String),
      price: Decimal.fromJson(json['price'] as String),
      side: $enumDecode(_$OrderSideEnumMap, json['side']),
      startTimestamp: json['startTimestamp'] as int,
      endTimestamp: json['endTimestamp'] as int,
    );

Map<String, dynamic> _$$RestingOrderImplToJson(_$RestingOrderImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'orderId': instance.orderId,
      'tradePair': instance.tradePair,
      'amount': instance.amount.toJson(),
      'quantity': instance.quantity.toJson(),
      'price': instance.price.toJson(),
      'side': _$OrderSideEnumMap[instance.side]!,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
    };

const _$OrderSideEnumMap = {
  OrderSide.buy: 'buy',
  OrderSide.sell: 'sell',
};

_$UserTradeImpl _$$UserTradeImplFromJson(Map json) => _$UserTradeImpl(
      address: json['address'] as String,
      orderId: json['orderId'] as String,
      blockHash: json['blockHash'] as String,
      tradePair: json['tradePair'] as String,
      amount: Decimal.fromJson(json['amount'] as String),
      quantity: Decimal.fromJson(json['quantity'] as String),
      price: Decimal.fromJson(json['price'] as String),
      orderSide: $enumDecode(_$OrderSideEnumMap, json['orderSide']),
      traderSide: $enumDecode(_$TraderSideEnumMap, json['traderSide']),
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$UserTradeImplToJson(_$UserTradeImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'orderId': instance.orderId,
      'blockHash': instance.blockHash,
      'tradePair': instance.tradePair,
      'amount': instance.amount.toJson(),
      'quantity': instance.quantity.toJson(),
      'price': instance.price.toJson(),
      'orderSide': _$OrderSideEnumMap[instance.orderSide]!,
      'traderSide': _$TraderSideEnumMap[instance.traderSide]!,
      'timestamp': instance.timestamp,
    };

const _$TraderSideEnumMap = {
  TraderSide.maker: 'maker',
  TraderSide.taker: 'taker',
};

_$RewardsConfigImpl _$$RewardsConfigImplFromJson(Map json) =>
    _$RewardsConfigImpl(
      seedPhrase: json['seedPhrase'] as String?,
      rewardToken: Token.fromJson(json['rewardToken'] as String),
      tradingReward: Decimal.fromJson(json['tradingReward'] as String),
      limitOrderReward: Decimal.fromJson(json['limitOrderReward'] as String),
      orderDistanceThreshold:
          Decimal.fromJson(json['orderDistanceThreshold'] as String),
      tradingPair: json['tradingPair'] as String,
    );

Map<String, dynamic> _$$RewardsConfigImplToJson(_$RewardsConfigImpl instance) =>
    <String, dynamic>{
      'seedPhrase': instance.seedPhrase,
      'rewardToken': instance.rewardToken.toJson(),
      'tradingReward': instance.tradingReward.toJson(),
      'limitOrderReward': instance.limitOrderReward.toJson(),
      'orderDistanceThreshold': instance.orderDistanceThreshold.toJson(),
      'tradingPair': instance.tradingPair,
    };

_$RewardsTotalImpl _$$RewardsTotalImplFromJson(Map json) => _$RewardsTotalImpl(
      tradingReward: Decimal.fromJson(json['tradingReward'] as String),
      limitOrderReward: Decimal.fromJson(json['limitOrderReward'] as String),
      totalReward: Decimal.fromJson(json['totalReward'] as String),
    );

Map<String, dynamic> _$$RewardsTotalImplToJson(_$RewardsTotalImpl instance) =>
    <String, dynamic>{
      'tradingReward': instance.tradingReward.toJson(),
      'limitOrderReward': instance.limitOrderReward.toJson(),
      'totalReward': instance.totalReward.toJson(),
    };

_$TimeRangeImpl _$$TimeRangeImplFromJson(Map json) => _$TimeRangeImpl(
      startTime: DateTime.parse(json['stime'] as String),
      endTime: DateTime.parse(json['etime'] as String),
    );

Map<String, dynamic> _$$TimeRangeImplToJson(_$TimeRangeImpl instance) =>
    <String, dynamic>{
      'stime': instance.startTime.toIso8601String(),
      'etime': instance.endTime.toIso8601String(),
    };

_$CycleImpl _$$CycleImplFromJson(Map json) => _$CycleImpl(
      index: json['index'] as int,
      type: $enumDecode(_$CycleTypeEnumMap, json['type']),
      timeRange: TimeRange.fromJson(
          Map<String, dynamic>.from(json['timeRange'] as Map)),
    );

Map<String, dynamic> _$$CycleImplToJson(_$CycleImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$CycleTypeEnumMap[instance.type]!,
      'timeRange': instance.timeRange.toJson(),
    };

const _$CycleTypeEnumMap = {
  CycleType.period: 'period',
  CycleType.hour: 'hour',
  CycleType.day: 'day',
};

_$MarketResultsImpl _$$MarketResultsImplFromJson(Map json) =>
    _$MarketResultsImpl(
      tradePair: TradePair.fromJson(
          Map<String, dynamic>.from(json['tradePair'] as Map)),
      userTrades: (json['userTrades'] as List<dynamic>)
          .map((e) => UserTrade.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      restingOrders: (json['restingOrders'] as List<dynamic>)
          .map(
              (e) => RestingOrder.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MarketResultsImplToJson(_$MarketResultsImpl instance) =>
    <String, dynamic>{
      'tradePair': instance.tradePair.toJson(),
      'userTrades': instance.userTrades.map((e) => e.toJson()).toList(),
      'restingOrders': instance.restingOrders.map((e) => e.toJson()).toList(),
    };

_$ScanResultsImpl _$$ScanResultsImplFromJson(Map json) => _$ScanResultsImpl(
      cycle: Cycle.fromJson(Map<String, dynamic>.from(json['cycle'] as Map)),
      markets: (json['markets'] as Map).map(
        (k, e) => MapEntry(k as String,
            MarketResults.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$ScanResultsImplToJson(_$ScanResultsImpl instance) =>
    <String, dynamic>{
      'cycle': instance.cycle.toJson(),
      'markets': instance.markets.map((k, e) => MapEntry(k, e.toJson())),
    };

_$UserRewardImpl _$$UserRewardImplFromJson(Map json) => _$UserRewardImpl(
      address: json['address'] as String,
      tradingReward: Decimal.fromJson(json['tradingReward'] as String),
      limitOrdersReward: Decimal.fromJson(json['limitOrdersReward'] as String),
      totalReward: Decimal.fromJson(json['totalReward'] as String),
    );

Map<String, dynamic> _$$UserRewardImplToJson(_$UserRewardImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'tradingReward': instance.tradingReward.toJson(),
      'limitOrdersReward': instance.limitOrdersReward.toJson(),
      'totalReward': instance.totalReward.toJson(),
    };

_$CycleRewardsImpl _$$CycleRewardsImplFromJson(Map json) => _$CycleRewardsImpl(
      cycle: Cycle.fromJson(Map<String, dynamic>.from(json['cycle'] as Map)),
      config: RewardsConfig.fromJson(
          Map<String, dynamic>.from(json['config'] as Map)),
      totalRewards: RewardsTotal.fromJson(
          Map<String, dynamic>.from(json['totalRewards'] as Map)),
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => UserReward.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$CycleRewardsImplToJson(_$CycleRewardsImpl instance) =>
    <String, dynamic>{
      'cycle': instance.cycle.toJson(),
      'config': instance.config.toJson(),
      'totalRewards': instance.totalRewards.toJson(),
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
    };

_$SendLogSucceededImpl _$$SendLogSucceededImplFromJson(Map json) =>
    _$SendLogSucceededImpl(
      Hash.fromJson(json['hash'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SendLogSucceededImplToJson(
        _$SendLogSucceededImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash.toJson(),
      'runtimeType': instance.$type,
    };

_$SendLogFailedImpl _$$SendLogFailedImplFromJson(Map json) =>
    _$SendLogFailedImpl(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SendLogFailedImplToJson(_$SendLogFailedImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$DistributionLogImpl _$$DistributionLogImplFromJson(Map json) =>
    _$DistributionLogImpl(
      rewards: CycleRewards.fromJson(
          Map<String, dynamic>.from(json['rewards'] as Map)),
      logs: (json['logs'] as Map).map(
        (k, e) => MapEntry(
            k as String, SendLog.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$DistributionLogImplToJson(
        _$DistributionLogImpl instance) =>
    <String, dynamic>{
      'rewards': instance.rewards.toJson(),
      'logs': instance.logs.map((k, e) => MapEntry(k, e.toJson())),
    };
