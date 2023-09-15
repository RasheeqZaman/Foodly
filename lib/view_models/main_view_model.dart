import 'package:flutter/material.dart';
import 'package:foodly/views/home/home_view.dart';

import 'base_view_model.dart';

class MainViewModel extends BaseViewModel {
  int selectedIndex = 0;

  final List<Widget Function()> _tabs = [
    () => const HomeView(),
    () => const Center(child: Text('Near by')),
    () => const Center(child: Text('Cart')),
    () => const Center(child: Text('Account')),
  ];

  Widget get selectedTab => (selectedIndex < 0 || selectedIndex >= _tabs.length)
      ? const Center(child: Text('Invalid Tab'))
      : _tabs[selectedIndex]();

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {}

  void onChangeBottomTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}