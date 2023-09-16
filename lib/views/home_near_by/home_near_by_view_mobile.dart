import 'package:flutter/material.dart';
import 'package:foodly/widgets/home/home_near_by_restaurants_section.dart';

import '../../view_models/home_near_by_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../home/home_view.dart';

class HomeNearByMobilePortrait extends BaseModelWidget<HomeNearByViewModel> {
  const HomeNearByMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeNearByViewModel model) {
    return const Column(
      children: [
        HomeView(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: HomeNearByRestaurantsSection(),
          ),
        ),
      ],
    );
  }
}
