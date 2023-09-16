import 'package:flutter/material.dart';
import 'package:foodly/views/account/account_view.dart';

import '../../view_models/main_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';
import '../../widgets/common/bottom_bar_widget.dart';
import '../cart/cart_view.dart';
import '../home_category/home_category_view.dart';
import '../home_near_by/home_near_by_view.dart';

class MainMobilePortrait extends BaseModelWidget<MainViewModel> {
  const MainMobilePortrait({super.key});

  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Scaffold(
      appBar: model.selectedAppBar,
      drawer: const AppDrawerWidget(),
      bottomNavigationBar: BottomBarWidget(
        selectedIndex: model.selectedIndex,
        onTapItem: (int index) {
          model.onChangeBottomTab(index);
        },
      ),
      body: (model.tabController == null)
          ? const SizedBox.shrink()
          : TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: model.tabController,
              children: const [
                HomeCategoryView(),
                HomeNearByView(),
                CartView(),
                AccountView(),
              ],
            ),
    );
  }
}
