import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:foodly/widgets/common/app_bar_widget.dart';

import '../models/ui_models/main_model.dart';
import 'base_view_model.dart';

class MainViewModel extends BaseViewModel implements TickerProvider {
  MainViewModel({
    required int selectedIndex,
  });

  TabController? _tabController;

  TabController? get tabController => _tabController;

  int get selectedIndex => _tabController?.index ?? 0;

  final List<MainModel> _tabs = [
    MainModel(
      appBar: () => const HomeAppBar(),
    ),
    MainModel(
      appBar: () => const HomeAppBar(),
    ),
    MainModel(
      appBar: () => const CartAppBar(),
    ),
    MainModel(
      appBar: () => const AccountAppBar(),
    ),
  ];

  PreferredSizeWidget get selectedAppBar =>
      (selectedIndex < 0 || selectedIndex >= _tabs.length)
          ? AppBar(title: const Text('Invalid Tab'))
          : _tabs[selectedIndex].appBar();

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {
    _tabController = TabController(length: 4, vsync: this);
    notifyListeners();
  }

  void onChangeBottomTab(int index) {
    _tabController?.animateTo(index);
    notifyListeners();
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}