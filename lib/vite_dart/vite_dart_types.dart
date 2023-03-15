import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vite_dart_types.freezed.dart';

@freezed
class VmLogEvent<T> with _$VmLogEvent<T> {
  const factory VmLogEvent.decoded({
    required VmLog vmLog,
    required T event,
  }) = _VmLogEventDecoded<T>;

  const factory VmLogEvent.unknown({
    required VmLog vmLog,
    EventEntry? event,
  }) = _VmLogEventUnknown;
}
