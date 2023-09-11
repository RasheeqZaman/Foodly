import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.items,
    required this.emptyText,
    this.scrollDirection = Axis.vertical,
    this.crossAxisCount = 2,
    this.shrinkWrap = false,
    this.physics,
    this.childAspectRatio = 1.0,
    this.mainAxisSpacing = 5.0,
    this.childAxisSpacing = 5.0,
    this.scrollController,
  }) : super(key: key);

  final List<Widget> items;
  final String emptyText;
  final Axis scrollDirection;
  final int crossAxisCount;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double childAxisSpacing;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return (items.isEmpty)
        ? Center(
            child: Text(
              emptyText,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          )
        : Container(
            padding: const EdgeInsets.all(5.0),
            child: GridView.builder(
              controller: scrollController,
              itemCount: items.length,
              scrollDirection: scrollDirection,
              physics: physics,
              shrinkWrap: shrinkWrap,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: mainAxisSpacing,
                crossAxisSpacing: childAxisSpacing,
                childAspectRatio: childAspectRatio,
              ),
              itemBuilder: (BuildContext context, int index) {
                return items[index];
              },
            ),
          );
  }
}
