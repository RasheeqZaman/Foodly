import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../common/grid_view_widget.dart';

class HomeNearByRestaurantsSection extends StatelessWidget {
  const HomeNearByRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
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
        ),
        GridViewWidget(
          crossAxisCount: 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          emptyText: 'No restaurants available.',
          items: List<Widget>.generate(
            3,
            (index) => Text('Restaurant $index'),
          ),
        ),
      ],
    );
  }
}
