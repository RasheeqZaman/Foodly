import 'package:flutter/material.dart';

class MainListViewUI extends StatelessWidget {
  const MainListViewUI({
    super.key,
    required this.animationController,
    required this.scrollController,
    required this.listViews,
  });

  final ScrollController scrollController;
  final AnimationController? animationController;
  final List<Widget> listViews;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: EdgeInsets.only(
        top: AppBar().preferredSize.height +
            MediaQuery.of(context).padding.top +
            24,
        bottom: 62 + MediaQuery.of(context).padding.bottom,
      ),
      itemCount: listViews.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        animationController?.forward();
        return listViews[index];
      },
    );
  }
}
