import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_providers.dart';

enum AddressThreeLineTextType { PRIMARY60, PRIMARY, SUCCESS, SUCCESS_FULL }

class AddressThreeLineText extends ConsumerWidget {
  final String address;
  final AddressThreeLineTextType type;
  final String? label;

  const AddressThreeLineText({
    super.key,
    required this.address,
    this.type = AddressThreeLineTextType.PRIMARY,
    this.label,
  }) : assert(address.length == 55);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String stringPartOne = address.substring(0, 13);
    String stringPartTwo = address.substring(13, 20);
    String stringPartThree = address.substring(20, 35);
    String stringPartFour = address.substring(35, 45);
    String stringPartFive = address.substring(45);

    final styles = ref.watch(stylesProvider);

    switch (type) {
      case AddressThreeLineTextType.PRIMARY60:
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
                    style: styles.textStyleAddressPrimary60,
                  ),
                ],
              ),
            ),
          ],
        );
      case AddressThreeLineTextType.PRIMARY:
        Widget contactWidget =
            label != null
                ? RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: label,
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
            ),
          ],
        );
      case AddressThreeLineTextType.SUCCESS:
        Widget contactWidget =
            label != null
                ? RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: label,
                    style: styles.textStyleAddressSuccess,
                  ),
                )
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
            ),
          ],
        );
      case AddressThreeLineTextType.SUCCESS_FULL:
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
            ),
          ],
        );
    }
  }
}
