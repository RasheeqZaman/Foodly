import 'package:flutter/material.dart';
import 'package:pranshakti/utils/constants.dart';

import '../../view_models/training_screen_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/training_screen/app_bar_ui.dart';
import '../../widgets/training_screen/main_list_view_ui.dart';

class TrainingScreenMobilePortrait
    extends BaseModelWidget<TrainingScreenViewModel> {
  const TrainingScreenMobilePortrait({super.key});

  @override
  Widget build(BuildContext context, TrainingScreenViewModel model) {
    return Container(
      color: Constants.colorWhite1,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            MainListViewUI(
              scrollController: model.scrollController,
              animationController: model.animationController,
              listViews: model.listViews,
            ),
            AppBarUI(
              animationController: model.animationController,
              topBarAnimation: model.topBarAnimation,
              topBarOpacity: model.topBarOpacity,
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }
}
