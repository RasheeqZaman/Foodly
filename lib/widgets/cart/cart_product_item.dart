import 'package:flutter/material.dart';

import '../common/cached_image_widget.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CachedImageWidget(
            imageLink: 'https://picsum.photos/id/14/200/200',
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Expanded(
          flex: 6,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text('${index+1}'),
              ),
              const Expanded(
                flex: 2,
                child: Text('x'),
              ),
              const Expanded(
                flex: 6,
                child: Text('Cheese Burger'),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 2,
          child: Text('\$14.46'),
        ),
      ],
    );
  }
}
