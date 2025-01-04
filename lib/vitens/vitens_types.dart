import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vitens_types.freezed.dart';
part 'vitens_types.g.dart';

@freezed
class VitensEvent with _$VitensEvent {
  const factory VitensEvent.mint({
    required Address minter,
    required String name,
  }) = _VitensEventMint;

  const factory VitensEvent.transfer({
    required Address from,
    required Address to,
    required String name,
  }) = _VitensEventTransfer;

  const factory VitensEvent.change({
    required String name,
  }) = _VitensEventChange;
}

@freezed
class VitensState with _$VitensState {
  const factory VitensState({
    @Default({}) Map<String, String> names,
    @Default(0) int height,
  }) = _VitensState;

  factory VitensState.fromJson(Map<String, dynamic> json) =>
      _$VitensStateFromJson(json);
}
