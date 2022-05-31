import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account({
    required int index,
    required String name,
    required Address address,
  }) = _Account;

  ViteAddress get viteAddress => address.viteAddress;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  String getShortName() {
    List<String> splitName = name.split(' ');
    if (splitName.length > 1 &&
        splitName[0].length >= 1 &&
        splitName[1].length >= 1) {
      String firstChar = splitName[0].substring(0, 1);
      String secondPart = splitName[1].substring(0, 1);
      if ((int.tryParse(splitName[1]) ?? 0) >= 10) {
        secondPart = splitName[1].substring(0, 2);
      }
      return firstChar + secondPart;
    } else if (name.length > 2) {
      return name.substring(0, 2);
    }
    return name;
  }
}
