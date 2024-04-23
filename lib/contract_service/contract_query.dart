import 'package:vite/vite.dart';

import 'contract_service.dart';

mixin ContractQuery on ContractService {
  Future<List<Object>> query(
    String function, [
    List<Object> args = const [],
  ]) async {
    final data = abi.encodeFunction(function, args);
    final params = QueryParams(
      address: contract.address,
      data: data,
    );
    final encoded = await client.query(params);
    final decoded = abi.decodeFunctionOutput(function, encoded);
    return decoded;
  }
}
