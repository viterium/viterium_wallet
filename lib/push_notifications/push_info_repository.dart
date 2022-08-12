import 'package:vite/vite.dart';

import '../database/boxes.dart';
import 'push_types.dart';

class PushInfoRepository {
  final TypedBox<PushInfo> box;

  PushInfoRepository(this.box) {}

  bool anyPushEnabledForWalletId(String walletId) => box
      .getAll()
      .values
      .any((pushInfo) => pushInfo.pushEnabled && pushInfo.walletId == walletId);

  bool get anyPushEnabled =>
      box.getAll().values.any((pushInfo) => pushInfo.pushEnabled);

  PushInfo getPushInfo(Hash id, {required PushInfo Function(Hash id) create}) {
    return box.get(id.hex, defaultValue: create(id));
  }

  PushInfo? pushInfoForId(Hash id) => box.tryGet(id.hex);

  Future<void> setPushInfo(PushInfo pushInfo, {required Hash id}) async {
    await box.set(id.hex, pushInfo);
  }

  Future<void> clear() => box.clear();
}
