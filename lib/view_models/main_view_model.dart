import 'package:flutter/material.dart';

import 'base_view_model.dart';

class MainViewModel extends BaseViewModel {
  int selectedIndex = 0;

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {}

  void onChangeBottomTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}