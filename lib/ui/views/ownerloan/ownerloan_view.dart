import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ownerloan_viewmodel.dart';

class OwnerloanView extends StackedView<OwnerloanViewModel> {
  const OwnerloanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OwnerloanViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  OwnerloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanViewModel();
}
