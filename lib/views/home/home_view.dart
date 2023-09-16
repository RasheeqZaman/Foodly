import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/home_view_model.dart';
import '../../widgets/base_widget.dart';
import 'home_view_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
    required this.isNearByTab,
  }) : super(key: key);

  final bool isNearByTab;

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(isNearByTab: isNearByTab),
      child: ScreenTypeLayout<HomeViewModel>(
        mobile: OrientationLayout<HomeViewModel>(
          portrait: (_) => const HomeMobilePortrait(),
        ),
      ),
    );
  }
}