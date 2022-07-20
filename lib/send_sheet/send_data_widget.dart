import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/utils.dart';

import '../app_providers.dart';

class SendDataWidget extends HookConsumerWidget {
  final Uint8List data;
  final bool success;
  const SendDataWidget({
    Key? key,
    required this.data,
    this.success = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final memo = useMemoized(() {
      try {
        return bytesUtf8ToString(data);
      } catch (_) {
        return null;
      }
    }, [data]);

    final title = memo != null ? 'MEMO' : 'DATA';
    final details = memo != null ? memo : data.hex;
    final titleStyle = success
        ? styles.textStyleDataTypeHeaderSuccess
        : styles.textStyleDataTypeHeaderHighlight;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
        top: 5,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Text(
            details,
            textAlign: TextAlign.center,
            style: styles.textStyleAddressText90,
          ),
        ],
      ),
    );
  }
}
