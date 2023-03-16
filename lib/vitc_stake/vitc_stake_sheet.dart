import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/sheet_handle.dart';
import 'vitc_claim_button.dart';
import 'vitc_pool_details_card.dart';
import 'vitc_stake_button.dart';
import 'vitc_stake_types.dart';
import 'vitc_withdraw_button.dart';

class VitcStakeSheet extends ConsumerWidget {
  final VitcPoolInfoAll poolInfo;

  const VitcStakeSheet({
    Key? key,
    required this.poolInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SheetHandle(),
            Expanded(child: VitcPoolDetailsCard(poolInfo: poolInfo)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  VitcClaimButton(poolInfo: poolInfo),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: VitcStakeButton(poolInfo: poolInfo),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: VitcWithdrawButton(poolInfo: poolInfo),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
