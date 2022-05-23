import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../database/database.dart';

final tokenInfoBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<TokenInfo>(kTokenInfoBox);
});

final tokenInfoProvider =
    FutureProvider.family<TokenInfo, TokenId>((ref, tokenId) async {
  if (tokenId == viteTokenId) {
    return TokenInfo.vite;
  }
  final client = ref.watch(viteClientProvider);
  final tokenInfoBox = ref.watch(tokenInfoBoxProvider);

  final cachedTokenInfo = tokenInfoBox.tryGet(tokenId);

  if (cachedTokenInfo != null) {
    return cachedTokenInfo;
  }

  final tokenInfo = await client.getTokenInfo(tokenId);

  tokenInfoBox.set(tokenId, tokenInfo);

  return tokenInfo;
});
