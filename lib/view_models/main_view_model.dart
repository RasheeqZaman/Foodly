import 'package:flutter/material.dart';
import 'package:foodly/views/home/home_view.dart';
import 'package:foodly/widgets/common/app_bar_widget.dart';

import '../models/ui_models/main_model.dart';
import 'base_view_model.dart';

class MainViewModel extends BaseViewModel {
  MainViewModel({
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex;

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  final List<MainModel> _tabs = [
    MainModel(
      appBar: () => const HomeAppBar(),
      tab: const HomeView(isNearByTab: false),
    ),
    MainModel(
      appBar: () => const HomeAppBar(),
      tab: const HomeView(isNearByTab: true),
    ),
    MainModel(
      appBar: () => const CartAppBar(),
      tab: const Center(child: Text('Cart')),
    ),
    MainModel(
      appBar: () => const AccountAppBar(),
      tab: const Center(child: Text('Account')),
    ),
  ];

  PreferredSizeWidget get selectedAppBar =>
      (_selectedIndex < 0 || _selectedIndex >= _tabs.length)
          ? AppBar(title: const Text('Invalid Tab'))
          : _tabs[_selectedIndex].appBar();

  Widget get selectedTab =>
      (_selectedIndex < 0 || _selectedIndex >= _tabs.length)
          ? const Center(child: Text('Invalid Tab'))
          : _tabs[_selectedIndex].tab;

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {}

  void onChangeBottomTab(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}