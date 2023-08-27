// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../ownerloan_viewmodel.dart';

class OwnerTabBar2 extends ViewModelWidget<OwnerloanViewModel> {
  const OwnerTabBar2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    OwnerloanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'hk',
            titleText: 'monthlyIncome',
            controller: viewModel.monthlyIncomeCtrl,
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            value: viewModel.typeOfIncome,
            options: viewModel.typeOfIncomeList,
            onChanged: viewModel.setTypeOfIncome,
            titleText: 'typeOfIncome',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            value: viewModel.proofOfIncome,
            options: viewModel.proofOfIncomeList,
            onChanged: viewModel.setProofOfIncome,
            titleText: 'proofOfIncome',
          ),
        ],
      ),
    );
  }
}
