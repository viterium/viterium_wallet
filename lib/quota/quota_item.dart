import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../util/ui_util.dart';
import '../widgets/address_widgets.dart';
import '../widgets/dialog.dart';

final quotaItemProvider =
    Provider<RpcStakeInfo>((ref) => throw UnimplementedError());

class QuotaItem extends ConsumerWidget {
  const QuotaItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);

    final quotaInfo = ref.watch(quotaItemProvider);
    final rawAmount = BigInt.tryParse(quotaInfo.stakeAmount) ?? BigInt.zero;
    final amount = Amount.raw(rawAmount, tokenInfo: TokenInfo.vite);
    final contacts = ref.watch(contactsProvider);
    final address = quotaInfo.beneficiary;
    final accounts = ref.watch(accountsProvider);
    final accountName = accounts.nameForAddress(address);
    final contact =
        contacts.getContactWithAddress(address, includeLabels: true);
    final hasId = quotaInfo.id != null;

    final name = accountName ?? contact?.name;

    final unlockDate =
        DateTime.fromMillisecondsSinceEpoch(quotaInfo.expirationTime * 1000)
            .toLocal();
    final now = DateTime.now();
    final unlocked = now.isAfter(unlockDate) && hasId;
    final unlockDateStr = DateFormat('yyyy.MM.dd HH:mm:ss').format(unlockDate);
    final lockStr = unlocked ? 'AVAILABLE SINCE' : 'AVAILABLE FROM';

    Future<void> unstakeQuota() async {
      final id = quotaInfo.id;
      if (id == null) {
        UIUtil.showSnackbar('Missing id for quota record', context);
        return;
      }

      AppDialogs.showInProgressDialog(
        context,
        'Unlocking VITE from Quota',
        'Unlocking ${amount.value} VITE',
      );

      try {
        final service = ref.read(accountServiceProvider);
        await service.cancelQuotaStaking(
          address: Address.parse(quotaInfo.stakeAddress),
          recordId: id,
        );

        final stakeList = ref.read(quotaStakeListProvider);
        stakeList.removeRecord(quotaInfo);

        ref.invalidate(quotaRefreshProvider(Address.parse(address)));
      } catch (e, st) {
        final log = ref.read(loggerProvider);
        log.e('Failed to cancel quota staking', e, st);
        UIUtil.showSnackbar('Failed to unlock', context);
      }

      // dismiss in progress dialog
      Navigator.of(context).pop();
    }

    Future<void> configmAuth() async {
      final authUtil = ref.read(authUtilProvider);
      final message = 'Unlock ${amount.value} VITE';
      final auth = await authUtil.authenticate(context, message, message);

      if (auth) {
        unstakeQuota();
      }
    }

    return Column(
      children: [
        Divider(height: 2, color: theme.text15),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 7,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Beneficiary',
                            style: styles.textStyleParagraphSmall,
                          ),
                          if (name != null)
                            Text(
                              ' - ${name}',
                              style: styles.textStyleParagraphSmall,
                            ),
                        ],
                      ),
                      AddressTwoLineText(address: quotaInfo.beneficiary),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            lockStr,
                            style: styles.addressText.copyWith(fontSize: 10),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            '$unlockDateStr',
                            style: styles.addressText.copyWith(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                flex: 2,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${amount.value}',
                            style: styles.textStyleAppTextFieldSimple,
                          ),
                          Text(
                            'VITE',
                            style: styles.textStyleTransactionUnit,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Visibility(
                        visible: unlocked,
                        child: Material(
                          color: theme.text10,
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(6),
                          child: InkWell(
                            onTap: configmAuth,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              child: Text(
                                'UNLOCK',
                                style: styles.textStyleDialogButtonTextSimple,
                              ),
                            ),
                          ),
                        ),
                        // replacement: Visibility(
                        //   visible: hasId,
                        //   child: Container(
                        //     padding: const EdgeInsets.symmetric(
                        //       horizontal: 12,
                        //       vertical: 6,
                        //     ),
                        //     decoration: BoxDecoration(
                        //       color: theme.text10,
                        //       borderRadius: BorderRadius.circular(6),
                        //     ),
                        //     child: Text(
                        //       'LOCKED',
                        //       style: styles.textStyleDialogButtonTextSimple,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
