import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'token_types.dart';

extension TokenStateExtension on SettingsRepository {
  TokenStateMapping getTokenState(String key) {
    final mapping = box.tryGet(key, typeFactory: TokenStateMapping.fromJson);
    return mapping ?? TokenStateMapping();
  }

  Future<void> setTokenStateMapping(String key, TokenStateMapping tokenState) =>
      box.set(key, tokenState);
}

class TokenStateNotifier extends StateNotifier<TokenStateMapping> {
  final SettingsRepository repository;
  final String key;
  TokenStateNotifier(this.repository, this.key)
      : super(repository.getTokenState(key));

  Future<void> updateTokenState(String tokenId, TokenState tokenState) async {
    final mapping =
        state.copyWith(states: state.states.add(tokenId, tokenState));
    await repository.setTokenStateMapping(key, mapping);
    state = mapping;
  }
}
