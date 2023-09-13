import 'package:flutter/material.dart';
import 'package:foodly/widgets/home/home_categories_section.dart';
import 'package:foodly/widgets/home/home_near_by_restaurants_section.dart';
import 'package:foodly/widgets/home/home_search_field.dart';
import 'package:foodly/widgets/home/home_slider.dart';
import 'package:foodly/widgets/home/home_top_restaurants_section.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_bar_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return const Scaffold(
      appBar: HomeAppBar(),
      drawer: AppDrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              HomeSlider(),
              HomeSearchField(),
              HomeCategoriesSection(),
              HomeTopRestaurantsSection(),
              HomeNearByRestaurantsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
