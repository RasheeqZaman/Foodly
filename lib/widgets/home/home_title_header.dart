import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeTitleHeader extends StatelessWidget {
  const HomeTitleHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Constants.textStyleTitle,
          ),
          Text(
            'View All',
            style: Constants.textStyleBody.copyWith(
              color: Constants.colorGunmetal.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
