import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'member_setting_viewmodel.dart';

class MemberSettingView extends StackedView<MemberSettingViewModel> {
  const MemberSettingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberSettingViewModel viewModel,
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
  MemberSettingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberSettingViewModel();
}
