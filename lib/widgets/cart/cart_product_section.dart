import 'package:flutter/material.dart';

import '../common/grid_view_widget.dart';
import 'cart_product_item.dart';

class CartProductSection extends StatelessWidget {
  const CartProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridViewWidget(
          crossAxisCount: 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          emptyText: 'No cart item available.',
          mainAxisSpacing: 15.0,
          childAspectRatio: 3.5,
          items: List<Widget>.generate(
            3,
            (index) => CartProductItem(index: index),
          ),
        ),
      ],
    );
  }
}
