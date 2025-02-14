import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

class AddressShortText extends ConsumerWidget {
  final String address;
  const AddressShortText({super.key, required this.address})
    : assert(address.length == 55);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stringPartOne = address.substring(0, 13);

    final styles = ref.watch(stylesProvider);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: stringPartOne, style: styles.textStyleAddressPrimary),
        ],
      ),
    );
  }
}
