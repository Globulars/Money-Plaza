import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'commerical_loan_viewmodel.dart';

class CommericalLoanView extends StackedView<CommericalLoanViewModel> {
  const CommericalLoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalLoanViewModel viewModel,
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
  CommericalLoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalLoanViewModel();
}
