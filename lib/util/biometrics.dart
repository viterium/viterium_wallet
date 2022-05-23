import 'dart:io';

import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';

class BiometricUtil {
  final Logger logger;

  const BiometricUtil(this.logger);

  Future<bool> hasBiometrics() async {
    if (!(Platform.isAndroid || Platform.isIOS)) {
      return false;
    }
    final localAuth = LocalAuthentication();
    bool canCheck = await localAuth.canCheckBiometrics;
    if (canCheck) {
      List<BiometricType> availableBiometrics =
          await localAuth.getAvailableBiometrics();
      availableBiometrics.forEach((type) {
        logger.i(type.toString());
        logger.i(
            "${type == BiometricType.face ? 'face' : type == BiometricType.iris ? 'iris' : type == BiometricType.fingerprint ? 'fingerprint' : 'unknown'}");
      });
      if (availableBiometrics.contains(BiometricType.face)) {
        return true;
      } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
        return true;
      }
    }
    return false;
  }

  Future<bool> authenticateWithBiometrics(String message) async {
    bool hasBiometricsEnrolled = await hasBiometrics();
    if (!hasBiometricsEnrolled) {
      throw Exception('Missing biometrics');
    }

    final localAuth = LocalAuthentication();
    return localAuth.authenticate(
      localizedReason: message,
      useErrorDialogs: false,
      biometricOnly: true,
    );
  }
}
