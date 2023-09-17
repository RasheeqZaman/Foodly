import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';

import '../common/cached_image_widget.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: Constants.colorWhite,
        border: Border(
          bottom: BorderSide(
            color: Constants.colorGrey.withOpacity(0.5),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
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
                  child: Text(
                    '${index + 1}',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Text(
                    'x',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Expanded(
                  flex: 6,
                  child: Text(
                    'Cheese Burger',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Text(
              '\$14.46',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
