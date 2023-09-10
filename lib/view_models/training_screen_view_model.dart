import 'package:flutter/material.dart';

import '../widgets/common/title_view.dart';
import '../widgets/training_screen/area_list_view.dart';
import '../widgets/training_screen/running_view.dart';
import '../widgets/training_screen/workout_view.dart';
import 'base_view_model.dart';

class TrainingScreenViewModel extends BaseViewModel {
  final AnimationController? animationController;
  Animation<double>? topBarAnimation;
  double topBarOpacity = 0.0;
  final ScrollController scrollController = ScrollController();
  List<Widget> listViews = <Widget>[];

  TrainingScreenViewModel({
    required this.animationController,
  });

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn),
      ),
    );
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          topBarOpacity = 1.0;
          notifyListeners();
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          topBarOpacity = scrollController.offset / 24;
          notifyListeners();
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          topBarOpacity = 0.0;
          notifyListeners();
        }
      }
    });
    notifyListeners();
  }

  void addAllListData() {
    const int count = 5;

    listViews.add(
      TitleView(
        titleTxt: 'Your program',
        subTxt: 'Details',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 0, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );

    listViews.add(
      WorkoutView(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 2, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );
    listViews.add(
      RunningView(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 3, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );

    listViews.add(
      TitleView(
        titleTxt: 'Area of focus',
        subTxt: 'more',
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 4, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );

    listViews.add(
      AreaListView(
        mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 5, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        mainScreenAnimationController: animationController!,
      ),
    );
  }
}