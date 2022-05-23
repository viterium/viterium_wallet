import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/vite_util.dart';
import 'intro_types.dart';

String _computeSeed(String mnemonic) {
  return ViteUtil.seedFromMnemonic(mnemonic);
}

class IntroDataNotifier extends StateNotifier<IntroData> {
  IntroDataNotifier() : super(const IntroData());

  bool get isSeedGenerated => state.generated;

  void complete() {
    state = state.copyWith(completed: true);
  }

  void unComplete() {
    state = state.copyWith(completed: false);
  }

  void generateMnemonic({int strength = 128}) {
    final mnemonic = ViteUtil.generateMnemonic(strength: strength);
    setMnemonic(mnemonic, generated: true);
  }

  void setMnemonic(String mnemonic, {bool generated = false}) {
    final seed = compute(_computeSeed, mnemonic, debugLabel: 'ComputeSeed');
    state = state.copyWith(
      mnemonic: mnemonic,
      generated: generated,
      seed: seed,
    );
  }

  void setSeed(String seed) {
    state = state.copyWith(
      userSeed: seed,
      seed: Future.value(seed),
    );
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setPin(String pin) {
    state = state.copyWith(pin: pin);
  }

  void clear() {
    state = const IntroData();
  }

  void restore(IntroData introData) {
    state = introData;
  }
}
