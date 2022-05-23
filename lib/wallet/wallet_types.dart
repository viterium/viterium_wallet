import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_types.freezed.dart';
part 'wallet_types.g.dart';

@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    required String name,
    required String wid,
    required String accountsBoxKey,
    required String accountsEncryptionKey,
    required String accountInfoBoxKey,
    required String accountInfoEncryptionKey,
    required String selectionKey,
    required String publicKey,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInfoFromJson(json);
}

@freezed
class WalletBundle with _$WalletBundle {
  const factory WalletBundle({
    @Default(IListConst<WalletInfo>([])) IList<WalletInfo> wallets,
    WalletInfo? selected,
  }) = _WalletBundle;

  factory WalletBundle.fromJson(Map<String, dynamic> json) =>
      _$WalletBundleFromJson(json);
}

@freezed
class WalletData with _$WalletData {
  const factory WalletData({
    required String name,
    required String seed,
    String? entropy,
    String? password,
  }) = _WalletData;
}
