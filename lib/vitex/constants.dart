import 'package:decimal/decimal.dart';
import 'package:vite/vite.dart';

import 'types.dart';

const kOrderNewEventTopic =
    "6e65774f726465724576656e7400000000000000000000000000000000000000";
const kOrderUpdateEventTopic =
    "6f726465725570646174654576656e7400000000000000000000000000000000";
const kTxEventTopic =
    "74784576656e7400000000000000000000000000000000000000000000000000";
const kTransferAssetEventTopic =
    "7472616e7366657241737365744576656e740000000000000000000000000000";

const kMaxRetryNum = 3;

const kUnderscoreStr = "_";

const kOrderIdBytesLength = 22;

const viteSharedRatio = 0.15;

const ethSharedRatio = 0.15;

const btcSharedRatio = 0.5;

const usdtSharedRatio = 0.2;

const genesisTimestamp = 1558411200;

final percent25 = Decimal.parse("0.025");
final percent00125 = Decimal.parse("0.0125");

Map<QuoteMarketType, double> getMarketSharedRatio() {
  final marketSharedVXRatio = {
    QuoteMarketType.vite(): viteSharedRatio,
    QuoteMarketType.eth(): ethSharedRatio,
    QuoteMarketType.btc(): btcSharedRatio,
    QuoteMarketType.usdt(): usdtSharedRatio,
  };
  return marketSharedVXRatio;
}

final kDexTradeContractAddress = Address.parse(dexTradeContractAddress);
