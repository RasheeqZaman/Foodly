import 'package:flutter/material.dart';
import 'package:foodly/widgets/common/cached_image_widget.dart';
import 'package:foodly/widgets/common/grid_view_widget.dart';
import 'package:foodly/widgets/home/home_search_field.dart';
import 'package:foodly/widgets/home/home_slider.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeSlider(),
              const HomeSearchField(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories'),
                  Text('View All'),
                ],
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Restaurants'),
                  Text('View All'),
                ],
              ),
              SizedBox(
                height: 300.0,
                child: GridViewWidget(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
