import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/core/core_providers.dart';

class DataDecodedCard extends HookConsumerWidget {
  final Uint8List data;
  final ContractAbi abi;

  const DataDecodedCard({
    Key? key,
    required this.data,
    required this.abi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final code = useMemoized(() {
      final function = abi.findFunctionByData(data);
      final input = abi.decodeFunction(data);
      final params = input.map((e) => e);

      return 'Function\n${function?.name};';
    }, [abi, data]);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.105,
          right: MediaQuery.of(context).size.width * 0.105),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        code,
        style: styles.textStyleAddressText90,
      ),
    );
  }
}

class DataEncodedCard extends HookConsumerWidget {
  final Uint8List data;
  const DataEncodedCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.105,
          right: MediaQuery.of(context).size.width * 0.105),
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
