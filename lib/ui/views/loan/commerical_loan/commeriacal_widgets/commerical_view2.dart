// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../commerical_loan_viewmodel.dart';

class CommTabBar2 extends ViewModelWidget<CommericalLoanViewModel> {
  const CommTabBar2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CommericalLoanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'hk',
            titleText: 'annualTurnover',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'industory',
          ),
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'companyName',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'audioReport',
          ),
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'operationYear',
          ),
        ],
      ),
    );
  }
}
