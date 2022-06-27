import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/core/core_providers.dart';

import '../widgets/data_encoded_card.dart';

class ContractDataWidget extends ConsumerWidget {
  final Uint8List data;
  final Contract? contract;

  const ContractDataWidget({
    Key? key,
    required this.data,
    this.contract,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 10),
          child: Text(
            'Data'.toUpperCase(),
            style: styles.textStyleSubHeader,
          ),
        ),
        DataEncodedCard(data: data),
        if (contract != null)
          DataDecodedCard(
            data: data,
            abi: contract!.contractAbi,
          ),
      ],
    );
  }
}
