import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../blnstransfer_viewmodel.dart';

class TransferTabBar3 extends ViewModelWidget<BlnstransferViewModel> {
  const TransferTabBar3({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    BlnstransferViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Outstanding Loan',
            fontWeight: FontWeight.w600,
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReturnButton(
                height: 40,
                text: 'Yes',
                width: width * 0.43,
              ),
              SubmitButton(
                height: 40,
                text: 'No',
                width: width * 0.43,
                boxColor: darkGreenLight,
              ),
            ],
          ),
          verticalSpaceSmall,
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'Number of Loans',
          ),
          verticalSpaceSmall,
          CustomTextField(
            hintText: 'HK\$',
            titleText: 'Total Outstanding Loan Amount',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Monthly Repayment',
          ),
        ],
      ),
    );
  }
}
