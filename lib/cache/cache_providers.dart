import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../database/boxes.dart';

class CacheRepository {
  final LazyGenericBox box;
  const CacheRepository(this.box);

  Future<void> remove(String key) => box.remove(key);
}

final cacheRepositoryProvider = Provider((ref) {
  final db = ref.watch(dbProvider);
  final box = db.getLazyGenericBox(db.cacheBox);
  return CacheRepository(box);
});
