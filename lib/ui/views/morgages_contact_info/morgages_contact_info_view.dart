import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'morgages_contact_info_viewmodel.dart';

class MorgagesContactInfoView
    extends StackedView<MorgagesContactInfoViewModel> {
  const MorgagesContactInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesContactInfoViewModel viewModel,
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
  MorgagesContactInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesContactInfoViewModel();
}
