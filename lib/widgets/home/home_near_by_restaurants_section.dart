import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/cached_image_widget.dart';

import '../../utils/constants.dart';
import '../common/grid_view_widget.dart';

class HomeNearByRestaurantsSection extends StatelessWidget {
  const HomeNearByRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeNearByRestaurantsTitle(),
        GridViewWidget(
          crossAxisCount: 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          emptyText: 'No restaurants available.',
          mainAxisSpacing: 15.0,
          childAspectRatio: 3.5,
          items: List<Widget>.generate(
            7,
            (index) => HomeNearByRestaurantsItem(index: index),
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class HomeNearByRestaurantsTitle extends StatelessWidget {
  const HomeNearByRestaurantsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Near by Restaurants',
            style: Constants.textStyleTitle,
          ),
          const SizedBox(height: 2.0),
          Row(
            children: [
              Text(
                '200+',
                style: Constants.textStyleBody
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 2.0),
              Text(
                'Restaurants found near you',
                style: Constants.textStyleBody.copyWith(
                  color: Constants.colorGunmetal.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeNearByRestaurantsItem extends StatelessWidget {
  const HomeNearByRestaurantsItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 25,
            child: CachedImageWidget(
              imageLink: 'https://picsum.photos/id/14/200/200',
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Expanded(
            flex: 75,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Restaurant ${index + 1}',
                        style: Constants.textStyleTitle,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Chinese . Coffee . Fast food',
                        style: Constants.textStyleBody.copyWith(
                          color: Constants.colorGunmetal.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15.0,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            '4.5',
                            style: Constants.textStyleBody.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25.0),
                      Row(
                        children: [
                          const Icon(Icons.drive_eta, size: 15.0),
                          const SizedBox(width: 5.0),
                          Text(
                            'Delivery',
                            style: Constants.textStyleBody.copyWith(
                              color: Constants.colorGunmetal.withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            '\$12',
                            style: Constants.textStyleBody.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
