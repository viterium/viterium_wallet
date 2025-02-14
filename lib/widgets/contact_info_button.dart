import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import 'sheet_header_button.dart';

class ContactInfoButton extends ConsumerWidget {
  final bool visible;
  final VoidCallback? onPressed;

  const ContactInfoButton({
    super.key,
    this.visible = true,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SheetHeaderButton(icon: AppIcons.search, onPressed: onPressed);
  }
}
