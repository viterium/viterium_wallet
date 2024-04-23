import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../send_sheet/balance_text_widget.dart';
import '../send_sheet/send_sheet.dart';
import '../transactions/transaction_history_widget.dart';
import '../transactions/unreceived_providers.dart';
import '../util/caseconverter.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../util/util.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/buttons.dart';
import '../widgets/dialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_handle.dart';
import '../widgets/sheet_util.dart';
import 'token_burn_dialog.dart';
import 'token_icon_widget.dart';

class TokenSheet extends ConsumerWidget {
  final TokenInfo tokenInfo;
  const TokenSheet({Key? key, required this.tokenInfo}) : super(key: key);

  Token get token => tokenInfo.token;
  TokenId get tokenId => tokenInfo.tokenId;
  String get symbol => tokenInfo.symbolLabel;
  String get name => tokenInfo.tokenName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final l10n = ref.watch(l10nProvider);
    final styles = ref.watch(stylesProvider);

    final balance = ref.watch(formatedTokenBalanceProvider(tokenId));
    final exactBalance = ref.watch(exactTokenBalanceProvider(tokenId));
    final fiatValue = ref.watch(formatedFiatValueForTokenProvider(tokenId));
    final balanceRaw = ref.watch(balanceForTokenProvider(tokenId));

    final canBurnToken = balanceRaw > BigInt.zero && !tokenInfo.isOwnerBurnOnly;

    final unreceivedBalance =
        ref.watch(unreceivedBalanceForTokenProvider(tokenId));
    var unreceivedBalanceDisplay = '0';
    var unreceivedCount = '';
    if (unreceivedBalance != null) {
      unreceivedBalanceDisplay = NumberUtil.formatedBalance(unreceivedBalance);
      unreceivedCount = '(${unreceivedBalance.transactionCount})';
    }

    void showTokenInfo() {
      final explorer = ref.read(blockExplorerProvider);
      openUrl(explorer.urlForTokenId(tokenId));
    }

    Future<void> burnToken() async {
      final account = ref.read(selectedAccountProvider);
      final accountService = ref.read(accountServiceProvider);
      final autoreceiveService = ref.read(autoreceiveServiceProvider(account));

      final amount = await showAppDialog<Amount>(
        context: context,
        builder: (_) => TokenBurnDialog(tokenInfo: tokenInfo),
      );

      if (amount == null || amount.raw > balanceRaw) {
        return;
      }

      final authUtil = ref.read(authUtilProvider);
      final message =
          'Burn ${NumberUtil.formatedAmount(amount)} ${tokenInfo.symbolLabel}';
      final auth = await authUtil.authenticate(context, message, message);
      if (auth != true) {
        return;
      }

      try {
        AppDialogs.showInProgressDialog(
          context,
          'Token Burn',
          'Sending burn request',
        );
        await autoreceiveService.pauseAutoreceive();
        final data =
            tokenIssuanceContract.contractAbi.encodeFunction('Burn', []);
        await accountService.callContract(
          address: account.address,
          contractAddress: tokenIssuanceContract.address,
          token: tokenInfo.token,
          amount: amount.raw,
          data: data,
        );

        UIUtil.showSnackbar('Burn request sent', context);
      } catch (e) {
        final log = ref.read(loggerProvider);
        log.e('Failed to burn token', e);

        UIUtil.showSnackbar('Failed to send burn request', context);
      } finally {
        autoreceiveService.resumeAutoreceive();
        Navigator.of(context).pop();
      }
    }

    void sendToken() {
      final selectedToken = ref.read(selectedTokenProvider.notifier);
      selectedToken.state = tokenInfo;

      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: const SendSheet(),
      );
    }

    return SafeArea(
      minimum: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.035,
      ),
      child: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SheetHandle(),
              Container(
                margin: const EdgeInsets.only(left: 14, right: 14, top: 10),
                decoration: BoxDecoration(
                  color: theme.backgroundDark,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [theme.boxShadow],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 12,
                  ),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          TokenIconWidget(tokenId: tokenId),
                          const SizedBox(width: 12),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        tokenInfo.tokenName,
                                        style: styles.textStyleTransactionType,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        tokenInfo.symbolLabel,
                                        style: styles.textStyleTransactionType,
                                      ),
                                    ]),
                                Text(
                                  tokenId,
                                  textAlign: TextAlign.start,
                                  style: styles.textStyleTransactionUnit,
                                ),
                              ],
                            ),
                          ),
                        ]),
                        AppIconButton(
                          icon: AppIcons.info,
                          size: const Size(40, 40),
                          onPressed: showTokenInfo,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Tooltip(
                              message: exactBalance,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  balance,
                                  textAlign: TextAlign.end,
                                  style: styles.textStyleHeader(context),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '≈ $fiatValue',
                                textAlign: TextAlign.end,
                                style: styles.textStyleAppTextField,
                                maxLines: 1,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Unreceived $unreceivedCount',
                                      style: styles.textStyleTransactionType,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      unreceivedBalanceDisplay,
                                      style: styles.textStyleAddressPrimary,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                if (canBurnToken)
                                  TextButton(
                                    style: styles.dialogButtonStyle,
                                    child: Text(
                                      'BURN',
                                      style: styles.textStyleDialogButtonText,
                                    ),
                                    onPressed: burnToken,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              // TabBar(
              //   indicatorWeight: 3,
              //   indicatorColor: theme.primary60,
              //   indicatorPadding: const EdgeInsets.only(left: 20, right: 20),
              //   tabs: [
              //     Tab(
              //       child: Container(
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                width: double.infinity,
                child: Text(
                  CaseChange.toUpperCase(l10n.transactions, ref),
                  textAlign: TextAlign.start,
                  style: styles.textStyleTabLabel,
                ),
              ),
              //),
              // Tab(
              //   child: Container(
              //     margin: const EdgeInsets.only(top: 20),
              //     width: double.infinity,
              //     child: Text(
              //       CaseChange.toUpperCase('Staking', ref),
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 14,
              //         fontWeight: FontWeight.w100,
              //         color: theme.text,
              //       ),
              //     ),
              //   ),
              // ),
              //],
              //),
              Expanded(
                // child: TabBarView(
                //   children: [
                // Stack(
                child: Stack(
                  children: [
                    TransactionHistoryWidget(
                      token: token,
                      tokenSymbol: tokenInfo.symbolLabel,
                    ),
                    const TopGradientWidget(),
                    const BottomGradientWidget(),
                  ],
                ),
                // Stack(
                //   children: [
                //     VivaStakingWidget(token: token),
                //     const TopGradientWidget(),
                //     const BottomGradientWidget(),
                //   ],
                //),
                //],
                //),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    PrimaryButton(
                      title: 'Send ${tokenInfo.tokenSymbol}',
                      onPressed: sendToken,
                    ),
                    const SizedBox(height: 16),
                    PrimaryOutlineDarkButton(
                      title: l10n.close,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
