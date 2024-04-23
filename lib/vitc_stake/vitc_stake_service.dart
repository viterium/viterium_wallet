import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:vite/vite.dart';

import '../contract_service/contract_offchain.dart';
import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'vitc_stake_types.dart';

class VitcStakeService extends ContractService
    with ContractOffchain, VmLogDecoder<VitcStakeEvent> {
  VitcStakeService({required super.client, required super.contract});

  @override
  VitcStakeEvent? decodeEvent(
    EventEntry event, {
    required List<Object> params,
  }) {
    return switch (event.name) {
      'PoolCreated' => VitcStakeEvent.poolCreated(
          poolId: params[0] as BigInt,
        ),
      'Deposit' => VitcStakeEvent.deposit(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        ),
      'Withdraw' => VitcStakeEvent.withdraw(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        ),
      'Claim' => VitcStakeEvent.claim(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        ),
      _ => null,
    };
  }

  Future<IList<VitcPoolInfo>> getAllPoolInfo() async {
    final method = 'getAllPoolInfo';
    final result = await callOffchainMethod(method, []);

    final stakingIds = (result[0] as List).cast<Token>();
    final rewardIds = (result[1] as List).cast<Token>();
    final info = (result[2] as List).cast<BigInt>();
    final poolInfoList = <VitcPoolInfo>[];

    for (int i = 0; i < stakingIds.length; ++i) {
      final poolInfo = VitcPoolInfo.fromList(
        [
          stakingIds[i],
          rewardIds[i],
          ...info.sublist(i * 10, (i + 1) * 10),
          BigInt.from(i),
        ],
      );

      poolInfoList.add(poolInfo);
    }
    return poolInfoList.lock;
  }

  Future<BigInt> getPoolCount() async {
    final method = 'getPoolCount';
    final result = await callOffchainMethod(method, []);
    final poolCount = result[0] as BigInt;
    return poolCount;
  }

  Future<VitcPoolInfo> getPoolInfo({
    required BigInt poolId,
  }) async {
    final method = 'getPoolInfo';
    final result = await callOffchainMethod(method, [poolId]);
    final poolInfo = VitcPoolInfo.fromList(result + [poolId]);
    return poolInfo;
  }

  Future<VitcStakeUserInfo> getUserInfo({
    required BigInt poolId,
    required Address address,
  }) async {
    final method = 'getUserInfo';
    final result = await callOffchainMethod(method, [poolId, address]);
    final userInfo = VitcStakeUserInfo.fromList(result);
    return userInfo;
  }

  Future<Hash> claimRewards({
    required BigInt poolId,
    required Address address,
    required AccountService accountService,
  }) {
    return withdraw(
      poolId: poolId,
      address: address,
      rawValue: BigInt.zero,
      accountService: accountService,
    );
  }

  Future<Hash> withdraw({
    required BigInt poolId,
    required Address address,
    required BigInt rawValue,
    required AccountService accountService,
  }) async {
    final function = 'withdraw';
    final data = abi.encodeFunction(function, [poolId, rawValue]);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
    return hash;
  }

  Future<Hash> deposit({
    required BigInt poolId,
    required Address address,
    required Amount amount,
    required AccountService accountService,
  }) async {
    final function = 'deposit';
    final data = abi.encodeFunction(function, [poolId]);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      token: amount.token,
      amount: amount.raw,
      data: data,
    );
    return hash;
  }
}
