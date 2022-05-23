import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../app_providers.dart';
import '../widgets/toast_widget.dart';

enum ThreeLineAddressTextType { PRIMARY60, PRIMARY, SUCCESS, SUCCESS_FULL }
enum OneLineAddressTextType { PRIMARY60, PRIMARY, SUCCESS }

class TwoLineAddressShortText extends ConsumerWidget {
  final String address;

  const TwoLineAddressShortText({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(address.length == 55);
    final styles = ref.watch(stylesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(0, 11),
                style: styles.textStyleAddressPrimary60,
              ),
              TextSpan(
                text: address.substring(11, 18),
                style: styles.textStyleAddressText60,
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '...' + address.substring(40, 45),
                style: styles.textStyleAddressText60,
              ),
              TextSpan(
                text: address.substring(45),
                style: styles.textStyleAddressPrimary60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TwoLineAddressText extends ConsumerWidget {
  final String address;
  const TwoLineAddressText({
    Key? key,
    required this.address,
  })  : assert(address.length == 55),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final fSplit = 13;
    final split = 28;
    final lSplit = 45;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(0, fSplit),
                style: styles.textStyleAddressPrimary60,
              ),
              TextSpan(
                text: address.substring(fSplit, split),
                style: styles.textStyleAddressText60,
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: address.substring(split, lSplit),
                style: styles.textStyleAddressText60,
              ),
              TextSpan(
                text: address.substring(lSplit),
                style: styles.textStyleAddressPrimary60,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ThreeLineAddressText extends ConsumerWidget {
  final String address;
  final ThreeLineAddressTextType type;
  final String? contactName;

  const ThreeLineAddressText({
    Key? key,
    required this.address,
    this.type = ThreeLineAddressTextType.PRIMARY,
    this.contactName,
  })  : assert(address.length == 55),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String stringPartOne = address.substring(0, 11);
    String stringPartTwo = address.substring(11, 20);
    String stringPartThree = address.substring(20, 35);
    String stringPartFour = address.substring(35, 49);
    String stringPartFive = address.substring(49);

    final styles = ref.watch(stylesProvider);

    switch (type) {
      case ThreeLineAddressTextType.PRIMARY60:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary60,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText60,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText60,
                  ),
                  TextSpan(
                      text: stringPartFive,
                      style: styles.textStyleAddressPrimary60),
                ],
              ),
            )
          ],
        );
      case ThreeLineAddressTextType.PRIMARY:
        Widget contactWidget = contactName != null
            ? RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: contactName,
                  style: styles.textStyleAddressPrimary,
                ),
              )
            : const SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressPrimary,
                  ),
                ],
              ),
            )
          ],
        );
      case ThreeLineAddressTextType.SUCCESS:
        Widget contactWidget = contactName != null
            ? RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: contactName, style: styles.textStyleAddressSuccess))
            : SizedBox();
        return Column(
          children: [
            contactWidget,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressText90,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            )
          ],
        );
      case ThreeLineAddressTextType.SUCCESS_FULL:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartTwo,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartThree,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartFour,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            )
          ],
        );
    }
  }
}

class ShortAddressText extends ConsumerWidget {
  final String address;
  const ShortAddressText({Key? key, required this.address})
      : assert(address.length == 55),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stringPartOne = address.substring(0, 13);

    final styles = ref.watch(stylesProvider);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: stringPartOne,
          style: styles.textStyleAddressPrimary,
        ),
      ]),
    );
  }
}

class OneLineAddressText extends ConsumerWidget {
  final String address;
  final OneLineAddressTextType type;
  const OneLineAddressText({
    Key? key,
    required this.address,
    this.type = OneLineAddressTextType.PRIMARY,
  })  : assert(address.length == 55),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stringPartOne = address.substring(0, 11);
    final stringPartFive = address.substring(49);

    final styles = ref.watch(stylesProvider);

    switch (type) {
      case OneLineAddressTextType.PRIMARY60:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary60,
                  ),
                  TextSpan(
                    text: "...",
                    style: styles.textStyleAddressText60,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressPrimary60,
                  ),
                ],
              ),
            ),
          ],
        );
      case OneLineAddressTextType.PRIMARY:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressPrimary,
                  ),
                  TextSpan(
                    text: "...",
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressPrimary,
                  ),
                ],
              ),
            ),
          ],
        );
      case OneLineAddressTextType.SUCCESS:
        return Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: stringPartOne,
                    style: styles.textStyleAddressSuccess,
                  ),
                  TextSpan(
                    text: "...",
                    style: styles.textStyleAddressText90,
                  ),
                  TextSpan(
                    text: stringPartFive,
                    style: styles.textStyleAddressSuccess,
                  ),
                ],
              ),
            ),
          ],
        );
    }
  }
}

class ThreeLineSeedText extends ConsumerWidget {
  final String seed;
  final TextStyle? textStyle;
  const ThreeLineSeedText({
    Key? key,
    required this.seed,
    this.textStyle,
  })  : assert(seed.length == 128),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.read(stylesProvider);
    final _textStyle = textStyle ?? styles.textStyleSeed;
    if (seed.length == 128) {
      final partOne = seed.substring(0, 33);
      final partTwo = seed.substring(33, 66);
      final partThree = seed.substring(66, 99);
      final partFour = seed.substring(99, 128);
      return Column(children: [
        Text(partOne, style: _textStyle),
        Text(partTwo, style: _textStyle),
        Text(partThree, style: _textStyle),
        Text(partFour, style: _textStyle),
      ]);
    }
    final stringPartOne = seed.substring(0, 22);
    final stringPartTwo = seed.substring(22, 44);
    final stringPartThree = seed.substring(44, 64);
    return Column(
      children: [
        Text(stringPartOne, style: _textStyle),
        Text(stringPartTwo, style: _textStyle),
        Text(stringPartThree, style: _textStyle),
      ],
    );
  }
}

class UIUtil {
  static double drawerWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (width < 375) ? width * 0.94 : width * 0.85;
  }

  static void showSnackbar(String content, BuildContext context) {
    showToastWidget(
      ToastWidget(content: content),
      dismissOtherToast: true,
      duration: Duration(milliseconds: 3000),
    );
  }

  static bool smallScreen(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height < 667;
  }
}
