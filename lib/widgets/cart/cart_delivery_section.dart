import 'package:flutter/material.dart';

class CartDeliverySection extends StatelessWidget {
  const CartDeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.directions_bike),
        Text('Delivery'),
        Text('\$0.00'),
      ],
    );
  }
}
