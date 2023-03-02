import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../widgets/sheet_handle.dart';

class HeaderWidget extends ConsumerWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.read(stylesProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 60, height: 60),
        Expanded(
          child: Column(
            children: [
              const SheetHandle(),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'VITCSwap',
                    style: styles.textStyleHeader(context),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 60, height: 60),
      ],
    );
  }
}
