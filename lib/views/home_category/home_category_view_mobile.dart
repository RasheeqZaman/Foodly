import 'package:flutter/material.dart';
import 'package:foodly/views/home/home_view.dart';
import 'package:foodly/widgets/home/home_categories_section.dart';
import 'package:foodly/widgets/home/home_top_restaurants_section.dart';

import '../../view_models/home_category_view_model.dart';
import '../../widgets/base_model_widget.dart';

class HomeCategoryMobilePortrait
    extends BaseModelWidget<HomeCategoryViewModel> {
  const HomeCategoryMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeCategoryViewModel model) {
    return const Column(
      children: [
        HomeView(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
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
