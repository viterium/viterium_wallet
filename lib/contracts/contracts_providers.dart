import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';
import 'package:viterium_wallet/contracts/contracts.dart';

final contractForAddressProvider =
    Provider.family<Contract?, ViteAddress>((ref, address) {
  final contract = knownContracts[address];
  return contract;
});
