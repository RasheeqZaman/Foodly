import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';

class CartCheckoutSection extends StatelessWidget {
  const CartCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Constants.colorRajah,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('20-25 min'),
          Text('Checkout'),
        ],
      ),
    );
  }
}
