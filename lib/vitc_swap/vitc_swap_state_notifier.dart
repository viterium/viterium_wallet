import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'vitc_swap_service.dart';
import 'vitc_swap_types.dart';

typedef RemoteAmountCallback = void Function(Amount? amount);

class VitcSwapStateNotifier extends StateNotifier<VitcSwapState> {
  final VitcSwapService service;

  VitcSwapStateNotifier({
    required this.service,
    required VitcSwapState state,
  }) : super(state);

  Future<void> updateFromToken(
    TokenInfo fromToken, {
    RemoteAmountCallback? onRemoteAmount,
  }) {
    if (fromToken.tokenId == state.toToken.tokenId) {
      return switchTokens(onRemoteAmount: onRemoteAmount);
    }

    final fromValue = state.fromAmount.value;
    state = state.copyWith(
      fromAmount: Amount.value(fromValue, tokenInfo: fromToken),
    );

    return _fetchToAmount(onRemoteAmount: onRemoteAmount);
  }

  Future<void> updateToToken(
    TokenInfo toToken, {
    RemoteAmountCallback? onRemoteAmount,
  }) {
    if (toToken == state.fromToken) {
      return switchTokens(onRemoteAmount: onRemoteAmount);
    }

    final toValue = state.toAmount.value;
    state = state.copyWith(
      toAmount: Amount.value(toValue, tokenInfo: toToken),
    );

    return _fetchToAmount(onRemoteAmount: onRemoteAmount);
  }

  void updateSlippage(double slippage) {
    state = state.copyWith(slippage: slippage);
  }

  Future<void> updateFromValue(
    Decimal? value, {
    RemoteAmountCallback? onRemoteAmount,
  }) async {
    if (value == null) {
      state = state.copyWith(
        fromAmount: Amount.value(Decimal.zero, tokenInfo: state.fromToken),
        toAmount: Amount.value(Decimal.zero, tokenInfo: state.toToken),
        requestId: state.requestId + 1,
      );
      return;
    }

    final fromAmount = Amount.value(value, tokenInfo: state.fromToken);
    state = state.copyWith(fromAmount: fromAmount);

    return _fetchToAmount(onRemoteAmount: onRemoteAmount);
  }

  Future<void> updateToValue(
    Decimal? value, {
    RemoteAmountCallback? onRemoteAmount,
  }) async {
    if (value == null) {
      state = state.copyWith(
        fromAmount: Amount.value(Decimal.zero, tokenInfo: state.fromToken),
        toAmount: Amount.value(Decimal.zero, tokenInfo: state.toToken),
        requestId: state.requestId + 1,
      );
      return;
    }

    final toAmount = Amount.value(value, tokenInfo: state.toToken);
    state = state.copyWith(toAmount: toAmount);

    return _fetchFromAmount(onRemoteAmount: onRemoteAmount);
  }

  Future<void> switchTokens({RemoteAmountCallback? onRemoteAmount}) async {
    state = state.copyWith(
      fromAmount: state.toAmount,
      toAmount: state.fromAmount,
    );
    return _fetchToAmount(onRemoteAmount: onRemoteAmount);
  }

  Future<void> _fetchFromAmount({
    RemoteAmountCallback? onRemoteAmount,
  }) async {
    if (state.fromAmount.raw == BigInt.zero) {
      onRemoteAmount?.call(null);
      return;
    }

    final requestId = state.requestId + 1;
    try {
      state = state.copyWith(requestId: requestId);
      final fromAmount = await service.getInversedConversion(
        from: state.fromToken,
        toAmount: state.toAmount,
      );

      if (state.requestId == requestId) {
        state = state.copyWith(
          fromAmount: fromAmount,
          callId: state.callId + 1,
        );
        onRemoteAmount?.call(fromAmount);
      }
    } catch (e) {
      if (state.requestId == requestId) {
        state = state.copyWith(
          fromAmount: Amount.value(Decimal.zero, tokenInfo: state.fromToken),
          callId: state.callId + 1,
        );
        onRemoteAmount?.call(null);
      }
      print(e);
    }
  }

  Future<void> _fetchToAmount({
    RemoteAmountCallback? onRemoteAmount,
  }) async {
    if (state.fromAmount.raw == BigInt.zero) {
      onRemoteAmount?.call(null);
      return;
    }

    final requestId = state.requestId + 1;
    try {
      state = state.copyWith(requestId: requestId);
      final toAmount = await service.getConversion(
        fromAmount: state.fromAmount,
        to: state.toToken,
      );

      if (state.requestId == requestId) {
        state = state.copyWith(
          toAmount: toAmount,
          callId: state.callId + 1,
        );
        onRemoteAmount?.call(toAmount);
      }
    } catch (e) {
      if (state.requestId == requestId) {
        state = state.copyWith(
          toAmount: Amount.value(Decimal.zero, tokenInfo: state.toToken),
          callId: state.callId + 1,
        );
        onRemoteAmount?.call(null);
      }
    }
  }

  Amount _getMinimum() {
    final slippage = Decimal.parse(state.slippage.toStringAsFixed(2));
    final minimum = Amount.value(
      state.toAmount.value * (Decimal.one - slippage),
      tokenInfo: state.toAmount.tokenInfo,
    );
    return minimum;
  }

  Future<void> performSwap({
    required Address address,
    required AccountService accountService,
  }) async {
    final minimum = _getMinimum();
    await service.swap(
      address: address,
      accountService: accountService,
      amount: state.fromAmount,
      minimum: minimum,
    );
  }
}
