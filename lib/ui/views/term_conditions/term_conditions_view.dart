import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'term_conditions_viewmodel.dart';

class TermConditionsView extends StackedView<TermConditionsViewModel> {
  const TermConditionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TermConditionsViewModel viewModel,
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
  TermConditionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TermConditionsViewModel();
}
