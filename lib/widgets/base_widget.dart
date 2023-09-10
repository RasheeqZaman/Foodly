import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '../responsive/screen_type_layout.dart';
import '../view_models/base_view_model.dart';

class BaseWidget<T extends BaseViewModel> extends StatefulWidget {
  final T viewModel;
  final ScreenTypeLayout<T> child;
  const BaseWidget({
    Key? key,
    required this.viewModel,
    required this.child,
  }) : super(key: key);

  @override
  State<BaseWidget<T>> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends BaseViewModel> extends State<BaseWidget<T>>
    with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        await widget.viewModel.resumeViewModel(context);
        break;
      case AppLifecycleState.inactive:
        await widget.viewModel.inactiveViewModel(context);
        break;
      case AppLifecycleState.paused:
        await widget.viewModel.pauseViewModel(context);
        break;
      case AppLifecycleState.detached:
        await widget.viewModel.detachViewModel(context);
        break;
      case AppLifecycleState.hidden:
        await widget.viewModel.hiddenViewModel(context);
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    SchedulerBinding.instance.addPostFrameCallback(
          (_) => widget.viewModel.initViewModel(context),
    );
  }

  @override
  void dispose() {
    widget.viewModel.preDisposeViewModel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => widget.viewModel,
      child: widget.child,
    );
  }
}