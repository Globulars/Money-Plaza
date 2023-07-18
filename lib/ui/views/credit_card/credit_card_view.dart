import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'credit_card_viewmodel.dart';

class CreditCardView extends StackedView<CreditCardViewModel> {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreditCardViewModel viewModel,
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
  CreditCardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreditCardViewModel();
}
