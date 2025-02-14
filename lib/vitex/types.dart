import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

import 'constants.dart';
import 'proto/dex_order.pbserver.dart' hide TokenInfo;
import 'util.dart';

part 'types.freezed.dart';
part 'types.g.dart';

enum EventType {
  newOrder,
  updateOrder,
  tx,
  unknown,
}

enum TraderSide {
  maker,
  taker,
}

enum OrderSide {
  buy, // false
  sell; // true

  bool get raw => this != OrderSide.buy;
}

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus.pending() = _OrderStatusPending;
  const factory OrderStatus.partiallyExecuted() = _OrderStatusPartiallyExecuted;
  const factory OrderStatus.fullyExecuted() = _OrderStatusFullyExecuted;
  const factory OrderStatus.cancelled() = _OrderStatusCancelled;
  const factory OrderStatus.orderFailure() = _OrderStatusOrderFailure;

  factory OrderStatus.decode(int value) {
    switch (value) {
      case 0:
        return const OrderStatus.pending();
      case 1:
        return const OrderStatus.partiallyExecuted();
      case 2:
        return const OrderStatus.fullyExecuted();
      case 3:
        return const OrderStatus.cancelled();
      case 4:
        return const OrderStatus.orderFailure();
      default:
        throw Exception('Failed to decode order status: $value');
    }
  }
}

@freezed
class OrderType with _$OrderType {
  const factory OrderType.limitOrder() = _OrderTypeLimitOrder;
  const factory OrderType.marketOrder() = _OrderTypeMarketOrder;

  factory OrderType.decode(int value) {
    switch (value) {
      case 0:
        return const OrderType.limitOrder();
      case 1:
        return const OrderType.marketOrder();
      default:
        throw Exception('Falied to decode order type: $value');
    }
  }
}

@freezed
class QuoteMarketType with _$QuoteMarketType {
  const factory QuoteMarketType.vite() = _QuoteMarketTypeVite;
  const factory QuoteMarketType.eth() = _QuoteMarketTypeEth;
  const factory QuoteMarketType.btc() = _QuoteMarketTypeBtc;
  const factory QuoteMarketType.usdt() = _QuoteMarketTypeUsdt;

  factory QuoteMarketType.decode(int value) {
    switch (value) {
      case 0:
        return const QuoteMarketType.vite();
      case 1:
        return const QuoteMarketType.eth();
      case 2:
        return const QuoteMarketType.btc();
      case 3:
        return const QuoteMarketType.usdt();
      default:
        throw Exception('Unknown quote market type: $value');
    }
  }
}

@unfreezed
class AccBlockVmLogs with _$AccBlockVmLogs {
  AccBlockVmLogs._();

  factory AccBlockVmLogs({
    required final String hash,
    required final int height,
    required final List<VmLogMessage> vmLogs,
    required List<OrderTx> transactions,
  }) = _AccBlockVmLogs;

  OrderTx? getTxWithId(String txId) =>
      transactions.firstWhereOrNull((tx) => tx.txId == txId);

  OrderTx? getTx(String orderId) => transactions.firstWhereOrNull(
      (tx) => tx.makerOrderId == orderId || tx.takerOrderId == orderId);

  void parseTransactions() {
    final txs = <OrderTx>[];
    for (final vmLogInfo in vmLogs) {
      final vmLog = vmLogInfo.vmLog;
      final eventType = getEventType(vmLog.topics);
      final data = vmLog.data;
      if (eventType != EventType.tx || data == null) {
        continue;
      }
      final tx = Transaction.fromBuffer(data);
      final id = bytesToHex(Uint8List.fromList(tx.id));
      final takerOrderId = bytesToHex(Uint8List.fromList(tx.takerId));
      final makerOrderId = bytesToHex(Uint8List.fromList(tx.makerId));
      final price = priceToDecimal(tx.price);
      final amount = quantityToDecimal(tx.amount);
      final quantity = quantityToDecimal(tx.quantity);
      final orderTx = OrderTx(
        txId: id,
        takerOrderId: takerOrderId,
        makerOrderId: makerOrderId,
        price: price,
        amount: amount,
        quantity: quantity,
      );
      txs.add(orderTx);
    }
    if (txs.isNotEmpty) {
      transactions.addAll(txs);
    }
  }
}

@freezed
class OrderTx with _$OrderTx {
  const factory OrderTx({
    required String txId,
    required String takerOrderId,
    required String makerOrderId,
    required Decimal price,
    required Decimal amount,
    required Decimal quantity,
  }) = _OrderTx;
}

@freezed
class Tokens with _$Tokens {
  const Tokens._();
  const factory Tokens({
    required Map<String, TokenInfo> tokenMap,
  }) = _Tokens;

  int getDecimals(String tokenId) {
    final decimals = tokenMap[tokenId]?.decimals;
    if (decimals == null) {
      throw Exception('Unknown decimals for tokeId $tokenId');
    }
    return decimals;
  }

  TokenInfo? infoForToken(Token token) => tokenMap[token.tokenId];

  TokenInfo? infoForTokenSymbol(String tokenSymbol) {
    try {
      return tokenMap.values
          .firstWhere((info) => info.symbolLabel == tokenSymbol);
    } catch (_) {
      return null;
    }
  }

  String? tokenIdForTokenSymbol(String tokenSymbol) =>
      infoForTokenSymbol(tokenSymbol)?.tokenId;
}

@unfreezed
class OrderEvent with _$OrderEvent {
  OrderEvent._();
  factory OrderEvent({
    required final EventType type,
    required final OrderLog? orderLog,
    required final OrderTx? orderTx,
    required int? timestamp,
    required final String blockHash,
  }) = _OrderEvent;

  factory OrderEvent.parse({
    required VmLog vmLog,
    required AccBlockVmLogs vmLogs,
    required Tokens tokens,
    required String hash,
  }) {
    final eventData = vmLog.data ?? Uint8List(0);

    final eventType = getEventType(vmLog.topics);
    switch (eventType) {
      case EventType.newOrder:
        final dexOrder = NewOrderInfo.fromBuffer(eventData);
        final orderLog = OrderLog.fromNewOrder(dexOrder, vmLog);
        return OrderEvent(
          orderLog: orderLog,
          orderTx: null,
          timestamp: null,
          type: EventType.newOrder,
          blockHash: hash,
        );
      case EventType.updateOrder:
        final orderUpdateInfo = OrderUpdateInfo.fromBuffer(eventData);
        final orderId = orderUpdateInfo.id.asUint8List();
        final tx = vmLogs.getTx(orderId.hex);
        final orderLog = OrderLog.fromUpdateOrder(
          orderUpdateInfo,
          vmLog,
          tx,
          tokens,
        );
        return OrderEvent(
          orderLog: orderLog,
          orderTx: null,
          timestamp: null,
          type: EventType.updateOrder,
          blockHash: hash,
        );
      case EventType.tx:
        final tx = Transaction.fromBuffer(eventData);
        final txId = bytesToHex(Uint8List.fromList(tx.id));
        final orderTx = vmLogs.getTxWithId(txId);
        return OrderEvent(
          type: EventType.tx,
          orderLog: null,
          orderTx: orderTx,
          timestamp: null,
          blockHash: hash,
        );

      case EventType.unknown:
        return OrderEvent(
          orderLog: null,
          orderTx: null,
          timestamp: null,
          type: EventType.unknown,
          blockHash: hash,
        );
    }
  }

  String get orderId => orderLog!.orderId;
  String get tradePair => orderLog!.tradePair;
  OrderStatus get status => orderLog!.status;
  bool get ignore => type == EventType.unknown;
  //type != EventType.newOrder && type != EventType.updateOrder;
}

@freezed
class OrderLog with _$OrderLog {
  const OrderLog._();
  const factory OrderLog({
    required String orderId,
    required int orderCreateTime,
    required Decimal price,
    required Decimal changeQuantity,
    required Decimal changeAmount,
    required bool side,
    required String tradePair,
    required String address,
    required OrderStatus status,
    required VmLog rawLog,
  }) = _OrderLog;

  factory OrderLog.fromNewOrder(NewOrderInfo dexOrder, VmLog vmLog) {
    final order = dexOrder.order;
    final orderId = order.id.asUint8List();

    final tradeToken = getShowToken(dexOrder.tradeToken.asUint8List());
    final quoteToken = getShowToken(dexOrder.quoteToken.asUint8List());
    final tradePair = '$tradeToken$kUnderscoreStr$quoteToken';

    final quantity = quantityToDecimal(order.quantity);
    final executedQuantity = quantityToDecimal(order.executedQuantity);
    final changeQuantity = quantity - executedQuantity;

    final amount = quantityToDecimal(order.amount);
    final executedAmount = quantityToDecimal(order.executedAmount);
    final changeAmount = amount - executedAmount;

    final address = getShowAddress(order.address.asUint8List());
    final price = priceToDecimal(order.price);
    final orderCreateTime = getOrderCTimeByParseOrderId(orderId);
    final status = OrderStatus.decode(order.status);

    return OrderLog(
      orderId: orderId.hex,
      side: order.side,
      tradePair: tradePair,
      changeQuantity: changeQuantity,
      changeAmount: changeAmount,
      price: price,
      address: address.viteAddress,
      orderCreateTime: orderCreateTime,
      status: status,
      rawLog: vmLog,
    );
  }

  factory OrderLog.fromUpdateOrder(OrderUpdateInfo orderUpdateInfo, VmLog vmLog,
      OrderTx? tx, Tokens tokens) {
    final orderId = orderUpdateInfo.id.asUint8List();
    final status = OrderStatus.decode(orderUpdateInfo.status);
    final side = getOrderSideByParseOrderId(orderId);

    final tradeToken = getShowToken(orderUpdateInfo.tradeToken.asUint8List());
    final quoteToken = getShowToken(orderUpdateInfo.quoteToken.asUint8List());
    final tradePair = '$tradeToken$kUnderscoreStr$quoteToken';

    final price = getPriceByParseOrderId(orderId);
    final orderCreateTime = getOrderCTimeByParseOrderId(orderId);

    final Decimal changeQuantity;
    final Decimal changeAmount;

    if (status == OrderStatus.cancelled()) {
      final tradeDecimals = tokens.getDecimals(tradeToken.tokenId);
      final quoteDecimals = tokens.getDecimals(quoteToken.tokenId);

      if (side) {
        changeQuantity = quantityToDecimal(orderUpdateInfo.refundQuantity);
        changeAmount = calculateRawAmount(
            changeQuantity, price, tradeDecimals - quoteDecimals);
      } else {
        changeAmount = quantityToDecimal(orderUpdateInfo.refundQuantity);
        changeQuantity = calculateRawQuantity(
            changeAmount, price, tradeDecimals - quoteDecimals);
      }
    } else {
      changeQuantity = tx!.quantity;
      changeAmount = tx.amount;
    }

    return OrderLog(
      orderId: orderId.hex,
      status: status,
      side: side,
      tradePair: tradePair,
      price: price,
      address: '',
      orderCreateTime: orderCreateTime,
      changeQuantity: changeQuantity,
      changeAmount: changeAmount,
      rawLog: vmLog,
    );
  }

  static Decimal calculateRawQuantity(
      Decimal amount, Decimal price, int decimalsDiff) {
    final rawAmount = (amount / price)
        .toDecimal(scaleOnInfinitePrecision: decimalsDiff.abs());
    if (decimalsDiff == 0) {
      return rawAmount;
    }
    if (decimalsDiff > 0) {
      return (rawAmount * BigInt.from(10).pow(decimalsDiff).toDecimal())
          .truncate();
    }
    return (rawAmount / BigInt.from(10).pow(decimalsDiff.abs()).toDecimal())
        .toDecimal(scaleOnInfinitePrecision: 0);
  }

  static Decimal calculateRawAmount(
      Decimal quantity, Decimal price, int decimalsDiff) {
    return adjustForDecimalsDiff(quantity * price, decimalsDiff).truncate();
  }

  static Decimal adjustForDecimalsDiff(Decimal sourceAmount, int decimalsDiff) {
    if (decimalsDiff == 0) {
      return sourceAmount;
    }
    if (decimalsDiff > 0) {
      return (sourceAmount / BigInt.from(10).pow(decimalsDiff).toDecimal())
          .toDecimal(scaleOnInfinitePrecision: 18);
    }
    return sourceAmount * BigInt.from(10).pow(decimalsDiff.abs()).toDecimal();
  }

  bool get finished =>
      status == OrderStatus.fullyExecuted() ||
      status == OrderStatus.cancelled();
}

@freezed
class CurrentOrder with _$CurrentOrder {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory CurrentOrder({
    @JsonKey(name: 'Id') required String orderId,
    required Decimal price,
    required Decimal quantity,
    required Decimal amount,
    required Decimal? executedQuantity,
    required Decimal? executedAmount,
    required String address,
    required bool side,
    required int timestamp,
  }) = _CurrentOrder;

  factory CurrentOrder.fromJson(Map<String, dynamic> json) =>
      _$CurrentOrderFromJson(json);
}

@unfreezed
class OrderModel with _$OrderModel {
  OrderModel._();
  factory OrderModel({
    @JsonKey(name: 'Id') required String orderId,
    required final Decimal price,
    required final Decimal quantity,
    required final Decimal amount,
    required String address,
    required final bool side,
    required final String tradePair,
    required final int timestamp,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  factory OrderModel.fromCurrentOrder(
    CurrentOrder currentOrder,
    String tradeTokenId,
    String quoteTokenId,
  ) {
    return OrderModel(
      orderId: currentOrder.orderId,
      price: currentOrder.price,
      quantity: currentOrder.quantity -
          (currentOrder.executedQuantity ?? Decimal.zero),
      amount:
          currentOrder.amount - (currentOrder.executedAmount ?? Decimal.zero),
      address: currentOrder.address,
      side: currentOrder.side,
      tradePair: '${tradeTokenId}_$quoteTokenId',
      timestamp: currentOrder.timestamp,
    );
  }

  factory OrderModel.fromOrderLog(OrderLog log) => OrderModel(
        orderId: log.orderId,
        price: log.price,
        quantity: log.changeQuantity,
        amount: log.changeAmount,
        address: log.address,
        side: log.side,
        tradePair: log.tradePair,
        timestamp: log.orderCreateTime,
      );

  OrderModel onward(OrderLog orderLog) {
    if (orderId != orderLog.orderId) {
      return this;
    }
    return copyWith(
      quantity: quantity - orderLog.changeQuantity,
      amount: amount - orderLog.changeAmount,
    );
  }

  OrderModel revert(OrderLog orderLog) {
    if (orderId != orderLog.orderId) {
      return this;
    }
    return copyWith(
      quantity: quantity + orderLog.changeQuantity,
      amount: amount + orderLog.changeAmount,
    );
  }

  void updateAddress(Address address) {
    this.address = address.viteAddress;
  }

  bool get addressIsEmpty => address.isEmpty;

  String get hash => '$amount$quantity$price';
}

@freezed
class TradePair with _$TradePair {
  const TradePair._();
  const factory TradePair({
    required TokenInfo tradeTokenInfo,
    required TokenInfo quoteTokenInfo,
  }) = _TradePair;

  Token get tradeToken => tradeTokenInfo.token;
  Token get quoteToken => quoteTokenInfo.token;
  String get tradeTokenId => tradeTokenInfo.tokenId;
  String get quoteTokenId => quoteTokenInfo.tokenId;
  String get tradeTokenSymbol => tradeTokenInfo.symbolLabel;
  String get quoteTokenSymbol => quoteTokenInfo.symbolLabel;

  factory TradePair.fromJson(Map<String, dynamic> json) =>
      _$TradePairFromJson(json);

  String get tradePairId => '${tradeTokenId}_$quoteTokenId';

  String get tradePairSymbols => '${tradeTokenSymbol}_$quoteTokenSymbol';

  int getMarket() {
    int market = 0;
    switch (quoteTokenSymbol) {
      case "VITE":
        market = 1;
        break;
      case "ETH-000":
        market = 2;
        break;
      case "BTC-000":
        market = 3;
        break;
      case "USDT-000":
        market = 4;
        break;
    }
    return market;
  }
}

@freezed
class CurrentOrderBookInfo with _$CurrentOrderBookInfo {
  const factory CurrentOrderBookInfo({
    @Default([]) List<CurrentOrder> orders,
    required int blockHeight,
  }) = _CurrentOrderBookInfo;
}

@freezed
class OrderBookInfo with _$OrderBookInfo {
  const factory OrderBookInfo({
    @Default([]) List<OrderModel> orders,
    required int blockHeight,
  }) = _OrderBookInfo;
}

@freezed
class OrdersResponse with _$OrdersResponse {
  const factory OrdersResponse({
    @Default([]) List<CurrentOrder> orders,
    required int size,
    required HashHeight queryStart,
    required HashHeight queryEnd,
  }) = _OrdersResponse;

  factory OrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseFromJson(json);
}

@freezed
class MarketOrderParam with _$MarketOrderParam {
  const factory MarketOrderParam({
    required Token tradeToken,
    required Token quoteToken,
    required int sellBegin,
    required int sellEnd,
    required int buyBegin,
    required int buyEnd,
  }) = _MarketOrderParams;

  factory MarketOrderParam.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderParamFromJson(json);
}

@freezed
class RestingOrder with _$RestingOrder {
  const factory RestingOrder({
    required String address,
    required String orderId,
    required String tradePair,
    required Decimal amount,
    required Decimal quantity,
    required Decimal price,
    required OrderSide side,
    required int startTimestamp,
    required int endTimestamp,
  }) = _RestingOrder;

  factory RestingOrder.atEvent({
    required OrderModel order,
    required OrderLog log,
    required int startTimestamp,
    required int eventTimestamp,
  }) =>
      RestingOrder(
        address: order.address,
        orderId: order.orderId,
        tradePair: order.tradePair,
        amount: log.changeAmount,
        quantity: log.changeQuantity,
        price: log.price,
        side: log.side ? OrderSide.sell : OrderSide.buy,
        startTimestamp: startTimestamp,
        endTimestamp: eventTimestamp,
      );

  factory RestingOrder.atEnd({
    required OrderModel order,
    required int startTimestamp,
    required int endTimestamp,
  }) =>
      RestingOrder(
        address: order.address,
        orderId: order.orderId,
        tradePair: order.tradePair,
        amount: order.amount,
        quantity: order.quantity,
        price: order.price,
        side: order.side ? OrderSide.sell : OrderSide.buy,
        startTimestamp: startTimestamp,
        endTimestamp: endTimestamp,
      );

  factory RestingOrder.fromJson(Map<String, dynamic> json) =>
      _$RestingOrderFromJson(json);
}

@freezed
class UserTrade with _$UserTrade {
  const factory UserTrade({
    required String address,
    required String orderId,
    required String blockHash,
    required String tradePair,
    required Decimal amount,
    required Decimal quantity,
    required Decimal price,
    required OrderSide orderSide,
    required TraderSide traderSide,
    required int timestamp,
  }) = _UserTrade;

  factory UserTrade.maker({
    required OrderModel order,
    required OrderLog log,
    required String blockHash,
    required int timestamp,
  }) =>
      UserTrade(
        address: order.address,
        orderId: order.orderId,
        tradePair: order.tradePair,
        amount: log.changeAmount,
        quantity: log.changeQuantity,
        price: log.price,
        orderSide: log.side ? OrderSide.sell : OrderSide.buy,
        traderSide: TraderSide.maker,
        blockHash: blockHash,
        timestamp: timestamp,
      );

  factory UserTrade.taker({
    required OrderTx orderTx,
    required OrderLog log,
    required String blockHash,
    required int timestamp,
  }) =>
      UserTrade(
        address: log.address,
        orderId: log.orderId,
        tradePair: log.tradePair,
        amount: orderTx.amount,
        quantity: orderTx.quantity,
        price: orderTx.price,
        orderSide: log.side ? OrderSide.sell : OrderSide.buy,
        traderSide: TraderSide.taker,
        blockHash: blockHash,
        timestamp: timestamp,
      );

  factory UserTrade.fromJson(Map<String, dynamic> json) =>
      _$UserTradeFromJson(json);
}

@freezed
class RewardsConfig with _$RewardsConfig {
  @JsonSerializable(includeIfNull: true)
  const factory RewardsConfig({
    String? seedPhrase,
    required Token rewardToken,
    required Decimal tradingReward,
    required Decimal limitOrderReward,
    required Decimal orderDistanceThreshold,
    required String tradingPair,
  }) = _RewardsConfig;

  factory RewardsConfig.fromJson(Map<String, dynamic> json) =>
      _$RewardsConfigFromJson(json);
}

@freezed
class RewardsTotal with _$RewardsTotal {
  const factory RewardsTotal({
    required Decimal tradingReward,
    required Decimal limitOrderReward,
    required Decimal totalReward,
  }) = _RewardsTotal;

  factory RewardsTotal.fromJson(Map<String, dynamic> json) =>
      _$RewardsTotalFromJson(json);
}

@freezed
class TimeRange with _$TimeRange {
  const TimeRange._();

  const factory TimeRange({
    @JsonKey(name: 'stime') required DateTime startTime,
    @JsonKey(name: 'etime') required DateTime endTime,
  }) = _TimeRange;

  factory TimeRange.timestamps({
    required int start,
    required int end,
  }) =>
      TimeRange(
        startTime: DateTime.fromMillisecondsSinceEpoch(
          start * 1000,
          isUtc: true,
        ),
        endTime: DateTime.fromMillisecondsSinceEpoch(
          end * 1000,
          isUtc: true,
        ),
      );

  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  int get startTimestamp => startTime.millisecondsSinceEpoch ~/ 1000;
  int get endTimestamp => endTime.millisecondsSinceEpoch ~/ 1000;
}

enum CycleType {
  period,
  hour,
  day,
}

@freezed
class Cycle with _$Cycle {
  const Cycle._();
  const factory Cycle({
    required int index,
    required CycleType type,
    required TimeRange timeRange,
  }) = _Cycle;

  factory Cycle.period({
    required int start,
    required int end,
  }) =>
      Cycle(
        index: 0,
        type: CycleType.period,
        timeRange: TimeRange.timestamps(start: start, end: end),
      );

  factory Cycle.fromJson(Map<String, dynamic> json) => _$CycleFromJson(json);

  DateTime get startTime => timeRange.startTime;
  DateTime get endTime => timeRange.endTime;

  int get start => timeRange.startTimestamp;
  int get end => timeRange.endTimestamp;
}

@freezed
class MarketResults with _$MarketResults {
  const factory MarketResults({
    required TradePair tradePair,
    required List<UserTrade> userTrades,
    required List<RestingOrder> restingOrders,
  }) = _MarketResults;

  factory MarketResults.fromJson(Map<String, dynamic> json) =>
      _$MarketResultsFromJson(json);
}

@freezed
class ScanResults with _$ScanResults {
  const factory ScanResults({
    required Cycle cycle,
    required Map<String, MarketResults> markets,
  }) = _ScanResults;

  factory ScanResults.fromJson(Map<String, dynamic> json) =>
      _$ScanResultsFromJson(json);
}

@unfreezed
class RestingOrderStats with _$RestingOrderStats {
  factory RestingOrderStats({
    required final RestingOrder restingOrder,
    required int deltaTimestamp,
    required int qualifyingTimeLength,
  }) = _RestingOrderStats;
}

@freezed
class QualifyingOrder with _$QualifyingOrder {
  const QualifyingOrder._();
  const factory QualifyingOrder({
    required RestingOrder order,
    required Decimal weight,
  }) = _QualifyingOrder;

  String get address => order.address;
  Decimal get amount => order.amount;
}

@freezed
class UserReward with _$UserReward {
  const factory UserReward({
    required String address,
    required Decimal tradingReward,
    required Decimal limitOrdersReward,
    required Decimal totalReward,
  }) = _UserReward;

  factory UserReward.create({
    required String address,
    required Decimal trading,
    required Decimal limitOrders,
  }) =>
      UserReward(
        address: address,
        tradingReward: trading,
        limitOrdersReward: limitOrders,
        totalReward: trading + limitOrders,
      );

  factory UserReward.fromJson(Map<String, dynamic> json) =>
      _$UserRewardFromJson(json);
}

@freezed
class CycleRewards with _$CycleRewards {
  const factory CycleRewards({
    required Cycle cycle,
    required RewardsConfig config,
    required RewardsTotal totalRewards,
    required List<UserReward> rewards,
  }) = _CycleRewards;

  factory CycleRewards.fromJson(Map<String, dynamic> json) =>
      _$CycleRewardsFromJson(json);
}

@freezed
class SendLog with _$SendLog {
  const factory SendLog.succeeded(Hash hash) = _SendLogSucceeded;
  const factory SendLog.failed(String error) = _SendLogFailed;

  factory SendLog.fromJson(Map<String, dynamic> json) =>
      _$SendLogFromJson(json);
}

@freezed
class DistributionLog with _$DistributionLog {
  const factory DistributionLog({
    required CycleRewards rewards,
    required Map<String, SendLog> logs,
  }) = _DistributionLog;

  factory DistributionLog.fromJson(Map<String, dynamic> json) =>
      _$DistributionLogFromJson(json);
}
