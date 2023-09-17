import 'package:flutter/material.dart';

import '../../view_models/cart_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/cart/cart_checkout_section.dart';
import '../../widgets/cart/cart_product_section.dart';

class CartMobilePortrait extends BaseModelWidget<CartViewModel> {
  const CartMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, CartViewModel model) {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: CartProductSection(),
          ),
        ),
        CartCheckoutSection(),
      ],
    );
  }
}
