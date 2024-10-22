import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vite_dart_types.freezed.dart';

@freezed
class VmLogEvent<T> with _$VmLogEvent<T> {
  const VmLogEvent._();
  const factory VmLogEvent.decoded({
    required VmLogMessage message,
    required T event,
  }) = _VmLogEventDecoded<T>;

  const factory VmLogEvent.unknown({
    required VmLogMessage message,
    EventEntry? event,
  }) = _VmLogEventUnknown;

  VmLog get vmLog => message.vmLog;
}

typedef VmLogEventCallback<T> = void Function(List<VmLogEvent<T>> events);
