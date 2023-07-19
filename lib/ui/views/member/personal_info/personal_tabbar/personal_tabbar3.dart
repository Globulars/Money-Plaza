import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';

import '../personal_info_viewmodel.dart';

class PersonalTabBar3 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar3({Key? key}) : super(key: key);

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
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'Interested Products',
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
