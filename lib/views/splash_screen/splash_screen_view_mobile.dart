import 'package:flutter/material.dart';

import '../../view_models/splash_screen_view_model.dart';
import '../../widgets/base_model_widget.dart';

class SplashScreenMobilePortrait
    extends BaseModelWidget<SplashScreenViewModel> {
  const SplashScreenMobilePortrait({super.key});

  @override
  Widget build(BuildContext context, SplashScreenViewModel model) {
    return const Scaffold(
      body: Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
