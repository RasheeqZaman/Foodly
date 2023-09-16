import 'package:flutter/material.dart';
import 'package:foodly/widgets/home/home_categories_section.dart';
import 'package:foodly/widgets/home/home_near_by_restaurants_section.dart';
import 'package:foodly/widgets/home/home_search_field.dart';
import 'package:foodly/widgets/home/home_slider.dart';
import 'package:foodly/widgets/home/home_top_restaurants_section.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Column(
      children: [
        const HomeSlider(),
        const HomeSearchField(),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: (model.isNearByTab)
                ? const HomeNearByRestaurantsSection()
                : const Column(
                    children: [
                      HomeCategoriesSection(),
                      HomeTopRestaurantsSection(),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
