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
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Constants.colorGunmetal.withOpacity(0.1),
            offset: const Offset(1.0, 1.0),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset.zero,
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
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
                CachedImageWidget(
                  imageLink: 'https://picsum.photos/id/16/200/200',
                  height: 40.0,
                  width: 40.0,
                  boxShape: BoxShape.circle,
                  boxBorder: Border.all(color: Constants.colorWhite),
                  padding: const EdgeInsets.all(10.0),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 13,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Restaurant ${index + 1}',
                          style: Constants.textStyleHeader,
                        ),
                        const SizedBox(height: 1.0),
                        Text(
                          'Chinese, Italian',
                          style: Constants.textStyleBody.copyWith(
                            color: Constants.colorGunmetal.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  const Expanded(
                    flex: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.wallet, size: 15.0),
                        SizedBox(width: 10.0),
                        Text('\$35-\$65'),
                      ],
                    ),
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
