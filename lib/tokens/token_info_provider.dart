import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../database/database.dart';

final tokenInfoBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<TokenInfo>(kTokenInfoBox);
});

final tokenInfoListProvider = FutureProvider<IList<TokenInfo>>((ref) async {
  final client = ref.watch(rpcClientProvider);

  final tokenInfoBox = ref.watch(tokenInfoBoxProvider);
  final allTokens = tokenInfoBox.getAll();

  Future<void> updateTokens(int pageIndex, int pageSize) async {
    final tokens = await client.getTokenInfoList(pageIndex, pageSize);
    if (tokens.tokenInfoList.isEmpty || tokens.totalCount == allTokens.length) {
      return;
    }

    for (final tokenInfo in tokens.tokenInfoList) {
      final tokenId = tokenInfo.tokenId;
      if (allTokens.containsKey(tokenId)) {
        continue;
      }
      final newTokenInfo = TokenInfo.fromJson(tokenInfo.toJson());
      await tokenInfoBox.set(tokenId, newTokenInfo);
      allTokens[tokenId] = newTokenInfo;
    }
    if (tokens.tokenInfoList.length == pageSize) {
      await updateTokens(pageIndex + 1, pageSize);
    }
  }

  await updateTokens(0, 100);

  return IList(allTokens.values).sort(
    (a, b) {
      final result = a.tokenName.compareTo(b.tokenName);
      if (result == 0) {
        return a.symbolLabel.compareTo(b.symbolLabel);
      }
      return result;
    },
  );
});

final tokenInfoProvider =
    FutureProvider.family<TokenInfo, TokenId>((ref, tokenId) async {
  if (tokenId == viteTokenId) {
    return TokenInfo.vite;
  }

  final token = Token.tryParse(tokenId);
  if (token == null) {
    return TokenInfo.zero;
  }
  final client = ref.watch(viteClientProvider);
  final tokenInfoBox = ref.watch(tokenInfoBoxProvider);

  final cachedTokenInfo = tokenInfoBox.tryGet(tokenId);

  if (cachedTokenInfo != null) {
    return cachedTokenInfo;
  }

  try {
    final tokenInfo = await client.getTokenInfo(tokenId);
    tokenInfoBox.set(tokenId, tokenInfo);
    return tokenInfo;
  } catch (_) {
    return TokenInfo.unknownToken(token);
  }
});
