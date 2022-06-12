import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';

extension TokenOrderExtension on SettingsRepository {
  IList<TokenId> getTokenOrder(String key) => box.getList<TokenId>(key).lock;

  Future<void> setTokenOrder(String key, IList<TokenId> order) =>
      box.setList(key, order.unlock);
}

class TokenOrderNotifier extends StateNotifier<IList<TokenId>> {
  final SettingsRepository repository;
  final String key;
  TokenOrderNotifier(this.repository, this.key)
      : super(repository.getTokenOrder(key));

  Future<void> updateOrder(IList<TokenId> order) async {
    repository.setTokenOrder(key, order);
    state = order;
  }
}
