import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CartDeliverySection extends StatelessWidget {
  const CartDeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      decoration: const BoxDecoration(
        color: Constants.colorWhite,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Constants.colorGrey.withOpacity(0.5)),
              child: const Icon(
                Icons.directions_bike,
                size: 18.0,
                color: Constants.colorGunmetal,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            flex: 12,
            child: Text(
              'Delivery',
              style: Constants.textStyleBody.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '\$0.00',
              style: Constants.textStyleBody.copyWith(
                color: Constants.colorGunmetal.withOpacity(0.5),
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
