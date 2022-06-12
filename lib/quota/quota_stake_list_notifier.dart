import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:vite/vite.dart';

class QuotaStakeListNotifier extends ChangeNotifier {
  final ViteAddress address;
  final RpcClient client;
  final Logger log;
  final stakeList = <RpcStakeInfo>[];

  bool _loading = false;
  bool get loading => _loading;
  int? totalStakeCount;
  BigInt? totalStakeAmount;

  bool disposed = false;

  bool get hasMore =>
      totalStakeCount == null || totalStakeCount! > stakeList.length;

  QuotaStakeListNotifier({
    required this.address,
    required this.client,
    required this.log,
  }) {
    loadMore();
  }

  @override
  void notifyListeners() {
    if (disposed) {
      return;
    }
    super.notifyListeners();
  }

  Future<RpcStakeListInfo> getStakeList([
    int pageIndex = 0,
    int count = 10,
  ]) async {
    try {
      final stakeListInfo =
          await client.getStakeList(address, pageIndex, count);
      totalStakeCount = stakeListInfo.totalStakeCount;
      totalStakeAmount =
          BigInt.tryParse(stakeListInfo.totalStakeAmount) ?? BigInt.zero;
      return stakeListInfo;
    } catch (e, st) {
      log.e('Failed to fetch stake records', e, st);
    }
    return RpcStakeListInfo(totalStakeAmount: '0', totalStakeCount: 0);
  }

  Future<void> loadMore([int count = 10]) async {
    if (_loading) {
      return;
    }
    _loading = true;

    final pageIndex = stakeList.length ~/ count;
    final stakeListInfo = await getStakeList(pageIndex, count);
    stakeList.addAll(stakeListInfo.stakeList);

    _loading = false;

    notifyListeners();
  }

  Future<void> refresh([int count = 10]) async {
    if (_loading) {
      return;
    }
    _loading = true;

    final stakeListInfo = await getStakeList(0, count);
    stakeList.clear();
    stakeList.addAll(stakeListInfo.stakeList);

    _loading = false;

    notifyListeners();
  }

  void removeRecord(RpcStakeInfo record) {
    stakeList.removeWhere((e) => e.id == record.id);
    totalStakeCount = (totalStakeCount ?? 1) - 1;
    final amount = BigInt.tryParse(record.stakeAmount) ?? BigInt.zero;
    totalStakeAmount = (totalStakeAmount ?? amount) - amount;

    notifyListeners();
  }
}
