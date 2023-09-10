import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/splash_screen_view_model.dart';
import '../../widgets/base_widget.dart';
import 'splash_screen_view_mobile.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget<SplashScreenViewModel>(
      viewModel: SplashScreenViewModel(),
      child: ScreenTypeLayout<SplashScreenViewModel>(
        mobile: OrientationLayout<SplashScreenViewModel>(
          portrait: (_) => const SplashScreenMobilePortrait(),
        ),
      ),
    );
  }
}
