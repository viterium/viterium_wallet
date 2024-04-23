import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:vite/vite.dart';

import '../contract_service/contract_query.dart';
import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'vitc_swap_types.dart';

class VitcSwapService extends ContractService with ContractQuery, VmLogDecoder {
  VitcSwapService({required super.client, required super.contract});

  @override
  VitcSwapEvent? decodeEvent(
    EventEntry event, {
    required List<Object> params,
  }) {
    return switch (event.name) {
      'Swap' => VitcSwapEvent.swap(
          address: params[0] as Address,
          fromToken: params[1] as Token,
          toToken: params[2] as Token,
          fromAmount: params[3] as BigInt,
          toAmount: params[4] as BigInt,
        ),
      'SwapInternal' => VitcSwapEvent.swapInternal(
          address: params[0] as Address,
          fromToken: params[1] as Token,
          toToken: params[2] as Token,
          fromAmount: params[3] as BigInt,
          toAmount: params[4] as BigInt,
          total: params[5] as BigInt,
          totalVite: params[6] as BigInt,
        ),
      'AddLiquidity' => VitcSwapEvent.addLiquidity(
          address: params[0] as Address,
          token: params[1] as Token,
          tokenAmount: params[2] as BigInt,
          viteAmount: params[3] as BigInt,
          tokenTotal: params[4] as BigInt,
          viteTotal: params[5] as BigInt,
        ),
      'RemoveLiquidity' => VitcSwapEvent.removeLiquidity(
          address: params[0] as Address,
          token: params[1] as Token,
          tokenAmount: params[2] as BigInt,
          viteAmount: params[3] as BigInt,
          tokenTotal: params[4] as BigInt,
          viteTotal: params[5] as BigInt,
        ),
      _ => null,
    };
  }

  Future<IList<Token>> getTradingTokensForHeightRange(
    HeightRange heightRange,
  ) async {
    final event = abi.topicForEvent('NewPair');

    if (heightRange.toHeight == BigInt.zero) {
      final latestBlock = await client.getLatestAccountBlock(contract.address);
      heightRange = heightRange.copyWith(toHeight: latestBlock.height);
    }

    final pageSize = BigInt.from(1000);
    final vmLogs = <VmLogMessage>[];
    for (BigInt i = heightRange.fromHeight;
        i < heightRange.toHeight;
        i += pageSize) {
      var toHeight = i + pageSize;
      if (toHeight > heightRange.toHeight) {
        toHeight = heightRange.toHeight;
      }
      final filter = VmLogFilter(
        addressHeightRange: {
          contract.contractAddress: HeightRange(
            fromHeight: i,
            toHeight: toHeight,
          ),
        },
        topics: [
          [event]
        ],
        pageIndex: 0,
        pageSize: 1000,
      );
      final vmLogsPage = await client.getVmLogsByFilter(filter);
      vmLogs.addAll(vmLogsPage);
    }

    final tokens = IList(vmLogs.map((e) {
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

  Future<TokenLiquidity> getTokenLiquidity(Token token) async {
    final result = await query('getLiquidity', [token]);
    final liquidity = TokenLiquidity.fromList(result);
    return liquidity;
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
