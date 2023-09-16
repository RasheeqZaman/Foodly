import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:foodly/views/home/home_view.dart';
import 'package:foodly/widgets/common/app_bar_widget.dart';

import '../models/ui_models/main_model.dart';
import 'base_view_model.dart';

class MainViewModel extends BaseViewModel implements TickerProvider {
  MainViewModel({
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex;

  TabController? _tabController;

  TabController? get tabController => _tabController;

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

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {
    _tabController = TabController(length: 4, vsync: this);
    notifyListeners();
  }

  void onChangeBottomTab(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}