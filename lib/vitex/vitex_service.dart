import 'package:vite/vite.dart';

import 'constants.dart';
import 'types.dart';
import 'vitex_extensions.dart';

class VitexService {
  final ViteClient client;
  VitexService({required this.client});

  // Future<AccountBlock> getLatestAccountBlock(Address address) =>
  //     client.getLatestAccountBlock(address);

  // Future<int> getLatestAccountBlockHeight(Address address) async {
  //   final hashHeight = await client.getAccountHashHeight(address);
  //   return hashHeight.height;
  // }

  Future<CurrentOrderBookInfo> _getOrderRangeFromMarket({
    required Token tradeToken,
    required Token quoteToken,
    required int sellStartIdx,
    required int sellLimit,
    required int buyStartIdx,
    required int buyLimit,
  }) async {
    final param = MarketOrderParam(
      tradeToken: tradeToken,
      quoteToken: quoteToken,
      sellBegin: sellStartIdx,
      sellEnd: sellLimit,
      buyBegin: buyStartIdx,
      buyEnd: buyLimit,
    );

    final response = await client.getMarketOrders(param);
    final queryEndHeight = response.queryEnd.height;

    final orderBookInfo = CurrentOrderBookInfo(
      orders: response.orders,
      blockHeight: queryEndHeight,
    );
    return orderBookInfo;
  }

  Future<OrderBookInfo> getOrdersFromMarket({
    required Token tradeToken,
    required Token quoteToken,
    int pageSize = 10000,
  }) async {
    final orders = <OrderModel>[];
    final heights = <int>[];
    int maxHeight = 0;
    int idx = 0;

    while (true) {
      final info = await _getOrderRangeFromMarket(
        tradeToken: tradeToken,
        quoteToken: quoteToken,
        sellStartIdx: pageSize * idx,
        sellLimit: pageSize * (idx + 1),
        buyStartIdx: pageSize * idx,
        buyLimit: pageSize * (idx + 1),
      );

      if (info.orders.isEmpty) {
        break;
      }

      final newOrders = info.orders.map(
        (e) => OrderModel.fromCurrentOrder(
          e,
          tradeToken.tokenId,
          quoteToken.tokenId,
        ),
      );
      orders.addAll(newOrders);

      heights.add(info.blockHeight);
      if (info.orders.length < pageSize) {
        break;
      }
      idx += 1;
    }

    if (heights.isNotEmpty) {
      maxHeight = heights.reduce(
        (value, element) => value > element ? value : element,
      );
    }

    return OrderBookInfo(orders: orders, blockHeight: maxHeight);
  }

  Future<List<VmLogMessage>> getChainEventsByHeightRange({
    required Address address,
    required int startHeight,
    required int endHeight,
  }) async {
    if (startHeight > endHeight) {
      return const [];
    }

    final events = <VmLogMessage>[];

    int round = 0;
    int heightSize = 500;
    while (true) {
      int pageIndex = 0;
      final pageSize = 1000;
      while (true) {
        int from = startHeight + round * heightSize;
        int to = startHeight + (round + 1) * heightSize;
        if (from > endHeight) {
          return events;
        }
        if (to > endHeight + 1) {
          to = endHeight + 1;
        }
        final filter = VmLogFilter(
          addressHeightRange: {
            address.viteAddress: HeightRange(
              fromHeight: BigInt.from(from),
              toHeight: BigInt.from(to - 1),
            ),
          },
          pageIndex: pageIndex,
          pageSize: pageSize,
        );
        final logs = await client.getVmLogsByFilter(filter);
        events.addAll(logs);

        if (logs.isEmpty || logs.length < pageSize) {
          break;
        }
        pageIndex += 1;
      }
      round += 1;
    }
  }

  Future<List<AccBlockVmLogs>> getAccBlockVmLogsByHeightRange({
    required Address address,
    required int startHeight,
    required int endHeight,
  }) async {
    final vmLogs = await getChainEventsByHeightRange(
      address: address,
      startHeight: startHeight,
      endHeight: endHeight,
    );

    if (vmLogs.isEmpty) {
      return const [];
    }

    final blockHeight2VmLog = <int, List<VmLogMessage>>{};
    for (final vmLog in vmLogs) {
      final list = blockHeight2VmLog.putIfAbsent(
        vmLog.accountBlockHeight.toInt(),
        () => [],
      );
      list.add(vmLog);
    }

    final result = List.of(
      blockHeight2VmLog.entries.map(
        (e) => AccBlockVmLogs(
          hash: e.value.first.accountBlockHash.hex,
          height: e.key,
          vmLogs: e.value,
          transactions: [],
        ),
      ),
      growable: false,
    );
    result.sort((b1, b2) => b1.height.compareTo(b2.height));
    return result;
  }

  Future<List<AccountBlock>> getAccountBlocksByHeightRange({
    required Address address,
    required int startHeight,
    required int endHeight,
    int pageSize = 1000,
  }) async {
    if (startHeight > endHeight) {
      return const [];
    }

    final result = <AccountBlock>[];
    int round = 0;
    while (true) {
      final from = startHeight + round * pageSize;
      var to = startHeight + (round + 1) * pageSize - 1;
      if (from > endHeight) {
        break;
      }
      if (to > endHeight) {
        to = endHeight;
      }
      final blocks = await client.getAccountBlocksByHeightRange(
        address,
        from,
        to,
      );
      if (blocks.isEmpty) {
        break;
      }
      result.addAll(blocks);
      round += 1;
    }

    return result;
  }

  // get all account blocks whose created time is greater than the startTime and
  // its hash is lower than endHash
  Future<List<AccountBlock>> getAccountBlocksBelowHash({
    required Address address,
    required int startTime,
    required Hash endHash,
  }) async {
    final blocks = <AccountBlock>[];
    while (true) {
      final result = await getAccountBlocksBelowCurrentHash(
        address: address,
        hash: endHash,
        count: 1000,
      );
      if (result.isEmpty) {
        break;
      }
      result.sort((b1, b2) => b2.height.compareTo(b1.height));
      for (final block in result) {
        if (block.timestamp >= startTime) {
          blocks.add(block);
          endHash = block.hash;
        } else {
          return blocks;
        }
      }
    }
    return blocks;
  }

  Future<List<AccountBlock>> getAccountBlocksBelowCurrentHash({
    required Address address,
    required Hash hash,
    required int count,
  }) => client.getAccountBlocks(address, accountBlockHash: hash, count: count);

  // get the blocks from previous timepoint of hash to currentHash
  Future<Map<String, AccountBlock>> getAccountBlockMap({
    required int startTime,
    required Hash currentHash,
  }) async {
    final blocks = await getAccountBlocksBelowHash(
      address: kDexTradeContractAddress,
      startTime: startTime,
      endHash: currentHash,
    );
    if (blocks.isEmpty) {
      return {};
    }

    final entries = blocks.map((e) => MapEntry(e.hash.hex, e));
    return Map.fromEntries(entries);
  }

  Future<Map<String, AccountBlock>> getTradeContractAccBlockMap({
    required int startHeight,
    required int endHeight,
  }) async {
    final blocks = await getAccountBlocksByHeightRange(
      address: kDexTradeContractAddress,
      startHeight: startHeight,
      endHeight: endHeight,
    );

    if (blocks.isEmpty) {
      return {};
    }

    final entries = blocks.map((e) => MapEntry(e.hash.hex, e));
    return Map.fromEntries(entries);
  }

  Future<List<TokenInfo>> getTokenInfoList({
    required int pageIndex,
    required int pageSize,
  }) async {
    final list = await client.getTokenInfoList(pageIndex, pageSize);
    return list.tokenInfoList;
  }

  Future<Tokens> getAllTokenInfos() async {
    final allTokenInfoList = <TokenInfo>[];
    int pageIndex = 0;
    final pageSize = 100;

    while (true) {
      final tokenInfoList = await getTokenInfoList(
        pageIndex: pageIndex,
        pageSize: pageSize,
      );
      if (tokenInfoList.isEmpty) {
        break;
      }
      allTokenInfoList.addAll(tokenInfoList);
      if (tokenInfoList.length < pageSize) {
        break;
      }
      pageIndex += 1;
    }

    final tokenMap = Map.fromEntries(
      allTokenInfoList.map((e) => MapEntry(e.tokenId, e)),
    );
    return Tokens(tokenMap: tokenMap);
  }

  Future<TokenInfo> getTokenInfo(String tokenId) =>
      client.getTokenInfo(tokenId);

  Future<int> getSnapshotHeightFor({
    required Address address,
    required int timestamp,
  }) async {
    var snapshotBlock = await client.getSnapshotBlockBeforeTime(timestamp);
    int endHeight = snapshotBlock.height;

    while (true && endHeight > 1) {
      final content = snapshotBlock.snapshotData;
      final hashHeight = content[address.viteAddress];
      if (hashHeight != null) {
        endHeight = hashHeight.height;
        break;
      }
      endHeight -= 1;
      snapshotBlock = await client.getSnapshotBlockByHeight(endHeight);
    }

    return endHeight;
  }
}
