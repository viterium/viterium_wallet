import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../database/boxes.dart';
import 'token_constants.dart';
import 'token_types.dart';

final tokenIconBoxProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  return db.getTypedBox<CachedTokenIcon>(db.tokenIconBox);
});

final tokenIconProvider =
    StateNotifierProvider.family<TokenIconNotifier, TokenIcon, TokenId>(
        (ref, tokenId) {
  final log = ref.read(loggerProvider);
  final iconBox = ref.read(tokenIconBoxProvider);

  return TokenIconNotifier(
    tokenId: tokenId,
    iconBox: iconBox,
    log: log,
  );
});

class TokenIconNotifier extends StateNotifier<TokenIcon> {
  final TypedBox<CachedTokenIcon> iconBox;
  final Logger log;

  TokenIconNotifier({
    required TokenId tokenId,
    required this.iconBox,
    required this.log,
  }) : super(TokenIcon.defaultIcon) {
    final tokenMapping = testnetTokenIdMapping[tokenId];
    if (tokenMapping != null) {
      tokenId = tokenMapping;
    }

    if (assetTokenIds.contains(tokenId)) {
      state = TokenIcon.asset(path: 'assets/token_icons/$tokenId.png');
      return;
    }
    final cache = iconBox.tryGet(tokenId);
    if (cache != null) {
      state = cache.icon;
      final now = DateTime.now();
      if (now.difference(cache.cacheDate) < const Duration(days: 2)) {
        // do not refetch icon url from remote
        return;
      }
    }
    log.i('Fetching icon for $tokenId');

    final url = 'https://vitex.vite.net/api/v1/token/detail?tokenId=${tokenId}';
    http.get(Uri.parse(url)).then((response) {
      try {
        if (response.statusCode != 200) {
          throw Exception('API response code ${response.statusCode}');
        }
        final jsonData = json.decode(response.body);
        log.d(jsonData);
        final tokenIconUrl = jsonData['data']?['urlIcon'];

        var tokenIcon = TokenIcon.defaultIcon;
        if (tokenIconUrl is String) {
          tokenIcon = TokenIcon.url(url: tokenIconUrl);
        }
        // cache icon url
        iconBox.set(
          tokenId,
          CachedTokenIcon(
            icon: tokenIcon,
            cacheDate: DateTime.now(),
          ),
        );

        state = tokenIcon;
      } catch (e, st) {
        log.e('Failed to fetch icon for $tokenId', e, st);
      }
    });
  }
}
