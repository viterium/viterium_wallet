import 'package:vite/contract.dart';

import '../push_notifications/push_contract.dart';
import 'dex_fund_contract.dart';
import 'dex_trade_contract.dart';
import 's1_aliens_contract.dart';
import 'vinu_pay_contract.dart';
import 'vinu_swap_contract.dart';
import 'vitc_stake_v2_contract.dart';
import 'vitc_swap_contract.dart';
import 'vite_punks_contract.dart';
import 'vitens_contract.dart';
import 'viva_staking_v4_contract.dart';
import 'viva_staking_v5_contract.dart';

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
    vivaStakingV5Contract,
    vitePunksContract,
    s1AliensContract,
    pushNotificationsContract,
    vinuPayContract,
    vitensContract,
    vinuSwapContract,
  ].map((e) => MapEntry(e.contractAddress, e)),
);
