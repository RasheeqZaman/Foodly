import 'package:flutter/material.dart';
import 'package:foodly/views/home/home_view.dart';
import 'package:foodly/widgets/common/app_bar_widget.dart';

import '../models/ui_models/main_model.dart';
import 'base_view_model.dart';

class MainViewModel extends BaseViewModel {
  int selectedIndex = 0;

  final List<MainModel> _tabs = [
    MainModel(
      appBar: () => const HomeAppBar(),
      tab: () => const HomeView(),
    ),
    MainModel(
      appBar: () => const HomeAppBar(),
      tab: () => const Center(child: Text('Near by')),
    ),
    MainModel(
      appBar: () => const CartAppBar(),
      tab: () => const Center(child: Text('Cart')),
    ),
    MainModel(
      appBar: () => const HomeAppBar(),
      tab: () => const Center(child: Text('Account')),
    ),
  ];

  PreferredSizeWidget get selectedAppBar =>
      (selectedIndex < 0 || selectedIndex >= _tabs.length)
          ? AppBar(title: const Text('Invalid Tab'))
          : _tabs[selectedIndex].appBar();

  Widget get selectedTab => (selectedIndex < 0 || selectedIndex >= _tabs.length)
      ? const Center(child: Text('Invalid Tab'))
      : _tabs[selectedIndex].tab();

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {}

  void onChangeBottomTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}