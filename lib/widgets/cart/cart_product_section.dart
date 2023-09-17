import 'package:flutter/material.dart';

import '../common/grid_view_widget.dart';
import 'cart_delivery_section.dart';
import 'cart_product_item.dart';
import 'cart_total_section.dart';

class CartProductSection extends StatelessWidget {
  const CartProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        GridViewWidget(
          crossAxisCount: 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          emptyText: 'No cart item available.',
          mainAxisSpacing: 0.0,
          childAspectRatio: 5.0,
          items: List<Widget>.generate(
            10,
            (index) => CartProductItem(index: index),
          ),
        ),
        const CartDeliverySection(),
        const CartTotalSection(),
      ],
    );
  }
}
