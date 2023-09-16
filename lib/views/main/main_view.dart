import 'package:flutter/material.dart';
import 'package:foodly/view_models/main_view_model.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../widgets/base_widget.dart';
import 'main_view_mobile.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final int? args = ModalRoute.of(context)?.settings.arguments as int?;
    return BaseWidget<MainViewModel>(
      viewModel: MainViewModel(selectedIndex: args ?? 0),
      child: ScreenTypeLayout<MainViewModel>(
        mobile: OrientationLayout<MainViewModel>(
          portrait: (_) => const MainMobilePortrait(),
        ),
      ),
    );
  }
}
