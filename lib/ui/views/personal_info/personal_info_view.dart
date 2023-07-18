import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'personal_info_viewmodel.dart';

class PersonalInfoView extends StackedView<PersonalInfoViewModel> {
  const PersonalInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalInfoViewModel viewModel,
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
  PersonalInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalInfoViewModel();
}
