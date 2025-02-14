import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viteconnect/viteconnect_page.dart';

class ViteConnectScreen extends ConsumerWidget {
  const ViteConnectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ViteConnectPage();
  }
}
