import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/training_screen_view_model.dart';
import '../../widgets/base_widget.dart';
import 'training_screen_view_mobile.dart';

class TrainingScreenView extends StatelessWidget {
  const TrainingScreenView({
    Key? key,
    required this.animationController,
  }) : super(key: key);

  final AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return BaseWidget<TrainingScreenViewModel>(
      viewModel: TrainingScreenViewModel(
        animationController: animationController,
      ),
      child: ScreenTypeLayout<TrainingScreenViewModel>(
        mobile: OrientationLayout<TrainingScreenViewModel>(
          portrait: (_) => const TrainingScreenMobilePortrait(),
        ),
      ),
    );
  }
}
