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
            hintText: 'HK\$',
            titleText: 'Annual Turnover',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Industory',
          ),
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'Company Name',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Audio Report',
          ),
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'Operation Year',
          ),
        ],
      ),
    );
  }
}
