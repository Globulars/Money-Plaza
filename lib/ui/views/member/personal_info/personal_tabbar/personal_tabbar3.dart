// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names

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
              onChanged: viewModel.setIntersetProduct,
              options: viewModel.intersetProductList,
              titleText: 'interestedProducts2',
              value: viewModel.intersetProduct,
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
