import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/my_dairy_screen/my_dairy_screen_view.dart';
import 'package:pranshakti/views/training_screen/training_screen_view.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel implements TickerProvider {
  AnimationController? animationController;

  Widget tabBody = Container(
    color: Constants.colorWhite1,
  );

  @override
  void disposeViewModel() {
    animationController?.dispose();
  }

  @override
  void initViewModel(BuildContext context) async {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = MyDairyScreenView(
      animationController: animationController,
    );
    notifyListeners();
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }

  void onChangeBottomBarIndex(int index) {
    if (index < 0 || index >= 4) return;

    animationController?.reverse().then<dynamic>((data) {
      if (index == 0 || index == 2) {
        tabBody = MyDairyScreenView(
          animationController: animationController,
        );
      } else if (index == 1 || index == 3) {
        tabBody = TrainingScreenView(
          animationController: animationController,
        );
      }
      notifyListeners();
    });
  }
}
