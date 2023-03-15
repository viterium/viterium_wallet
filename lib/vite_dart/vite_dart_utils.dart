import 'dart:typed_data';

import 'package:vite/vite.dart';

Hash mapLocation({required Hash slot, required Hash key}) {
  final data = Uint8List.fromList(key.bytes + slot.bytes);
  return Hash(digest(data: data));
}
