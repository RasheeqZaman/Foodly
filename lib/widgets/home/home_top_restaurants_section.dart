import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/grid_view_widget.dart';
import 'package:foodly/widgets/home/home_title_header.dart';
import 'package:foodly/widgets/home/home_top_restaurants_item.dart';

class HomeTopRestaurantsSection extends StatelessWidget {
  const HomeTopRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTitleHeader(title: 'Top Restaurants'),
        SizedBox(
          height: 230.0,
          child: GridViewWidget(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            childAspectRatio: 0.7,
            emptyText: 'No restaurants available.',
            items: List<Widget>.generate(
              3,
              (index) => HomeTopRestaurantsItem(index: index),
            ),
          ),
        ),
      ],
    );
  }
}
