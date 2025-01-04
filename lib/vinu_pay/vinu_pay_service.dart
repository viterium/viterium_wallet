import 'dart:typed_data';

import 'package:vite/vite.dart';

import '../contract_service/contract_query.dart';
import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'vinu_pay_types.dart';

class VinuPayService extends ContractService
    with ContractQuery, VmLogDecoder<VinuPayEvent> {
  const VinuPayService({required super.client, required super.contract});

  // Events

  @override
  VinuPayEvent? decodeEvent(EventEntry event, {required List<Object> params}) {
    return switch (event.name) {
      'InvoicePaid' => VinuPayEvent.invoicePaid(
          txId: params[0] as String,
          merchantAddress: params[1] as Address,
          payerAddress: params[2] as Address,
          amount: params[3] as BigInt,
        ),
      'NameTransferred' => VinuPayEvent.nameTransferred(
          nameId: params[0] as BigInt,
          oldOwnerAddress: params[1] as Address,
          newOwnerAddress: params[2] as Address,
        ),
      'NewInvoice' => VinuPayEvent.newInvoice(
          txId: params[0] as String,
          merchantAddress: params[1] as Address,
        ),
      'RoleHolderChanged' => VinuPayEvent.roleHolderChanged(
          role: params[0] as Uint8List,
          previousHolder: params[1] as Address,
          newHolder: params[2] as Address,
        ),
      'TreasuryWithdrawal' => VinuPayEvent.treasuryWithdrawal(
          to: params[0] as Address,
          amount: params[1] as BigInt,
        ),
      _ => null,
    };
  }

  // OffChain

  Future<BigInt> baseNameFee() async {
    final result = await query('BASE_NAME_FEE');
    return result.first as BigInt;
  }

  Future<Token> contractToken() async {
    final result = await query('CONTRACT_TOKEN');
    return result.first as Token;
  }

  Future<bool> checkName({required String name}) async {
    final result = await query('_checkName', [name]);
    return result.first as bool;
  }

  Future<VinuPayName> getName({
    required String name,
  }) async {
    final result = await query('getName', [name]);
    final list = result.first as List<Object>;
    return VinuPayName.fromList(list);
  }

  Future<VinuPayName> getNameById({
    required BigInt nameId,
  }) async {
    final result = await query('getNameById', [nameId]);
    final list = result.first as List<Object>;
    return VinuPayName.fromList(list);
  }

  Future<BigInt> getNameCount() async {
    final result = await query('getNameCount');
    return result.first as BigInt;
  }

  Future<List<BigInt>> getNamesByAddress({
    required Address nameHolderAddress,
  }) async {
    final result = await query('getNamesByAddress', [nameHolderAddress]);
    return result.first as List<BigInt>;
  }

  Future<Address> getRoleHolder({
    required Uint8List roleId,
  }) async {
    final result = await query('getRoleHolder', [roleId]);
    return result.first as Address;
  }

  Future<VinuPayTransaction> getTransaction({
    required String txId,
  }) async {
    final result = await query('getTransaction', [txId]);
    final list = result.first as List<Object>;
    return VinuPayTransaction.fromList(list);
  }

  Future<BigInt> getTransactionCount() async {
    final result = await query('getTransactionCount');
    return result.first as BigInt;
  }

  Future<BigInt> treasuryBalance() async {
    final result = await query('treasuryBalance');
    return result.first as BigInt;
  }

  // OnChain

  Future<Hash> changeNameTrustStatus({
    required Address address,
    required AccountService accountService,
    required BigInt nameId,
    required bool shouldTrust,
  }) {
    final function = 'changeNameTrustStatus';
    final data = abi.encodeFunction(function, [nameId, shouldTrust]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> createInvoice({
    required Address address,
    required AccountService accountService,
    required Address destination,
    required BigInt amount,
    required Token txToken,
    required BigInt nameId,
    required BigInt expireBlocks,
  }) {
    final function = 'createInvoice';
    final data = abi.encodeFunction(
      function,
      [destination, amount, txToken, nameId, expireBlocks],
    );
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> mintName({
    required Address address,
    required AccountService accountService,
    required String name,
    required Amount amount,
  }) {
    final function = 'mintName';
    final data = abi.encodeFunction(function, [name]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );
  }

  Future<Hash> renounceRole({
    required Address address,
    required AccountService accountService,
    required Uint8List roleId,
  }) {
    final function = 'renounceRole';
    final data = abi.encodeFunction(function, [roleId]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> transferName({
    required Address address,
    required AccountService accountService,
    required BigInt nameId,
    required Address newOwner,
    required BigInt indexOfArray,
  }) {
    final function = 'transferName';
    final data = abi.encodeFunction(function, [nameId, newOwner, indexOfArray]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> transferRole({
    required Address address,
    required AccountService accountService,
    required Uint8List roleId,
    required Address newRoleHolder,
  }) {
    final function = 'transferRole';
    final data = abi.encodeFunction(function, [roleId, newRoleHolder]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> withdrawFromTreasury({
    required Address address,
    required AccountService accountService,
    required BigInt amount,
    required Address destination,
  }) {
    final function = 'withdrawFromTreasury';
    final data = abi.encodeFunction(function, [amount, destination]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }
}
