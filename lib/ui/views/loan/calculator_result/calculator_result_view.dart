import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'calculator_result_viewmodel.dart';

class CalculatorResultView extends StackedView<CalculatorResultViewModel> {
  const CalculatorResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalculatorResultViewModel viewModel,
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
  CalculatorResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CalculatorResultViewModel();
}
