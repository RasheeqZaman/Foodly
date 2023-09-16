import 'package:flutter/material.dart';

import 'base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({
    required this.isNearByTab,
  });

  final bool isNearByTab;

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) async {}
}
