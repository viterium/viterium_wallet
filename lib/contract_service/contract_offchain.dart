import 'dart:typed_data';

import 'package:vite/vite.dart';

import 'contract_service.dart';

mixin ContractOffchain on ContractService {
  late final offchainParams = ContractCallParams(
    address: contract.address,
    code: hexToBytes(contract.offchainCode),
    data: Uint8List(0),
  );

  ContractCallParams _offchainCall(String method, List<Object> args) {
    final encoded = abi.encodeOffchain(method, args);
    final params = offchainParams.copyWith(data: encoded);
    return params;
  }

  Future<List<Object>> callOffchainMethod(
    String method, [
    List<Object> args = const [],
  ]) async {
    final call = _offchainCall(method, args);
    final encoded = await client.callOffchainMethod(call);
    final decoded = abi.decodeOffchainOutput(method, encoded);
    return decoded;
  }
}
