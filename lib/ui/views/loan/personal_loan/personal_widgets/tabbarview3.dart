import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personalloan_viewmodel.dart';

class TabBarView3 extends ViewModelWidget<PersonalloanViewModel> {
  const TabBarView3({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalloanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'outstandingLoan2',
            fontWeight: FontWeight.w600,
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReturnButton(
                height: 40,
                text: 'yes',
                width: width * 0.43,
                boxcolor:
                    viewModel.outStanding == 0 ? darkGreenHeigh : Colors.white,
                color:
                    viewModel.outStanding != 0 ? darkGreenHeigh : Colors.white,
                onPress: () {
                  viewModel.setOutstandingLoan(0);
                },
              ),
              ReturnButton(
                height: 40,
                text: 'no',
                width: width * 0.43,
                boxcolor:
                    viewModel.outStanding == 1 ? darkGreenHeigh : Colors.white,
                color:
                    viewModel.outStanding != 1 ? darkGreenHeigh : Colors.white,
                onPress: () {
                  viewModel.setOutstandingLoan(1);
                },
              ),
            ],
          ),
          verticalSpaceSmall,
          verticalSpaceSmall,
          CustomTextField(
            titleText: 'numberOfLoans',
          ),
          verticalSpaceSmall,
          CustomTextField(
            hintText: 'hk',
            titleText: 'totalOutstandingLoan',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'monthlyRepayment',
          ),
        ],
      ),
    );
  }
}
