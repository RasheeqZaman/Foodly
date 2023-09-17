import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
    return Slidable(
      endActionPane: ActionPane(
        motion: const BehindMotion(),
        extentRatio: 0.2,
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Constants.colorGrey.withOpacity(0.2),
            foregroundColor: Constants.colorGunmetal.withOpacity(0.7),
            icon: Icons.delete,
          ),
        ],
      ),
      child: Container(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        '${index + 1}',
                        style: Constants.textStyleBody.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'x',
                        style: Constants.textStyleBody.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 16,
                      child: Text(
                        'Cheese Burger',
                        style: Constants.textStyleBody.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '\$14.46',
                style: Constants.textStyleBody.copyWith(
                  color: Constants.colorGunmetal.withOpacity(0.5),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
