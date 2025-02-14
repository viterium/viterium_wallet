import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../../app_providers.dart';

class DataEncodedCard extends HookConsumerWidget {
  final Uint8List data;
  const DataEncodedCard({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        data.hex,
        textAlign: TextAlign.center,
        style: styles.textStyleAddressText90,
      ),
    );
  }
}
