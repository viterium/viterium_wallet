import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import 'tokens_settings.dart';

extension TokensSettingsExtension on SettingsRepository {
  TokensSettings getTokensSettings(String key) {
    return box.tryGet<TokensSettings>(
          key,
          typeFactory: TokensSettings.fromJson,
        ) ??
        TokensSettings(sortOption: TokenSortOption.custom);
  }

  Future<void> setTokensSettings(String key, TokensSettings settings) =>
      box.set(key, settings);
}

class TokensSettingsNotifier extends StateNotifier<TokensSettings> {
  final SettingsRepository repository;
  final String key;
  TokensSettingsNotifier(this.repository, this.key)
      : super(repository.getTokensSettings(key));

  Future<void> updateSettings(TokensSettings settings) {
    state = settings;
    return repository.setTokensSettings(key, settings);
  }

  Future<void> updateTokenSortOption(TokenSortOption sortOption) {
    final settings = state.copyWith(sortOption: sortOption);
    return updateSettings(settings);
  }
}

final _tokensSettingsKeyProvider =
    Provider.family<String, Account>((ref, account) {
  final data = stringToBytesUtf8('tokensSettings#${account.address}');
  return digest(data: data, digestSize: 8).hex;
});

final tokensSettingsProvider = StateNotifierProvider.family<
    TokensSettingsNotifier, TokensSettings, Account>((ref, account) {
  final repository = ref.watch(settingsRepositoryProvider);
  final key = ref.watch(_tokensSettingsKeyProvider(account));
  return TokensSettingsNotifier(repository, key);
});

final tokensSortOptionProvider = Provider.autoDispose<TokenSortOption>((ref) {
  final account = ref.watch(selectedAccountProvider);
  final settings = ref.watch(tokensSettingsProvider(account));
  return settings.sortOption;
});
