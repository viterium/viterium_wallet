import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:viterium_wallet/util/sharedprefsutil.dart';

import '../settings/available_language.dart';

class LanguageNotifier extends StateNotifier<LanguageSetting> {
  final SharedPrefsUtil sharedPrefsUtil;
  LanguageNotifier(this.sharedPrefsUtil) : super(sharedPrefsUtil.getLanguage());

  Future<void> updateLanguage(LanguageSetting language) {
    state = language;
    return sharedPrefsUtil.setLanguage(language);
  }
}
