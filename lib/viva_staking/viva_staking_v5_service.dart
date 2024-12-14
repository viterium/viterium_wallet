import '../contract_service/contract_query.dart';
import 'viva_staking_service.dart';

class VivaStakingV5Service extends VivaStakingService with ContractQuery {
  VivaStakingV5Service({required super.client, required super.contract});

  @override
  Future<List<Object>> callOffchainMethod(
    String method, [
    List<Object> args = const [],
  ]) {
    return query(method, args);
  }
}
