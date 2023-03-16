import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/sheet_handle.dart';
import 'viva_claim_button.dart';
import 'viva_pool_details_card.dart';
import 'viva_stake_button.dart';
import 'viva_staking_types.dart';
import 'viva_withdraw_button.dart';

class VivaStakingSheet extends ConsumerWidget {
  final VivaPoolInfoAll poolInfo;

  const VivaStakingSheet({
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
            Expanded(child: VivaPoolDetailsCard(poolInfo: poolInfo)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  VivaClaimButton(poolInfo: poolInfo),
                  const SizedBox(height: 16),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: VivaStakeButton(poolInfo: poolInfo),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: VivaWithdrawButton(poolInfo: poolInfo),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
