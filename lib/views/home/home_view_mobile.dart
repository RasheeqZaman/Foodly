import 'package:flutter/material.dart';
import 'package:pranshakti/widgets/home/bottom_bar.dart';

import '../../utils/constants.dart';
import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Container(
      color: Constants.colorWhite1,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            model.tabBody,
            BottomBar(
              onChangeIndex: (index) {
                model.onChangeBottomBarIndex(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
