import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'viva_pool_card.dart';
import 'viva_staking_providers.dart';

class VivaStakingWidget extends ConsumerWidget {
  final Token token;
  const VivaStakingWidget({Key? key, required this.token}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(vivaPoolsForTokenProvider(token.tokenId));
    return data.when(data: (pools) {
      return ListView.builder(
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
        itemCount: pools.length,
        itemBuilder: (context, index) {
          return VivaPoolCard(poolInfo: pools[index]);
        },
      );
    }, loading: () {
      return Text('Loading...');
    }, error: (e, st) {
      return Text('$e');
    });
  }
}
