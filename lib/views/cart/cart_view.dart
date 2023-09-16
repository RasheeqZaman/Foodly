import 'package:flutter/material.dart';

import '../../responsive/orientation_layout.dart';
import '../../responsive/screen_type_layout.dart';
import '../../view_models/cart_view_model.dart';
import '../../widgets/base_widget.dart';
import 'cart_view_mobile.dart';

class CartView extends StatelessWidget {
  const CartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<CartViewModel>(
      viewModel: CartViewModel(),
      child: ScreenTypeLayout<CartViewModel>(
        mobile: OrientationLayout<CartViewModel>(
          portrait: (_) => const CartMobilePortrait(),
        ),
      ),
    );
  }
}
