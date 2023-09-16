import 'package:flutter/material.dart';

import '../../view_models/main_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';
import '../../widgets/common/bottom_bar_widget.dart';
import '../home/home_view.dart';

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
              controller: model.tabController,
              children: const [
                HomeView(isNearByTab: false),
                HomeView(isNearByTab: true),
                Center(child: Text('Cart')),
                Center(child: Text('Account')),
              ],
            ),
    );
  }
}
