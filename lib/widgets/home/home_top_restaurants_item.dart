import 'package:flutter/material.dart';

import '../common/cached_image_widget.dart';

class HomeTopRestaurantsItem extends StatelessWidget {
  const HomeTopRestaurantsItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
