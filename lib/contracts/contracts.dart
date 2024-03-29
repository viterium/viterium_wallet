import 'package:vite/contract.dart';

import '../push_notifications/push_contract.dart';
import 'dex_fund.dart';
import 'dex_trade.dart';
import 's1_aliens.dart';
import 'vitc_stake_v2.dart';
import 'vitc_swap.dart';
import 'vite_punks.dart';
import 'viva_staking_v4.dart';

final knownContracts = Map.fromEntries(
  const [
    quotaContract,
    consensusContract,
    tokenIssuanceContract,
    dexFundContract,
    dexTradeContract,
    vitcSwapContract,
    vitcStakeV2Contract,
    vivaStakingV4Contract,
    vitePunksContract,
    s1AliensContract,
    pushNotificationsContract,
  ].map((e) => MapEntry(e.contractAddress, e)),
);
