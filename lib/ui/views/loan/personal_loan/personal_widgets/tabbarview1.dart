import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personalloan_viewmodel.dart';

class TabBarView1 extends ViewModelWidget<PersonalloanViewModel> {
  const TabBarView1({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalloanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'hk',
              titleText: 'borrowingAmount',
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'loanTenors',
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
                  boxcolor:
                      viewModel.loanTenors == 6 ? darkGreenHeigh : Colors.white,
                  color:
                      viewModel.loanTenors != 6 ? darkGreenHeigh : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(6);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '12',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 12
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 12
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(12);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '24',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 24
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 24
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(24);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '36',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 36
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 36
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(36);
                  },
                ),
              ],
            ),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReturnButton(
                  height: 40,
                  text: '48',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 48
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 48
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(48);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '60',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 60
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 60
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(60);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '72',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 72
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 72
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(72);
                  },
                ),
                ReturnButton(
                  height: 40,
                  text: '84',
                  width: width * 0.21,
                  boxcolor: viewModel.loanTenors == 84
                      ? darkGreenHeigh
                      : Colors.white,
                  color: viewModel.loanTenors != 84
                      ? darkGreenHeigh
                      : Colors.white,
                  onPress: () {
                    viewModel.setLoanTenors(84);
                  },
                ),
              ],
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'loanReason',
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: (String) {},
              options: [],
              titleText: 'propertyOwner',
            ),
          ],
        ),
      ),
    );
  }
}
