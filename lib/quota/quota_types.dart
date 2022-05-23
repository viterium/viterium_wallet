import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'quota_types.freezed.dart';
part 'quota_types.g.dart';

@freezed
class StakeInfo with _$StakeInfo {
  const factory StakeInfo({
    required ViteAddress stakeAddress,
    required String stakeAmount,
    required String expirationHeight,
    required ViteAddress beneficiary,
    required int expirationTime,
    required bool isDelegated,
    ViteAddress? delegateAddress,
    @Default(0) int bid,
    RpcHash? hash,
  }) = _StakeInfo;

  factory StakeInfo.fromJson(Map<String, dynamic> json) =>
      _$StakeInfoFromJson(json);
}

@freezed
class StakeListInfo with _$StakeListInfo {
  const factory StakeListInfo({
    required BigInt totalStakeAmount,
    required int totalStakeCount,
    @Default([]) List<RpcStakeInfo> stakeList,
  }) = _StakeListInfo;

  factory StakeListInfo.fromJson(Map<String, dynamic> json) =>
      _$StakeListInfoFromJson(json);
}
