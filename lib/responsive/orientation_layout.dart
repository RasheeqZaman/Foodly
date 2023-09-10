import 'package:flutter/material.dart';

import '../view_models/base_view_model.dart';
import '../widgets/base_model_widget.dart';

class OrientationLayout<T extends BaseViewModel> extends BaseModelWidget<T> {
  final BaseModelWidget<T> Function(BuildContext)? landscape;
  final BaseModelWidget<T> Function(BuildContext) portrait;

  const OrientationLayout({
    Key? key,
    this.landscape,
    required this.portrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, T model) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      Orientation orientation = MediaQuery.of(context).orientation;
      return (orientation == Orientation.landscape)
          ? (landscape == null)
              ? portrait(context)
              : landscape!(context)
          : portrait(context);
    });
  }
}
