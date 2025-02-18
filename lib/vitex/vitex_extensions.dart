import 'package:vite/vite.dart';

import 'dex_fund_types.dart';
import 'dex_trade_types.dart';
import 'types.dart';

abstract class DextradeApi {
  Future<T> getMarketOrders<T>(Map<String, dynamic> params);
  Future<T> getAccountFundInfo<T>(Map<String, dynamic> params);
  Future<T> getOrderById<T>(Map<String, dynamic> params);
  Future<T> getOrderByTransactionHash<T>(Map<String, dynamic> params);
}

abstract class RpcDextradeApi implements RpcApiBase, DextradeApi {
  @override
  Future<T> getMarketOrders<T>(Map<String, dynamic> params) =>
      makeTypedRpcCall('dextrade_getMarketOrders', [params]);

  @override
  Future<T> getAccountFundInfo<T>(Map<String, dynamic> params) =>
      makeTypedRpcCall('dexfund_getAccountFundInfo', [params]);

  @override
  Future<T> getOrderById<T>(Map<String, dynamic> params) =>
      makeTypedRpcCall('dextrade_getOrderById', [params]);

  @override
  Future<T> getOrderByTransactionHash<T>(Map<String, dynamic> params) =>
      makeTypedRpcCall('dex_getOrderByTransactionHash', [params]);
}

extension DexApiExt on RpcApi {
  Future<T> getAccountFundInfo<T>(Address address, Token? token) =>
      makeTypedRpcCall('dexfund_getAccountFundInfo', [address, token]);

  Future<T> getMarketOrders<T>(Map<String, dynamic> params) =>
      makeTypedRpcCall('dextrade_getMarketOrders', [params]);

  Future<T> getOrderById<T>(String orderId) =>
      makeTypedRpcCall('dextrade_getOrderById', [orderId]);

  Future<T> getOrderBySendHash<T>(Hash sendHash) =>
      makeTypedRpcCall('dextrade_getOrderBySendHash', [sendHash]);

  Future<T> getPlaceOrderInfo<T>(Address address, Token tradeToken,
          Token quoteToken, OrderSide side) =>
      makeTypedRpcCall(
        'dex_getPlaceOrderInfo',
        [address, tradeToken, quoteToken, side.raw],
      );
}

extension LedgerApiExt on RpcApi {
  Future<List<T>> getAccountBlocksByHeightRange<T>(
          String address, int from, int to) =>
      makeTypedListRpcCall(
          'ledger_getAccountBlocksByHeightRange', [address, from, to]);

  Future<T> getSnapshotBlockBeforeTime<T>(int time) =>
      makeTypedRpcCall('ledger_getSnapshotBlockBeforeTime', [time]);
}

extension Dextrade on ViteClient {
  Future<OrdersResponse> getMarketOrders(MarketOrderParam param) {
    typeMapping[OrdersResponse] = OrdersResponse.fromJson;
    return api.getMarketOrders(param.toJson());
  }

  Future<Map<TokenId, AccountFundInfo>> getAccountFundInfo(
      Address address, Token? token) {
    typeMapping[AccountFundInfo] = AccountFundInfo.fromJson;
    typeMapping[Map<TokenId, AccountFundInfo>] = (json) {
      return json.map(
        (key, value) => MapEntry(key, AccountFundInfo.fromJson(value)),
      );
    };
    return api.getAccountFundInfo(address, token);
  }

  Future<DexOrder> getOrderById(String orderId) {
    typeMapping[DexOrder] = DexOrder.fromJson;
    return api.getOrderById(orderId);
  }

  Future<DexOrder> getOrderBySendHash(Hash sendHash) {
    typeMapping[DexOrder] = DexOrder.fromJson;
    return api.getOrderBySendHash(sendHash);
  }

  Future<PlaceOrderInfo> getPlaceOrderInfo(
      Address address, Token tradeToken, Token quoteToken, OrderSide side) {
    return api.getPlaceOrderInfo(address, tradeToken, quoteToken, side);
  }
}

extension LedgerExt on ViteClient {
  Future<List<AccountBlock>> getAccountBlocksByHeightRange(
          Address address, int from, int to) =>
      api.getAccountBlocksByHeightRange(address.viteAddress, from, to);

  Future<SnapshotBlock> getSnapshotBlockBeforeTime(int time) =>
      api.getSnapshotBlockBeforeTime(time);

  Future<BigInt> getSnapshotChainHeight() => api.getSnapshotChainHeight();
}

extension SbpStatsExt on ViteClient {
  Future<int> getCurrentCycle() =>
      api.makeTypedRpcCall('sbpstats_time2Index', [null, 2]);

  Future<TimeRange> getTimeRangeForCycle(int cycle) {
    typeMapping[TimeRange] = TimeRange.fromJson;
    return api.makeTypedRpcCall('sbpstats_index2Time', [cycle, 2]);
  }
}
