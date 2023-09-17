import 'package:flutter/material.dart';

class CartTotalSection extends StatelessWidget {
  const CartTotalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Total:'),
        Text('\$15.00'),
      ],
    );
  }
}
