import 'package:vite/contract.dart';
import 'package:vite/core.dart';

const dexFundContract = Contract(contractAddress: dexFundContractAddress, abi: [
  {"type": "function", "name": "DexFundUserDeposit", "inputs": []},
  {
    "type": "function",
    "name": "DexFundUserWithdraw",
    "inputs": [
      {"name": "token", "type": "tokenId"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundNewMarket",
    "inputs": [
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundNewOrder",
    "inputs": [
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "side", "type": "bool"},
      {"name": "orderType", "type": "uint8"},
      {"name": "price", "type": "string"},
      {"name": "quantity", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundSettleOrders",
    "inputs": [
      {"name": "data", "type": "bytes"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundPeriodJob",
    "inputs": [
      {"name": "periodId", "type": "uint64"},
      {"name": "bizType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundPledgeForVx",
    "inputs": [
      {"name": "actionType", "type": "uint8"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundPledgeForVip",
    "inputs": [
      {"name": "actionType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "AgentPledgeCallback",
    "inputs": [
      {"name": "stakeAddress", "type": "address"},
      {"name": "beneficiary", "type": "address"},
      {"name": "amount", "type": "uint256"},
      {"name": "bid", "type": "uint8"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "AgentCancelPledgeCallback",
    "inputs": [
      {"name": "stakeAddress", "type": "address"},
      {"name": "beneficiary", "type": "address"},
      {"name": "amount", "type": "uint256"},
      {"name": "bid", "type": "uint8"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "GetTokenInfoCallback",
    "inputs": [
      {"name": "tokenId", "type": "tokenId"},
      {"name": "bid", "type": "uint8"},
      {"name": "exist", "type": "bool"},
      {"name": "decimals", "type": "uint8"},
      {"name": "tokenSymbol", "type": "string"},
      {"name": "index", "type": "uint16"},
      {"name": "owner", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundOwnerConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "owner", "type": "address"},
      {"name": "timeOracle", "type": "address"},
      {"name": "periodJobTrigger", "type": "address"},
      {"name": "stopDex", "type": "bool"},
      {"name": "makerMiningAdmin", "type": "address"},
      {"name": "maintainer", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundOwnerConfigTrade",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "allowMining", "type": "bool"},
      {"name": "newQuoteToken", "type": "tokenId"},
      {"name": "quoteTokenType", "type": "uint8"},
      {"name": "tokenTypeForTradeThreshold", "type": "uint8"},
      {"name": "minTradeThreshold", "type": "uint256"},
      {"name": "tokenTypeForMiningThreshold", "type": "uint8"},
      {"name": "minMiningThreshold", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundMarketOwnerConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "marketOwner", "type": "address"},
      {"name": "takerFeeRate", "type": "int32"},
      {"name": "makerFeeRate", "type": "int32"},
      {"name": "stopMarket", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundTransferTokenOwner",
    "inputs": [
      {"name": "token", "type": "tokenId"},
      {"name": "newOwner", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "NotifyTime",
    "inputs": [
      {"name": "timestamp", "type": "int64"}
    ]
  },
  {"type": "function", "name": "DexFundNewInviter", "inputs": []},
  {
    "type": "function",
    "name": "DexFundBindInviteCode",
    "inputs": [
      {"name": "code", "type": "uint32"}
    ]
  },
  {"type": "function", "name": "DexFundEndorseVx", "inputs": []},
  {
    "type": "function",
    "name": "DexFundSettleMakerMinedVx",
    "inputs": [
      {"name": "data", "type": "bytes"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundPledgeForSuperVip",
    "inputs": [
      {"name": "actionType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundConfigMarketsAgent",
    "inputs": [
      {"name": "actionType", "type": "uint8"},
      {"name": "agent", "type": "address"},
      {"name": "tradeTokens", "type": "tokenId[]"},
      {"name": "quoteTokens", "type": "tokenId[]"}
    ]
  },
  {
    "type": "function",
    "name": "DexFundNewAgentOrder",
    "inputs": [
      {"name": "principal", "type": "address"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "side", "type": "bool"},
      {"name": "orderType", "type": "uint8"},
      {"name": "price", "type": "string"},
      {"name": "quantity", "type": "uint256"}
    ]
  },
  {"type": "function", "name": "Deposit", "inputs": []},
  {
    "type": "function",
    "name": "Withdraw",
    "inputs": [
      {"name": "token", "type": "tokenId"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "OpenNewMarket",
    "inputs": [
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"}
    ]
  },
  {
    "type": "function",
    "name": "PlaceOrder",
    "inputs": [
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "side", "type": "bool"},
      {"name": "orderType", "type": "uint8"},
      {"name": "price", "type": "string"},
      {"name": "quantity", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "SettleOrders",
    "inputs": [
      {"name": "data", "type": "bytes"}
    ]
  },
  {
    "type": "function",
    "name": "TriggerPeriodJob",
    "inputs": [
      {"name": "periodId", "type": "uint64"},
      {"name": "bizType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "StakeForMining",
    "inputs": [
      {"name": "actionType", "type": "uint8"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "StakeForVIP",
    "inputs": [
      {"name": "actionType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "DelegateStakeCallback",
    "inputs": [
      {"name": "stakeAddress", "type": "address"},
      {"name": "beneficiary", "type": "address"},
      {"name": "amount", "type": "uint256"},
      {"name": "bid", "type": "uint8"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "CancelDelegateStakeCallback",
    "inputs": [
      {"name": "stakeAddress", "type": "address"},
      {"name": "beneficiary", "type": "address"},
      {"name": "amount", "type": "uint256"},
      {"name": "bid", "type": "uint8"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "DexAdminConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "owner", "type": "address"},
      {"name": "timeOracle", "type": "address"},
      {"name": "periodJobTrigger", "type": "address"},
      {"name": "stopDex", "type": "bool"},
      {"name": "makerMiningAdmin", "type": "address"},
      {"name": "maintainer", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "TradeAdminConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "allowMining", "type": "bool"},
      {"name": "newQuoteToken", "type": "tokenId"},
      {"name": "quoteTokenType", "type": "uint8"},
      {"name": "tokenTypeForTradeThreshold", "type": "uint8"},
      {"name": "minTradeThreshold", "type": "uint256"},
      {"name": "tokenTypeForMiningThreshold", "type": "uint8"},
      {"name": "minMiningThreshold", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "MarketAdminConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "marketOwner", "type": "address"},
      {"name": "takerFeeRate", "type": "int32"},
      {"name": "makerFeeRate", "type": "int32"},
      {"name": "stopMarket", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "TransferTokenOwnership",
    "inputs": [
      {"name": "token", "type": "tokenId"},
      {"name": "newOwner", "type": "address"}
    ]
  },
  {"type": "function", "name": "CreateNewInviter", "inputs": []},
  {
    "type": "function",
    "name": "BindInviteCode",
    "inputs": [
      {"name": "code", "type": "uint32"}
    ]
  },
  {"type": "function", "name": "EndorseVx", "inputs": []},
  {
    "type": "function",
    "name": "SettleMakerMinedVx",
    "inputs": [
      {"name": "data", "type": "bytes"}
    ]
  },
  {
    "type": "function",
    "name": "StakeForSVIP",
    "inputs": [
      {"name": "actionType", "type": "uint8"}
    ]
  },
  {
    "type": "function",
    "name": "ConfigMarketAgents",
    "inputs": [
      {"name": "actionType", "type": "uint8"},
      {"name": "agent", "type": "address"},
      {"name": "tradeTokens", "type": "tokenId[]"},
      {"name": "quoteTokens", "type": "tokenId[]"}
    ]
  },
  {
    "type": "function",
    "name": "PlaceAgentOrder",
    "inputs": [
      {"name": "principal", "type": "address"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "side", "type": "bool"},
      {"name": "orderType", "type": "uint8"},
      {"name": "price", "type": "string"},
      {"name": "quantity", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "LockVxForDividend",
    "inputs": [
      {"name": "actionType", "type": "uint8"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "SwitchConfig",
    "inputs": [
      {"name": "switchType", "type": "uint8"},
      {"name": "enable", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "StakeForPrincipalSVIP",
    "inputs": [
      {"name": "principal", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "CancelStakeById",
    "inputs": [
      {"name": "id", "type": "bytes32"}
    ]
  },
  {
    "type": "function",
    "name": "StakeForQuotaWithCallbackCallback",
    "inputs": [
      {"name": "id", "type": "bytes32"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "CancelQuotaStakingWithCallbackCallback",
    "inputs": [
      {"name": "id", "type": "bytes32"},
      {"name": "success", "type": "bool"}
    ]
  },
  {
    "type": "function",
    "name": "CancelOrderBySendHash",
    "inputs": [
      {"name": "sendHash", "type": "bytes32"},
      {"name": "principal", "type": "address"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"}
    ]
  },
  {
    "type": "function",
    "name": "CommonAdminConfig",
    "inputs": [
      {"name": "operationCode", "type": "uint8"},
      {"name": "tradeToken", "type": "tokenId"},
      {"name": "quoteToken", "type": "tokenId"},
      {"name": "enable", "type": "bool"},
      {"name": "value", "type": "int32"},
      {"name": "amount", "type": "uint256"},
      {"name": "address", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "Transfer",
    "inputs": [
      {"name": "target", "type": "address"},
      {"name": "token", "type": "tokenId"},
      {"name": "amount", "type": "uint256"}
    ]
  },
  {
    "type": "function",
    "name": "AgentDeposit",
    "inputs": [
      {"name": "beneficiary", "type": "address"}
    ]
  },
  {
    "type": "function",
    "name": "AssignedWithdraw",
    "inputs": [
      {"name": "target", "type": "address"},
      {"name": "token", "type": "tokenId"},
      {"name": "amount", "type": "uint256"},
      {"name": "label", "type": "bytes"}
    ]
  }
]);
