import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'icon_box_btn_model.dart';

class IconBoxBtn extends StackedView<IconBoxBtnModel> {
  const IconBoxBtn({super.key});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
