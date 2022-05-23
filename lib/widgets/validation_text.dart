import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../app_styles.dart';

class ValidationText extends ConsumerWidget {
  final String data;
  const ValidationText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        data,
        style: TextStyle(
          fontSize: 14,
          color: theme.primary,
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
