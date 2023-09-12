import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';

import '../common/cached_image_widget.dart';

class HomeTopRestaurantsItem extends StatelessWidget {
  const HomeTopRestaurantsItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(15.0)),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                const CachedImageWidget(
                  imageLink: 'https://picsum.photos/id/14/200/200',
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Constants.colorWhite,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '4.9',
                          style: Constants.textStyleHeader,
                        ),
                        SizedBox(height: 5.0),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.drive_eta),
                    Text('25'),
                    Text('-'),
                    Text('30'),
                    Text('min'),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Text('Restaurant ${index + 1}'),
                      const Text('Chinese, Italian'),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      Text('\$35'),
                      Text('-'),
                      Text('\$65'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
