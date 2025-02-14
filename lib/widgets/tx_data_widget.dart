import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../core/core_providers.dart';
import 'data_widgets.dart';

class TxDataWidget extends HookConsumerWidget {
  final Uint8List data;
  final Contract? contract;

  const TxDataWidget({super.key, required this.data, this.contract});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final memo = useMemoized(() {
      if (contract != null) {
        return null;
      }
      try {
        return bytesUtf8ToString(data);
      } catch (_) {
        return null;
      }
    }, [data, contract]);

    final function = useMemoized(() {
      if (contract == null) {
        return null;
      }
      return contract!.contractAbi.findFunctionByData(data);
    }, [data, contract]);

    final hasDecoded = function != null || memo != null;
    final showDecoded = useState(hasDecoded);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Data'.toUpperCase(), style: styles.textStyleSubHeader),
              if (hasDecoded) ...[
                TextButton(
                  style: styles.cardButtonStyle,
                  child: Text(
                    ' Decoded '.toUpperCase(),
                    style:
                        showDecoded.value
                            ? styles.textStyleSubHeader
                            : styles.textStyleSubHeaderUnselected,
                  ),
                  onPressed: () => showDecoded.value = true,
                ),
                Text('|', style: styles.textStyleSubHeader),
                TextButton(
                  style: styles.cardButtonStyle,
                  child: Text(
                    ' Encoded '.toUpperCase(),
                    style:
                        !showDecoded.value
                            ? styles.textStyleSubHeader
                            : styles.textStyleSubHeaderUnselected,
                  ),
                  onPressed: () => showDecoded.value = false,
                ),
              ],
            ],
          ),
        ),
        if (!hasDecoded) const SizedBox(height: 10),
        GestureDetector(
          onTap: () => showDecoded.value = !showDecoded.value,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: Column(
              children: [
                if (showDecoded.value) ...[
                  if (function != null) ...[
                    DataDecodedCard(data: data, abi: contract!.contractAbi),
                  ] else if (memo != null) ...[
                    DataMemoCard(memo: memo),
                  ] else
                    DataEncodedCard(data: data),
                ] else
                  DataEncodedCard(data: data),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
