import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viteconnect/viteconnect_page.dart';

class ViteConnectScreen extends ConsumerWidget {
  const ViteConnectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ViteConnectPage();
  }
}
