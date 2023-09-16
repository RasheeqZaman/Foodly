import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/home_near_by_view_model.dart';
import '../../widgets/base_widget.dart';
import 'home_near_by_view_mobile.dart';

class HomeNearByView extends StatelessWidget {
  const HomeNearByView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeNearByViewModel>(
      viewModel: HomeNearByViewModel(),
      child: ScreenTypeLayout<HomeNearByViewModel>(
        mobile: OrientationLayout<HomeNearByViewModel>(
          portrait: (_) => const HomeNearByMobilePortrait(),
        ),
      ),
    );
  }
}
