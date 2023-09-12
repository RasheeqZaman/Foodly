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
            flex: 7,
            child: Stack(
              children: [
                const CachedImageWidget(
                  imageLink: 'https://picsum.photos/id/14/500/200',
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
                        SizedBox(height: 2.0),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Constants.colorWhite.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                      ),
                    ),
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.drive_eta,
                          size: 15.0,
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          '25-30',
                          style: Constants.textStyleBody.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('min'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
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
