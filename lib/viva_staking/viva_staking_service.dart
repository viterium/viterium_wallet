import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'viva_staking_contract.dart';
import 'viva_staking_types.dart';

class VivaStakingService {
  final Reader read;
  const VivaStakingService(this.read);

  Future<VivaUserInfo> getUserInfo({
    required BigInt poolId,
    required Address address,
  }) async {
    final method = 'getUserInfo';
    final abi = vivaStakingContract.contractAbi;
    final encoded = abi.encodeOffchain(method, [poolId, address]);
    final data = bytesToBase64(encoded);
    final params = RpcContractCallParams(
      address: vivaStakingContract.contractAddress,
      code: bytesToBase64(hexToBytes(vivaStakingContract.offchainCode)),
      data: data,
    );
    final client = read(rpcClientProvider);
    final result = await client.callOffchainMethod(params);
    final resultData = base64ToBytes(result);
    final decoded = abi.decodeOffchainOutput(method, resultData);

    return VivaUserInfo.fromList(decoded);
  }

  Future<Hash> claimRewards({
    required BigInt poolId,
    required Address address,
  }) {
    return withdraw(
      poolId: poolId,
      address: address,
      rawValue: BigInt.zero,
    );
  }

  Future<Hash> withdraw({
    required BigInt poolId,
    required Address address,
    required BigInt rawValue,
  }) async {
    final function = 'withdraw';
    final abi = vivaStakingContract.contractAbi;
    final data = abi.encodeFunction(function, [poolId, rawValue]);
    final accountService = read(accountServiceProvider);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: vivaStakingContract.address,
      data: data,
    );
    return hash;
  }

  Future<Hash> deposit({
    required BigInt poolId,
    required Address address,
    required Amount amount,
  }) async {
    final function = 'deposit';
    final abi = vivaStakingContract.contractAbi;
    final data = abi.encodeFunction(function, [poolId]);
    final accountService = read(accountServiceProvider);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: vivaStakingContract.address,
      token: amount.token,
      amount: amount.raw,
      data: data,
    );
    return hash;
  }
}
