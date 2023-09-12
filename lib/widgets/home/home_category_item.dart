import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Constants.colorGrey),
            ),
            child: const Icon(Icons.fastfood_outlined),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            'Category ${index + 1}',
          ),
        ),
      ],
    );
  }
}
