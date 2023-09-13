import 'package:flutter/material.dart';

import '../common/grid_view_widget.dart';

class HomeNearByRestaurantsSection extends StatelessWidget {
  const HomeNearByRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Near by Restaurants'),
            Text('200+ Restaurants found near you'),
          ],
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
