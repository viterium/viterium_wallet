import 'dart:typed_data';

import 'package:vite/vite.dart';

import '../contract_service/contract_service.dart';
import '../contract_service/vmlog_decoder.dart';
import 'dex_trade_types.dart';
import 'proto/dex_order.pb.dart' as dex_proto;

class DexTradeService extends ContractService with VmLogDecoder<DexTradeEvent> {
  DexTradeService({required super.client, required super.contract});

  @override
  DexTradeEvent? decodeEvent(EventEntry event, {required List<Object> params}) {
    return switch (event.name) {
      'newOrderEvent' => () {
          final buffer = params[0] as Uint8List;
          final orderInfo = dex_proto.NewOrderInfo.fromBuffer(buffer);
          final json = (orderInfo.toProto3Json() as Map<String, dynamic>);
          print(json);
          return DexTradeEvent.newOrder(
            orderInfo: NewOrderInfo.fromJson(json),
          );
        }(),
      'orderUpdateEvent' => DexTradeEvent.orderUpdate(
          data: params[0] as Uint8List,
        ),
      'txEvent' => DexTradeEvent.transaction(
          data: params[0] as Uint8List,
        ),
      _ => null,
    };
  }

  // @override
  // DexTradeEvent? decodeVmLog(VmLog vmLog) {
  //   final topic = vmLog.topics.first;

  //   final eventEntry = switch (topic.hex) {
  //     kTxEventTopic =>
  //       EventEntry(anonymous: false, name: 'txEvent', inputs: []),
  //     kOrderNewEventTopic =>
  //       EventEntry(anonymous: false, name: 'newOrderEvent', inputs: []),
  //     kOrderUpdateEventTopic =>
  //       EventEntry(anonymous: false, name: 'orderUpdateEvent', inputs: []),
  //     _ => null,
  //   };

  //   if (eventEntry == null) {
  //     return null;
  //   }

  //   final event = decodeEvent(eventEntry, params: [vmLog.data ?? Uint8List(0)]);

  //   return event;
  // }

  Future<Hash> cancelOrderByTransactionHash({
    required Address address,
    required AccountService accountService,
    required Hash sendHash,
  }) async {
    final data = abi.encodeFunction(
      'CancelOrderByTransactionHash',
      [sendHash],
    );

    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );

    return hash;
  }

  Future<Hash> cancelOrder({
    required Address address,
    required AccountService accountService,
    required Uint8List orderId,
  }) async {
    final data = abi.encodeFunction('CancelOrder', [orderId]);
    final hash = await accountService.callContract(
      address: address,
      contractAddress: contract.address,
      data: data,
    );
    return hash;
  }
}
