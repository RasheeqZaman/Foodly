import 'package:flutter/material.dart';

import '../models/meals_list_model.dart';
import '../repositories/online_repo.dart';
import '../repositories/repository.dart';
import '../utils/locator_utils.dart';
import '../widgets/common/title_view.dart';
import '../widgets/my_dairy_screen/body_measurement.dart';
import '../widgets/my_dairy_screen/meals_list_view.dart';
import '../widgets/my_dairy_screen/weight_target_view.dart';
import 'base_view_model.dart';

class MyDairyScreenViewModel extends BaseViewModel {
  final Repository _repository = LocatorUtils.locator<Repository>();

  final AnimationController? animationController;
  Animation<double>? topBarAnimation;
  double topBarOpacity = 0.0;
  final ScrollController scrollController = ScrollController();
  List<Widget> listViews = <Widget>[];
  List<MealsListModel> _mealsListModels = [];

  MyDairyScreenViewModel({
    required this.animationController,
  });

  @override
  void disposeViewModel() {}

  @override
  void initViewModel(BuildContext context) async {
    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController!,
        curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn),
      ),
    );
    await _loadAllData();
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

  Future<void> _loadAllData() async {
    ResponseModel<List<MealsListModel>?> res =
        await _repository.getMealsListModels();
    _mealsListModels = res.data ?? [];
  }

  void addAllListData() {
    const int count = 6;

    listViews.add(
      TitleView(
        titleTxt: 'Meals today',
        subTxt: 'Customize',
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
      MealsListView(
        mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 3, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        mainScreenAnimationController: animationController,
        mealsListModels: _mealsListModels,
      ),
    );
    listViews.add(
      TitleView(
        titleTxt: 'Body measurement',
        subTxt: 'Today',
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
      BodyMeasurementView(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 5, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );
    listViews.add(
      TitleView(
        titleTxt: 'Weight Target',
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
      WeightTargetView(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animationController!,
            curve: const Interval((1 / count) * 1, 1.0,
                curve: Curves.fastOutSlowIn),
          ),
        ),
        animationController: animationController!,
      ),
    );
  }
}