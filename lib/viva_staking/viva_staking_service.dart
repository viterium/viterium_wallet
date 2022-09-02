import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:vite/vite.dart';

import 'viva_staking_types.dart';

class VivaStakingService {
  final ViteClient client;
  final Contract contract;

  VivaStakingService({
    required this.client,
    required this.contract,
  });

  late ContractAbi abi = contract.contractAbi;

  VivaEvent decodeEvent(VmLog vmLog) {
    final event = abi.findEventByTopicsHash(vmLog.topics);
    if (event == null) {
      return VivaEvent.unknown(vmLog: vmLog);
    }
    final params = abi.decodeEvent(vmLog.data ?? Uint8List(0), vmLog.topics);

    switch (event.name) {
      case 'PoolCreated':
        return VivaEvent.poolCreated(
          poolId: params[0] as BigInt,
        );
      case 'Deposit':
        return VivaEvent.deposit(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        );
      case 'Withdraw':
        return VivaEvent.withdraw(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        );
      case 'EmergencyWithdraw':
        return VivaEvent.emergencyWithdraw(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        );
      case 'Claim':
        return VivaEvent.claim(
          address: params[0] as Address,
          poolId: params[1] as BigInt,
          amount: params[2] as BigInt,
        );
      default:
        return VivaEvent.unknown(vmLog: vmLog);
    }
  }

  late final offchainParams = ContractCallParams(
    address: contract.address,
    code: hexToBytes(contract.offchainCode),
    data: Uint8List(0),
  );

  ContractCallParams offchainCall(String method, List<Object> args) {
    final encoded = abi.encodeOffchain(method, args);
    final params = offchainParams.copyWith(data: encoded);
    return params;
  }

  Future<List<Object>> callOffchainMethod(
      String method, List<Object> args) async {
    final call = offchainCall(method, args);
    final encoded = await client.callOffchainMethod(call);
    final decoded = abi.decodeOffchainOutput(method, encoded);
    return decoded;
  }

  Future<IList<VivaPoolInfo>> getAllPoolInfo() async {
    final method = 'getAllPoolInfo';
    final result = await callOffchainMethod(method, []);

    final stakingIds = (result[0] as List).cast<Token>();
    final rewardIds = (result[1] as List).cast<Token>();
    final info = (result[2] as List).cast<BigInt>();
    final poolInfoList = <VivaPoolInfo>[];

    for (int i = 0; i < stakingIds.length; ++i) {
      final poolInfo = VivaPoolInfo.fromList(
        [
          stakingIds[i],
          rewardIds[i],
          ...info.sublist(i * 8, (i + 1) * 8),
          BigInt.from(i),
        ],
      );

      poolInfoList.add(poolInfo);
    }
    return poolInfoList.lock;
  }

  Future<IList<VivaExtraPoolInfo>> getAllExtraPoolInfo() async {
    final method = 'getAllExtraPoolInfo';
    final result = await callOffchainMethod(method, []);

    final info = (result[0] as List).cast<BigInt>();
    final extraList = <VivaExtraPoolInfo>[];
    for (int i = 0; i < info.length ~/ 3; ++i) {
      final extra = VivaExtraPoolInfo.fromList(
        info.sublist(i * 3, (i + 1) * 3),
      );
      extraList.add(extra);
    }
    return extraList.lock;
  }

  Future<BigInt> getPoolCount() async {
    final method = 'getPoolCount';
    final result = await callOffchainMethod(method, []);
    final poolCount = result[0] as BigInt;
    return poolCount;
  }

  Future<VivaPoolInfo> getPoolInfo({
    required BigInt poolId,
  }) async {
    final method = 'getPoolInfo';
    final result = await callOffchainMethod(method, [poolId]);
    final poolInfo = VivaPoolInfo.fromList(result + [poolId]);
    return poolInfo;
  }

  Future<VivaExtraPoolInfo> getExtraPoolInfo({
    required BigInt poolId,
  }) async {
    final method = 'getExtraPoolInfo';

    final result = await callOffchainMethod(method, [poolId]);
    final extra = VivaExtraPoolInfo(
      minimumDeposit: result[0] as BigInt,
      maximumTotalStakingBalance: result[1] as BigInt,
      lockTime: result[2] as BigInt,
    );
    return extra;
  }

  Future<VivaUserInfo> getUserInfo({
    required BigInt poolId,
    required Address address,
  }) async {
    final method = 'getUserInfo';
    final result = await callOffchainMethod(method, [poolId, address]);
    final userInfo = VivaUserInfo.fromList(result);
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
