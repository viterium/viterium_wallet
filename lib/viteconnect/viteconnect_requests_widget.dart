import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../core/core_providers.dart';
import '../widgets/gradient_widgets.dart';
import 'request_item_widget.dart';
import 'viteconnect_providers.dart';
import 'viteconnect_types.dart';

class ViteConnectRequestsWidget extends ConsumerWidget {
  final void Function(VCHistoryItem item) onItemSelect;

  const ViteConnectRequestsWidget({
    Key? key,
    required this.onItemSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final theme = ref.watch(themeProvider);

    final history = ref.watch(viteConnectRequestsProvider);
    if (history.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'No requests so far',
          style: styles.textStyleAppTextField,
        ),
      );
    }

    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');

    return Stack(
      children: [
        ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(height: 4),
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: history.length,
          itemBuilder: (context, index) {
            final item = history[index];
            return Container(
              decoration: BoxDecoration(
                color: theme.backgroundDarkest,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [theme.boxShadow],
              ),
              child: TextButton(
                style: styles.darkCardButtonStyle,
                onPressed: () => onItemSelect(item),
                child: item.when(
                  current: (request) {
                    return RequestItemWidget(
                      title: 'Current Request',
                      subtitle: 'Tap to view',
                      action: 'Pending',
                    );
                  },
                  tx: (request, response, timestamp) {
                    final title = request.type.when(
                      transfer: () => 'Send Transaction',
                      create: () => 'Contract Create',
                      call: () => 'Contract Call',
                    );
                    final action = response.when(
                      confirmed: (_) => 'Confirmed',
                      cancelled: () => 'Cancelled',
                    );

                    return RequestItemWidget(
                      title: title,
                      subtitle: formatter.format(timestamp),
                      action: action,
                    );
                  },
                  sign: (request, response, timestamp) {
                    final action = response.when(
                      confirmed: (_) => 'Confirmed',
                      cancelled: () => 'Cancelled',
                    );
                    return RequestItemWidget(
                      title: 'Sign Message',
                      subtitle: formatter.format(timestamp),
                      action: action,
                    );
                  },
                  invalid: (request, error, timestamp) {
                    return RequestItemWidget(
                      title: 'Invalid Request',
                      subtitle: formatter.format(timestamp),
                      action: 'Rejected',
                    );
                  },
                ),
              ),
            );
          },
        ),
        const ListTopGradient(),
        const ListBottomGradient(),
      ],
    );
  }
}
