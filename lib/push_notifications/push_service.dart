import 'dart:typed_data';

import 'package:vite/vite.dart';

class PushService {
  final Contract contract;
  final RpcClient client;
  String? _publicKey;

  ContractAbi get abi => contract.contractAbi;

  PushService({
    required this.contract,
    required this.client,
  });

  RpcQueryParams getQueryParams(
    String function, [
    List<Object> params = const [],
  ]) {
    final data = abi.encodeFunction(function, params).toBase64;
    final queryParams = RpcQueryParams(
      address: contract.contractAddress,
      data: data,
    );
    return queryParams;
  }

  Future<String> getPublicKey() async {
    if (_publicKey != null) {
      return _publicKey!;
    }

    final function = 'publicKey';
    final params = getQueryParams(function);

    final result = await client.query(params);

    final encoded = base64ToBytes(result);
    final decoded = abi.decodeFunctionOutput(function, encoded);
    final publicKey = decoded.first as String;
    _publicKey = publicKey;
    return publicKey;
  }

  Future<Hash> updateToken({
    required Address address,
    required String payload,
    required AccountService accountService,
  }) async {
    final function = 'updateToken';
    final data = abi.encodeFunction(function, [payload]);

    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
    return hash;
  }

  Future<Hash> linkId({
    required Address address,
    required AccountService accountService,
    required Uint8List payload,
  }) async {
    final function = 'linkId';
    final data = abi.encodeFunction(function, [payload]);

    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );

    return hash;
  }

  Future<Hash> changeSettings({
    required Address address,
    required AccountService accountService,
    required BigInt settings,
    required Hash id,
  }) async {
    final function = 'changeSettings';
    final data = abi.encodeFunction(function, [id.hex, settings]);

    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
    return hash;
  }

  Future<BigInt> getSettings(Address address, Hash id) async {
    final function = 'getSettings';
    final params = getQueryParams(function, [address, id.hex]);

    final result = await client.query(params);

    final encoded = base64ToBytes(result);
    final decoded = abi.decodeFunctionOutput(function, encoded);
    final settings = decoded.first as BigInt;
    return settings;
  }

  Future<Hash> reset({
    required Address address,
    required AccountService accountService,
    required Uint8List payload,
  }) async {
    final function = 'reset';
    final data = abi.encodeFunction(function, [payload]);

    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
    return hash;
  }
}
