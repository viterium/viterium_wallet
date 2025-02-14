import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../../app_providers.dart';

class DataDecodedCard extends HookConsumerWidget {
  final Uint8List data;
  final ContractAbi abi;

  const DataDecodedCard({super.key, required this.data, required this.abi});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final function = useMemoized(() {
      return abi.findFunctionByData(data);
    }, [data, abi]);
    final inputs = useMemoized(() {
      if (function == null) return <Object>[];
      try {
        return abi.decodeFunction(data);
      } catch (_) {
        return <Object>[];
      }
    }, [abi, data]);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Message'.toUpperCase(),
            style: styles.textStyleTransactionWelcome,
          ),
          Text(
            function?.name ?? 'unknown',
            style: styles.textStyleAddressPrimary,
          ),
          if (function != null && inputs.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Inputs'.toUpperCase(),
              style: styles.textStyleTransactionWelcome,
            ),
            for (int i = 0; i < inputs.length; ++i) ...[
              Row(
                children: [
                  Text(
                    '${function.inputs[i].name} (${function.inputs[i].type})',
                    style: styles.textStyleAddressPrimary,
                  ),
                ],
              ),
              Text('${inputs[i]}', style: styles.textStyleAddressText90),
              const SizedBox(height: 8),
            ],
          ],
        ],
      ),
    );
  }
}
