import 'dart:typed_data';

import 'package:vite/vite.dart';

import '../vite_dart/vite_dart_types.dart';
import 'contract_service.dart';

mixin VmLogDecoder<T> on ContractService {
  T? decodeEvent(EventEntry event, {required List<Object> params});

  VmLogEvent<T> decodeVmLog(VmLog vmLog) {
    final eventEntry = abi.findEventByTopicsHash(vmLog.topics);
    if (eventEntry == null) {
      return VmLogEvent.unknown(vmLog: vmLog);
    }
    final params = abi.decodeEvent(vmLog.data ?? Uint8List(0), vmLog.topics);
    final event = decodeEvent(eventEntry, params: params);

    return switch (event) {
      null => VmLogEvent.unknown(vmLog: vmLog, event: eventEntry),
      _ => VmLogEvent.decoded(vmLog: vmLog, event: event)
    };
  }
}
