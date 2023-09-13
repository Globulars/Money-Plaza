import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';

import '../personal_info_viewmodel.dart';

class PersonalTabBar2 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalInfoViewModel viewModel,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField( number: false,
              titleText: 'email',
              controller: viewModel.emailCtrl,
            ),
            verticalSpaceSmall,
            CustomTextField( number: false,
              controller: viewModel.contactNumCtrl,
              titleText: 'contactNumber',
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
