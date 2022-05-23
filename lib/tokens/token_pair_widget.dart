import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'token_icon_widget.dart';

class TokenPairWidget extends ConsumerWidget {
  final TokenId mainTokenId;
  final TokenId secondaryTokenId;

  const TokenPairWidget({
    Key? key,
    required this.mainTokenId,
    required this.secondaryTokenId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Stack(
      children: [
        TokenIconWidget(
          tokenId: mainTokenId,
          size: const Size(50, 50),
        ),
        Container(
          decoration: BoxDecoration(
            color: theme.backgroundDark,
            borderRadius: BorderRadius.circular(100),
          ),
          width: 34,
          height: 34,
          margin: const EdgeInsets.only(top: 18, left: 28),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
          ),
          child: TokenIconWidget(
            tokenId: secondaryTokenId,
            size: const Size(30, 30),
          ),
        ),
      ],
    );
  }
}
