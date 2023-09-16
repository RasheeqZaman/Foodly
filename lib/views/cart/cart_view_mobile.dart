import 'package:flutter/material.dart';

import '../../view_models/cart_view_model.dart';
import '../../widgets/base_model_widget.dart';

class CartMobilePortrait extends BaseModelWidget<CartViewModel> {
  const CartMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, CartViewModel model) {
    return const Center(child: Text('My Cart'));
  }
}
