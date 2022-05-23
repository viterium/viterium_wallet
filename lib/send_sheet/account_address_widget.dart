import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../app_styles.dart';
import '../widgets/one_or_three_address_text.dart';

class AccountAddressWidget extends ConsumerWidget {
  const AccountAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final account = ref.watch(selectedAccountProvider);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
          child: Container(
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: account.name,
                style: TextStyle(
                  color: theme.text60,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: kFontFamily,
                ),
              ),
            ),
          ),
        ),
        // Address Text
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: OneOrThreeLineAddressText(
            address: account.viteAddress,
            type: AddressTextType.PRIMARY60,
          ),
        ),
      ],
    );
  }
}
