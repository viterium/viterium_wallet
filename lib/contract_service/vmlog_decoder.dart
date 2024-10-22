import 'dart:typed_data';

import 'package:vite/vite.dart';

import '../vite_dart/vite_dart_types.dart';
import 'contract_service.dart';

mixin VmLogDecoder<T> on ContractService {
  T? decodeEvent(EventEntry event, {required List<Object> params});

  VmLogEvent<T> decodeVmLogMessage(VmLogMessage message) {
    final vmLog = message.vmLog;
    final eventEntry = abi.findEventByTopicsHash(message.vmLog.topics);
    if (eventEntry == null) {
      return VmLogEvent.unknown(message: message);
    }
    final params = abi.decodeEvent(vmLog.data ?? Uint8List(0), vmLog.topics);
    final event = decodeEvent(eventEntry, params: params);

    return switch (event) {
      null => VmLogEvent.unknown(message: message, event: eventEntry),
      _ => VmLogEvent.decoded(message: message, event: event)
    };
  }

  Future<String> onNewEvents({
    List<String> events = const [],
    required VmLogEventCallback<T> callback,
  }) {
    final topics = events.map(abi.topicForEvent).toList();
    final param = VmLogFilter(
      addressHeightRange: {contract.contractAddress: HeightRange.latest},
      topics: [topics],
    );
    return client.onNewVmLog(param, (result) {
      final messages = result.typedMessages(VmLogMessage.fromJson);
      callback(messages.map(decodeVmLogMessage).toList());
    });
  }

  Future<List<VmLogEvent<T>>> getEvents({
    required HeightRange heightRange,
    List<String> events = const [],
  }) async {
    final topics = events.map(abi.topicForEvent).toList();

    final messages = await getVmLogMessages(
      heightRange: heightRange,
      topics: [topics],
    );

    final result = messages.map(decodeVmLogMessage).toList();

    return result;
  }

  // Get VmLogs

  Future<List<VmLogMessage>> getVmLogMessages({
    required HeightRange heightRange,
    List<List<Hash>> topics = const [],
  }) async {
    if (heightRange.toHeight == BigInt.zero) {
      final latestBlock = await client.getLatestAccountBlock(contract.address);
      heightRange = heightRange.copyWith(toHeight: latestBlock.height);
    }

    final pageSize = BigInt.from(1000);
    final vmLogMessages = <VmLogMessage>[];

    for (BigInt i = heightRange.fromHeight;
        i < heightRange.toHeight;
        i += pageSize) {
      var toHeight = i + pageSize;
      if (toHeight > heightRange.toHeight) {
        toHeight = heightRange.toHeight;
      }
      final filter = VmLogFilter(
        addressHeightRange: {
          contract.contractAddress: HeightRange(
            fromHeight: i,
            toHeight: toHeight,
          ),
        },
        topics: topics,
        pageIndex: 0,
        pageSize: pageSize.toInt(),
      );
      final vmLogsPage = await client.getVmLogsByFilter(filter);
      vmLogMessages.addAll(vmLogsPage);
    }

    return vmLogMessages;
  }
}
