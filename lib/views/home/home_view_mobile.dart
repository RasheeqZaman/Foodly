import 'package:flutter/material.dart';
import 'package:foodly/widgets/custom/app_bar_widget.dart';
import 'package:foodly/widgets/custom/app_drawer/app_drawer_widget.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return const Scaffold(
      appBar: HomeAppBar(),
      drawer: AppDrawerWidget(),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
