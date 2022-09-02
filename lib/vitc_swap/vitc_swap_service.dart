import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:vite/vite.dart';

class VitcSwapService {
  final ViteClient client;
  final Contract contract;

  VitcSwapService({
    required this.client,
    required this.contract,
  });

  late final abi = contract.contractAbi;

  Future<List<Object>> query(String function, List<Object> args) async {
    final data = abi.encodeFunction(
      function,
      args,
    );
    final params = QueryParams(
      address: contract.address,
      data: data,
    );
    final encoded = await client.query(params);
    final decoded = abi.decodeFunctionOutput(function, encoded);
    return decoded;
  }

  Future<IList<Token>> getTradingTokens() async {
    final event = abi.topicForEvent('NewPair');
    final filter = VmLogFilter(
      addressHeightRange: {
        contract.contractAddress: HeightRange.all,
      },
      topics: [
        [event]
      ],
      pageIndex: 0,
      pageSize: 1000,
    );
    final vmLogs = await client.getVmLogsByFilter(filter);

    final tokens = IList([Token.vite]).addAll(vmLogs.map((e) {
      final vmlog = e.vmLog;
      final decoded = abi.decodeEvent(
        vmlog.data ?? Uint8List(0),
        vmlog.topics,
      );

      return decoded.first as Token;
    }));
    return tokens;
  }

  Future<Amount> getConversion({
    required Amount fromAmount,
    required TokenInfo to,
  }) async {
    final result = await query(
      'getConversion',
      [fromAmount.token, to.token, fromAmount.raw],
    );
    final rawAmount = result.first as BigInt;
    return Amount.raw(rawAmount, tokenInfo: to);
  }

  Future<Amount> getInversedConversion({
    required TokenInfo from,
    required Amount toAmount,
  }) async {
    final result = await query(
      'getInversedConversion',
      [from.token, toAmount.token, toAmount.raw],
    );
    final rawAmount = result.first as BigInt;
    return Amount.raw(rawAmount, tokenInfo: from);
  }

  Future<Hash> swap({
    required Address address,
    required AccountService accountService,
    required Amount amount,
    required Amount minimum,
    Address? recipient,
  }) async {
    final function = 'swap';
    final data = abi.encodeFunction(
      function,
      [recipient ?? address, minimum.token, minimum.raw],
    );
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );

    return hash;
  }
}
