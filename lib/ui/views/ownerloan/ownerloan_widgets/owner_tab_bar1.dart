import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../common/ui_helpers.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../ownerloan_viewmodel.dart';

class OwnerTabBar1 extends ViewModelWidget<OwnerloanViewModel> {
  const OwnerTabBar1({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    OwnerloanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'HK\$',
            titleText: 'Borrowing Amount',
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'Loan Tenors(Monthly)',
            fontWeight: FontWeight.w600,
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReturnButton(
                height: 40,
                text: '6',
                width: width * 0.21,
              ),
              ReturnButton(
                height: 40,
                text: '12',
                width: width * 0.21,
              ),
              SubmitButton(
                height: 40,
                text: '24',
                width: width * 0.21,
              ),
              ReturnButton(
                height: 40,
                text: '12',
                width: width * 0.21,
              ),
            ],
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReturnButton(
                height: 40,
                text: '36',
                width: width * 0.21,
              ),
              ReturnButton(
                height: 40,
                text: '48',
                width: width * 0.21,
              ),
              ReturnButton(
                height: 40,
                text: '60',
                width: width * 0.21,
              ),
              ReturnButton(
                height: 40,
                text: '12',
                width: width * 0.21,
              ),
            ],
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Loan Reason',
          ),
         
        ],
      ),
    );
  }
}
