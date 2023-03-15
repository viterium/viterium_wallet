import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../core/generic_state_notifier.dart';
import '../util/user_data_util.dart';
import '../widgets/buttons.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';
import 'token_info_provider.dart';
import 'token_state_card.dart';
import 'token_types.dart';

final _searchTermProvider = StateProvider((ref) => '');

final _searchProvider = StreamProvider.autoDispose
    .family<IList<TokenInfo>, String>((ref, search) async* {
  final tokenInfoList = await ref.watch(tokenInfoListProvider.future);
  if (search.isEmpty) {
    yield tokenInfoList;
    return;
  }

  search = search.toLowerCase().trim();
  final isTti = search.startsWith('tti_');

  bool disposed = false;
  ref.onDispose(() {
    disposed = true;
  });

  var result = IList<TokenInfo>();
  var count = 0;
  for (final info in tokenInfoList) {
    if (disposed) {
      return;
    }
    ++count;
    if (info.tokenSymbol.toLowerCase().startsWith(search) ||
        info.tokenName.toLowerCase().startsWith(search) ||
        (isTti && info.tokenId.startsWith(search)) ||
        (search.length > 3 && info.tokenId.contains(search))) {
      result = result.add(info);
      if (count % 20 == 0) {
        yield result;
      }
    }
  }
  yield result;
});

final _tokenInfoListSearchProvider = Provider.autoDispose((ref) {
  final searchTerm = ref.watch(_searchTermProvider);
  final result = ref.watch(_searchProvider(searchTerm));
  return result;
});

final _tokenInfoListProvider = StateNotifierProvider.autoDispose<
    GenericStateNotifier<AsyncValue<IList<TokenInfo>>>,
    AsyncValue<IList<TokenInfo>>>((ref) {
  final notifier =
      GenericStateNotifier<AsyncValue<IList<TokenInfo>>>(AsyncValue.loading());

  ref.listen<AsyncValue<IList<TokenInfo>>>(
    _tokenInfoListSearchProvider,
    (_, next) => next.mapOrNull(data: (data) => notifier.updateState(data)),
    fireImmediately: true,
  );
  return notifier;
});

class TokensManageSheet extends HookConsumerWidget {
  const TokensManageSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);

    final tokenInfoList = ref.watch(_tokenInfoListProvider);
    final account = ref.watch(selectedAccountProvider);
    final mapping = ref.watch(tokenStateMappingProvider(account));
    final accountInfo = ref.watch(accountInfoProvider(account));

    final searchTerm = useMemoized(() => ref.read(_searchTermProvider));
    final searchController = useTextEditingController(text: searchTerm);

    void updateState(String tokenId, TokenState newState) {
      final notifier = ref.read(tokenStateMappingProvider(account).notifier);
      notifier.updateTokenState(tokenId, newState);
    }

    void updateSearchTerm(String term) {
      searchController.text = term;
      final searchTerm = ref.read(_searchTermProvider.notifier);
      searchTerm.state = term;
    }

    Future<void> pasteAction() async {
      final data = await UserDataUtil.getClipboardText(DataType.RAW);
      if (data != null) {
        updateSearchTerm(data);
      }
    }

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: 'Manage Tokens',
        mainWidget: Column(
          children: [
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  final searchTerm = ref.read(_searchTermProvider.notifier);
                  searchTerm.state = value;
                },
                cursorColor: theme.primary,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  filled: true,
                  fillColor: theme.backgroundDark,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                    gapPadding: 0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'Enter Token Name, Symbol or ID',
                  constraints: BoxConstraints(maxHeight: 48),
                  suffixIcon: searchController.text.isEmpty
                      ? IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(AppIcons.paste, size: 20),
                          color: theme.primary,
                          onPressed: pasteAction,
                        )
                      : IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(Icons.clear, size: 20),
                          color: theme.primary,
                          onPressed: () => updateSearchTerm(''),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Stack(
                children: [
                  tokenInfoList.when(
                    data: (data) => ListView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final info = data[index];
                        final tokenId = info.tokenId;
                        final balance = accountInfo.balances[tokenId];
                        final enabled = balance != null;
                        final state = mapping.states[tokenId] ??
                            TokenState(
                              enabled: enabled,
                              tokenInfo: enabled ? info : null,
                            );
                        final item = TokenInfoState(info: info, state: state);
                        return TokenStateCard(
                          item: item,
                          onChanged: (newState) =>
                              updateState(tokenId, newState),
                        );
                      },
                    ),
                    error: (e, st) {
                      return Container(
                          padding: const EdgeInsets.only(top: 16),
                          alignment: Alignment.topCenter,
                          child: Text('Error Loading Tokens'));
                    },
                    loading: () {
                      return Container(
                          padding: const EdgeInsets.only(top: 16),
                          alignment: Alignment.topCenter,
                          child: CupertinoActivityIndicator());
                    },
                  ),
                  const TopGradientWidget(),
                  const BottomGradientWidget(),
                ],
              ),
            ),
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: PrimaryButton(
            title: l10n.close,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    );
  }
}
