import 'dart:typed_data';

import 'package:vite/vite.dart';

import '../contract_service/contract_offchain.dart';
import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'vitens_types.dart';

const kVitensEventMint = 'Mint';
const kVitensEventTransfer = 'Transfer';
const kVitensEventChange = 'Change';

class VitensService extends ContractService
    with ContractOffchain, VmLogDecoder<VitensEvent> {
  VitensService({required super.client, required super.contract});

  // Events

  @override
  VitensEvent? decodeEvent(
    EventEntry event, {
    required List<Object> params,
  }) {
    return switch (event.name) {
      kVitensEventMint => VitensEvent.mint(
          minter: params[0] as Address,
          name: params[1] as String,
        ),
      kVitensEventTransfer => VitensEvent.transfer(
          from: params[0] as Address,
          to: params[1] as Address,
          name: params[2] as String,
        ),
      kVitensEventChange => VitensEvent.change(
          name: params[0] as String,
        ),
      _ => null,
    };
  }

  // OffChain

  Future<BigInt> getTotalNamesOfAddress({required Address address}) async {
    final result =
        await callOffchainMethod('getTotalNamesOfAddress', [address]);
    return result.first as BigInt;
  }

  Future<String> getNameBySlot({
    required Address address,
    required int slot,
  }) async {
    final result = await callOffchainMethod('getNameBySlot', [address, slot]);
    return result.first as String;
  }

  Future<BigInt> getTotalMints() async {
    final result = await callOffchainMethod('getTotalMints');
    return result.first as BigInt;
  }

  Future<Address> resolveAddress({
    required String vnsAddress,
  }) async {
    final result = await callOffchainMethod('resolveAddress', [vnsAddress]);
    return result.first as Address;
  }

  Future<List<Uint8List>> getTagsOfNameBySlot({
    required Address address,
    required int slotId,
  }) async {
    final result =
        await callOffchainMethod('getTagsOfNameBySlot', [address, slotId]);
    return (result.first as List<Object>).cast<Uint8List>();
  }

  // OnChain

  Future<Hash> transfer({
    required Address address,
    required AccountService accountService,
    required Address recipient,
    required int slotId,
    required Amount amount,
  }) {
    final data = abi.encodeFunction('transfer', [recipient, slotId]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );
  }

  Future<Hash> treasuryChangeOwner({
    required Address address,
    required AccountService accountService,
    required Address newOwner,
  }) {
    final data = abi.encodeFunction('treasury_changeOwner', [newOwner]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }

  Future<Hash> mint({
    required Address address,
    required AccountService accountService,
    required String name,
    required Amount amount,
  }) {
    final data = abi.encodeFunction('mint', [name]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );
  }

  Future<Hash> editTag({
    required Address address,
    required AccountService accountService,
    required int slotId,
    required int tagId,
    required String tagData,
    required Amount amount,
  }) {
    final data = abi.encodeFunction('editTag', [slotId, tagId, tagData]);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      amount: amount.raw,
      token: amount.token,
      data: data,
    );
  }

  Future<Hash> treasuryWithdrawal({
    required Address address,
    required AccountService accountService,
  }) {
    final data = abi.encodeFunction('treasury_Withdrawal', []);
    return accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
  }
}
