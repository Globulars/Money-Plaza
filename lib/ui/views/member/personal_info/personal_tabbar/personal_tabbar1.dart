import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personal_info_viewmodel.dart';

class PersonalTabBar1 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar1({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalInfoViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              titleText: 'firstName',
            ),
            verticalSpaceSmall,
            CustomTextField(
              titleText: 'lastName',
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'sex',
              fontWeight: FontWeight.w600,
            ),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReturnButton(
                  height: 40,
                  text: 'm',
                  width: width * 0.43,
                  boxcolor: viewModel.loanTenors == 'm'
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != "m"
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors('m');
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: 'f',
                  width: width * 0.43,
                  boxcolor: viewModel.loanTenors == "f"
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != "f"
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors('f');
                  },
                ),
              ],
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'birthDate',
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'nationality',
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'doyouknowMoneyPlaza',
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
