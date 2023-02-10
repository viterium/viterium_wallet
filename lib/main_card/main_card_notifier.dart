import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_card_state.dart';

class MainCardNotifier extends StateNotifier<MainCardState> {
  MainCardNotifier() : super(MainCardState.showBalance()) {}

  void setNextState() {}
}
