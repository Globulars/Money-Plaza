import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'commerical_result_viewmodel.dart';

class CommericalResultView extends StackedView<CommericalResultViewModel> {
  const CommericalResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalResultViewModel viewModel,
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
  CommericalResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalResultViewModel();
}
