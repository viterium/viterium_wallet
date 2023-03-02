import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';
import '../../send_sheet/balance_text_widget.dart';
import '../../widgets/address_widgets.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    final account = ref.watch(selectedAccountProvider);

    return Container(
      margin: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              account.name,
              style: styles.textStyleAccountName,
            ),
            AddressShortText(address: account.viteAddress),
            const SizedBox(height: 8),
            const BalanceTextWidget(),
          ],
        ),
      ),
    );
  }
}
