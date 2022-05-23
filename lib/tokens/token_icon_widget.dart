import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import 'token_constants.dart';
import 'token_icon_provider.dart';

class TokenIconWidget extends ConsumerWidget {
  final TokenId tokenId;
  final Size size;

  const TokenIconWidget({
    Key? key,
    required this.tokenId,
    this.size = const Size(40, 40),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenIcon = ref.watch(tokenIconProvider(tokenId));

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size.width / 2),
            child: tokenIcon.when(
              asset: (asset) => Image.asset(
                asset,
                width: size.width,
                height: size.height,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
              url: (url) => ExtendedImage.network(
                url,
                fit: BoxFit.cover,
                width: size.width,
                height: size.height,
                cache: true,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                loadStateChanged: (state) {
                  if (state.extendedImageLoadState != LoadState.completed) {
                    return Image.asset(
                      defaultTokenIconPath,
                      width: size.width,
                      height: size.height,
                    );
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
