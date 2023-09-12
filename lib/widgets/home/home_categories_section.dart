import 'package:flutter/material.dart';
import 'package:foodly/widgets/home/home_title_header.dart';

import '../common/grid_view_widget.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          const HomeTitleHeader(
            title: 'Categories',
          ),
          SizedBox(
            height: 200.0,
            child: GridViewWidget(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              emptyText: 'No categories available.',
              items: List<Widget>.generate(
                3,
                (index) => Column(
                  children: [
                    const Icon(Icons.fastfood_outlined),
                    Text('Category ${index + 1}'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
