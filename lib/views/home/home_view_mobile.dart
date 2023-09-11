import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/image_slider.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_bar_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const AppDrawerWidget(),
      body: Column(
        children: [
          ImageSlider(
            imageLinks: const [
              'https://picsum.photos/id/10/200/200',
              'https://picsum.photos/id/11/200/200',
              'https://picsum.photos/id/13/200/200',
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),

        ],
      ),
    );
  }
}
