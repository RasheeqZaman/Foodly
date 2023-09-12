import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';
import 'package:foodly/widgets/home/home_title_header.dart';

import '../common/grid_view_widget.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          const HomeTitleHeader(
            title: 'Categories',
          ),
          SizedBox(
            height: 150.0,
            child: GridViewWidget(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              childAspectRatio: 1.6,
              emptyText: 'No categories available.',
              items: List<Widget>.generate(
                5,
                (index) => Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Constants.colorGrey),
                        ),
                        child: const Icon(Icons.fastfood_outlined),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Category ${index + 1}',
                      ),
                    ),
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
