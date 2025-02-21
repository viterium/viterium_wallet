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
    super.key,
    required this.tokenId,
    this.size = const Size(40, 40),
  });

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
              asset:
                  (asset) => Image.asset(
                    asset,
                    width: size.width,
                    height: size.height,
                    isAntiAlias: true,
                  ),
              url:
                  (url) => ExtendedImage.network(
                    url,
                    fit: BoxFit.cover,
                    width: size.width,
                    height: size.height,
                    cache: true,
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
