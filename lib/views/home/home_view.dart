import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/home_view_model.dart';
import '../../widgets/base_widget.dart';
import 'home_view_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      child: ScreenTypeLayout<HomeViewModel>(
        mobile: OrientationLayout<HomeViewModel>(
          portrait: (_) => const HomeMobilePortrait(),
        ),
      ),
    );
  }
}