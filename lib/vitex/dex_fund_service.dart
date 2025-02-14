import 'package:vite/vite.dart';

import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'dex_fund_types.dart';
import 'types.dart';

class DexFundService extends ContractService with VmLogDecoder<DexFundEvent> {
  DexFundService({required super.client, required super.contract});

  @override
  DexFundEvent? decodeEvent(EventEntry event, {required List<Object> params}) {
    return switch (event.name) {
      'transferAssetEvent' => DexFundEvent.transferAsset(
          bizType: params[0] as BigInt,
          from: params[1] as Address,
          to: params[2] as Address,
          token: params[3] as Token,
          amount: params[4] as BigInt,
        ),
      _ => null,
    };
  }

  Future<Hash> deposit({
    required Address address,
    required AccountService accountService,
    required Amount amount,
  }) async {
    final data = abi.encodeFunction('Deposit', []);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );

    return hash;
  }

  Future<Hash> withdraw({
    required Address address,
    required AccountService accountService,
    required Amount amount,
  }) async {
    final data = abi.encodeFunction('Withdraw', [amount.token, amount.raw]);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      token: amount.token,
      data: data,
    );

    return hash;
  }

  Future<Hash> placeOrder({
    required Address address,
    required AccountService accountService,
    required Amount trade,
    required Amount quote,
    required OrderSide side,
  }) async {
    final data = abi.encodeFunction(
      'PlaceOrder',
      [trade.token, quote.token, side.raw, 0, quote.raw, trade.raw],
    );
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      token: trade.token,
      data: data,
    );

    return hash;
  }
}
