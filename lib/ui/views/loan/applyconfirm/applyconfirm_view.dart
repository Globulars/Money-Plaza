import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'applyconfirm_viewmodel.dart';

class ApplyconfirmView extends StackedView<ApplyconfirmViewModel> {
  const ApplyconfirmView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ApplyconfirmViewModel viewModel,
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
  ApplyconfirmViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ApplyconfirmViewModel();
}
