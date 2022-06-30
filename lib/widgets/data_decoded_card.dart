import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../core/core_providers.dart';

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

    final function = abi.findFunctionByData(data);
    final inputs = abi.decodeFunction(data);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Message'.toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: theme.text,
            ),
          ),
          Text(
            function?.name ?? 'unknown',
            style: styles.textStyleAddressPrimary,
          ),
          const SizedBox(height: 16),
          if (function != null && inputs.isNotEmpty) ...[
            Text(
              'Inputs'.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: theme.text,
              ),
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
              Text(
                '${inputs[i]}',
                style: styles.textStyleAddressText90,
              ),
              const SizedBox(height: 8),
            ],
          ],
        ],
      ),
    );
  }
}
