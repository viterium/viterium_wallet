import 'package:vite/vite.dart';

abstract class ContractService {
  final ViteClient client;
  final Contract contract;

  ContractAbi get abi => contract.contractAbi;

  const ContractService({required this.client, required this.contract});
}
