import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VitexWidget extends ConsumerWidget {
  const VitexWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(child: Text('Vitex is great!'));
  }
}
