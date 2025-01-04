import 'package:vite/contract.dart';

import '../contracts/dex_fund_contract.dart';
import '../contracts/dex_trade_contract.dart';
import '../contracts/s1_aliens_contract.dart';
import '../contracts/vinu_swap_contract.dart';
import '../contracts/vitc_stake_v2_contract.dart';
import '../contracts/vitc_swap_contract.dart';
import '../contracts/vite_punks_contract.dart';
import '../contracts/viva_staking_v4_contract.dart';
import '../contracts/viva_staking_v5_contract.dart';
import '../push_notifications/push_contract.dart';
import 'contact.dart';

final labeledAddresses = Map.fromEntries(
  [
    Contact(
      name: '#Quota',
      address: quotaContract.contractAddress,
    ),
    Contact(
      name: '#Consensus',
      address: consensusContract.contractAddress,
    ),
    Contact(
      name: '#TokenIssuance',
      address: tokenIssuanceContract.contractAddress,
    ),
    Contact(
      name: '#VitexFund',
      address: dexFundContract.contractAddress,
    ),
    Contact(
      name: '#VitexTrade',
      address: dexTradeContract.contractAddress,
    ),
    Contact(
      name: '#VivaStaking v0.1',
      address: 'vite_65ea4fbb8fc4a0f5cac745e0a97844ff2e9e4287aa0c35a28f',
    ),
    Contact(
      name: '#VivaStaking v0.2',
      address: 'vite_6b97e21d57909a881db29385b2339725ebbdf708b9eb487985',
    ),
    Contact(
      name: '#VivaStaking v0.3',
      address: 'vite_6217fbda565d83ea03d23034054fb036a0d7a540993354e1e6',
    ),
    Contact(
      name: '#VivaStaking v0.4',
      address: vivaStakingV4Contract.contractAddress,
    ),
    Contact(
      name: '#VivaStaking v0.5',
      address: vivaStakingV5Contract.contractAddress,
    ),
    Contact(
      name: '#VITCStake v0.1',
      address: 'vite_cc2d0c2c34ae6af8bd58e111ca8c958d002c2b3199f449c8d7',
    ),
    Contact(
      name: '#VITCStake v0.2',
      address: vitcStakeV2Contract.contractAddress,
    ),
    Contact(
      name: '#VITCSwap',
      address: vitcSwapContract.contractAddress,
    ),
    Contact(
      name: '#VitaBot',
      address: 'vite_178bc3256ac2b30cc923cd0c5f138e79b8b7257e43f69606f3',
    ),
    Contact(
      name: '#VitePunks',
      address: vitePunksContract.contractAddress,
    ),
    Contact(
      name: '#51Aliens',
      address: s1AliensContract.contractAddress,
    ),
    Contact(
      name: '#Notifications',
      address: pushNotificationsContract.contractAddress,
    ),
    Contact(
      name: '#VinuSwap',
      address: vinuSwapContract.contractAddress,
    ),
  ].map((e) => MapEntry(e.address, e)),
);
