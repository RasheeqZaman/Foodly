import 'package:flutter/material.dart';
import 'package:foodly/views/home/home_view.dart';

import '../../view_models/main_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_bar_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';
import '../../widgets/common/bottom_bar_widget.dart';

class MainMobilePortrait extends BaseModelWidget<MainViewModel> {
  const MainMobilePortrait({super.key});

  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const AppDrawerWidget(),
      bottomNavigationBar: BottomBarWidget(
        selectedIndex: model.selectedIndex,
        onTapItem: (int index) {
          model.onChangeBottomTab(index);
        },
      ),
      body: const HomeView(),
    );
  }
}
