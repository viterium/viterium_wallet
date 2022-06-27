import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/address_widgets.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

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
            style: TextStyle(
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: theme.text,
            ),
          ),
        ),
        AddressTwoLineText(address: account.viteAddress),
      ],
    );
  }
}
