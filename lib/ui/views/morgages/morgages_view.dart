import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'morgages_viewmodel.dart';

class MorgagesView extends StackedView<MorgagesViewModel> {
  const MorgagesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesViewModel viewModel,
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
  MorgagesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesViewModel();
}
