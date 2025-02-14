import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/one_or_three_address_text.dart';

class AccountAddressWidget extends ConsumerWidget {
  const AccountAddressWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

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
                style: styles.textStyleAccount,
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
