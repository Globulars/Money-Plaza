import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'reward_application_viewmodel.dart';

class RewardApplicationView extends StackedView<RewardApplicationViewModel> {
  const RewardApplicationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RewardApplicationViewModel viewModel,
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
  RewardApplicationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardApplicationViewModel();
}
