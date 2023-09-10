import 'package:flutter/material.dart';

import '../utils/router_utils.dart';
import 'base_view_model.dart';

class SplashScreenViewModel extends BaseViewModel {
  bool showLogo = true;

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5));

    showLogo = false;
    notifyListeners();
  }

  void onPressSkip(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      MyRouterName.home.getName(),
      (route) => false,
    );
  }
}
