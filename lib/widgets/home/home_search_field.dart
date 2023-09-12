import 'package:flutter/material.dart';
import 'package:foodly/utils/constants.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Constants.colorGrey,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Constants.colorGunmetal.withOpacity(0.5),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search food and restaurants',
                  hintStyle: Constants.textStyleBody.copyWith(
                    color: Constants.colorGunmetal.withOpacity(0.5),
                  ),
                ),
                style: Constants.textStyleBody,
              ),
            ),
          ),
          const Icon(Icons.filter_list_outlined),
        ],
      ),
    );
  }
}
