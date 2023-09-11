import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/cached_image_widget.dart';
import 'package:foodly/widgets/common/grid_view_widget.dart';
import 'package:foodly/widgets/common/image_slider.dart';

import '../../view_models/home_view_model.dart';
import '../../widgets/base_model_widget.dart';
import '../../widgets/common/app_bar_widget.dart';
import '../../widgets/common/app_drawer/app_drawer_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  const HomeMobilePortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const AppDrawerWidget(),
      body: Column(
        children: [
          ImageSlider(
            imageLinks: const [
              'https://picsum.photos/id/10/200/200',
              'https://picsum.photos/id/11/200/200',
              'https://picsum.photos/id/13/200/200',
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          const Row(
            children: [
              Icon(Icons.search),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',
                ),
              ),
              Icon(Icons.filter_list_outlined),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Categories'),
              Text('View All'),
            ],
          ),
          GridViewWidget(
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top Restaurants'),
              Text('View All'),
            ],
          ),
          GridViewWidget(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            emptyText: 'No restaurants available.',
            items: List<Widget>.generate(
              3,
              (index) => Column(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        CachedImageWidget(
                          imageLink: 'https://picsum.photos/id/14/200/200',
                        ),
                        Column(
                          children: [
                            Text('4.9'),
                            Icon(Icons.star),
                          ],
                        ),
                        Row(
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
            ),
          ),
        ],
      ),
    );
  }
}
