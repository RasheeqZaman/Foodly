import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/home_category_view_model.dart';
import '../../widgets/base_widget.dart';
import 'home_category_view_mobile.dart';

class HomeCategoryView extends StatelessWidget {
  const HomeCategoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeCategoryViewModel>(
      viewModel: HomeCategoryViewModel(),
      child: ScreenTypeLayout<HomeCategoryViewModel>(
        mobile: OrientationLayout<HomeCategoryViewModel>(
          portrait: (_) => const HomeCategoryMobilePortrait(),
        ),
      ),
    );
  }
}
