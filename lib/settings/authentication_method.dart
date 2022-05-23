import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'setting_item.dart';

enum AuthMethod { PIN, BIOMETRICS }

/// Represent the available authentication methods our app supports
class AuthenticationMethod extends SettingSelectionItem {
  final AuthMethod method;

  const AuthenticationMethod(this.method);

  String getDisplayName(WidgetRef ref) {
    final localization = ref.read(l10nProvider);
    switch (method) {
      case AuthMethod.BIOMETRICS:
        return localization.biometricsMethod;
      case AuthMethod.PIN:
        return localization.pinMethod;
    }
  }

  // For saving to shared prefs
  String getId() {
    return method.name;
  }
}
