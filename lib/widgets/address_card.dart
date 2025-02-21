import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'address_widgets.dart';

class AddressCard extends HookConsumerWidget {
  final Address address;
  final bool showLabel;
  final AddressThreeLineTextType type;

  const AddressCard({
    super.key,
    required this.address,
    this.showLabel = true,
    this.type = AddressThreeLineTextType.PRIMARY,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    final label = useMemoized(() {
      if (!showLabel) return null;

      final contacts = ref.read(contactsProvider);
      final contact = contacts.getContactWithAddress(
        address.viteAddress,
        includeLabels: true,
      );
      return contact?.name;
    }, [address, showLabel]);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.105,
        right: MediaQuery.of(context).size.width * 0.105,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundDarkest,
        borderRadius: BorderRadius.circular(25),
      ),
      child: AddressThreeLineText(
        address: address.viteAddress,
        label: label,
        type: type,
      ),
    );
  }
}
