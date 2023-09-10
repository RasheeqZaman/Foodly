import 'package:flutter/material.dart';
import 'package:pranshakti/view_models/my_dairy_screen_view_model.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../widgets/base_widget.dart';
import 'my_dairy_screen_view_mobile.dart';

class MyDairyScreenView extends StatelessWidget {
  const MyDairyScreenView({
    Key? key,
    required this.animationController,
  }) : super(key: key);

  final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return BaseWidget<MyDairyScreenViewModel>(
      viewModel: MyDairyScreenViewModel(
        animationController: animationController,
      ),
      child: ScreenTypeLayout<MyDairyScreenViewModel>(
        mobile: OrientationLayout<MyDairyScreenViewModel>(
          portrait: (_) => const MyDairyScreenMobilePortrait(),
        ),
      ),
    );
  }
}