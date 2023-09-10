import 'package:flutter/material.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
