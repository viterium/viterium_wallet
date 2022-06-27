import 'package:vite/contract.dart';
import 'package:viterium_wallet/contracts/dex_fund.dart';
import 'package:viterium_wallet/contracts/dex_trade.dart';

import 'vitc_stake_v2.dart';
import 'vitc_swap.dart';
import 'vite_punks.dart';
import 'viva_staking_v4.dart';

final knownContracts = Map.fromEntries(
  const [
    Contract.quotaContract,
    Contract.consensusContract,
    Contract.tokenIssuanceContract,
    dexFundContract,
    dexTradeContract,
    vitcSwapContract,
    vitcStakeV2Contract,
    vivaStakingV4Contract,
    vitePunksContract,
  ].map((e) => MapEntry(e.contractAddress, e)),
);
