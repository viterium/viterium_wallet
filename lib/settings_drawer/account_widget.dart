import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/address_widgets.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final wallet = ref.watch(walletProvider);
    final account = ref.watch(selectedAccountProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            '${wallet.name} - ${account.name}',
            style: styles.textStyleAppTextFieldSimple,
          ),
        ),
        AddressTwoLineText(address: account.viteAddress),
      ],
    );
  }
}
