import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'reward_viewmodel.dart';

class RewardView extends StackedView<RewardViewModel> {
  const RewardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RewardViewModel viewModel,
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
  RewardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardViewModel();
}
