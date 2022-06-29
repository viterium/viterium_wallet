import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/core/core_providers.dart';

import '../widgets/data_decoded_card.dart';
import '../widgets/data_encoded_card.dart';
import '../widgets/data_memo_card.dart';

class TransactionDataWidget extends HookConsumerWidget {
  final Uint8List data;
  final Contract? contract;

  const TransactionDataWidget({
    Key? key,
    required this.data,
    this.contract,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final memo = useMemoized(() {
      try {
        return bytesUtf8ToString(data);
      } catch (_) {
        return null;
      }
    }, [data]);

    final hasDecoded = contract != null || memo != null;
    final showDecoded = useState(true);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Data '.toUpperCase(),
                style: styles.textStyleSubHeader,
              ),
              if (hasDecoded) ...[
                TextButton(
                  style: styles.cardButtonStyle,
                  child: Text(
                    'Decoded'.toUpperCase(),
                    style: showDecoded.value
                        ? styles.textStyleSubHeader
                        : styles.textStyleSubHeaderUnselected,
                  ),
                  onPressed: () => showDecoded.value = true,
                ),
                Text(' | ', style: styles.textStyleSubHeader),
                TextButton(
                  style: styles.cardButtonStyle,
                  child: Text(
                    'Encoded'.toUpperCase(),
                    style: !showDecoded.value
                        ? styles.textStyleSubHeader
                        : styles.textStyleSubHeaderUnselected,
                  ),
                  onPressed: () => showDecoded.value = false,
                ),
              ],
            ],
          ),
        ),
        GestureDetector(
          onTap: () => showDecoded.value = !showDecoded.value,
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: Column(children: [
                if (showDecoded.value) ...[
                  if (contract != null) ...[
                    DataDecodedCard(
                      data: data,
                      abi: contract!.contractAbi,
                    ),
                  ] else if (memo != null) ...[
                    DataMemoCard(memo: memo),
                  ] else
                    DataEncodedCard(data: data),
                ] else
                  DataEncodedCard(data: data),
              ])),
        ),
      ],
    );
  }
}
