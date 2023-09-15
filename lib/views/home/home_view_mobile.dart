import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/bottom_bar_widget.dart';
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
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const AppDrawerWidget(),
      bottomNavigationBar: BottomBarWidget(
        selectedIndex: 0,
        onTapItem: (int index) {},
      ),
      body: const Column(
        children: [
          HomeSlider(),
          HomeSearchField(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  HomeCategoriesSection(),
                  HomeTopRestaurantsSection(),
                  HomeNearByRestaurantsSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
