// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
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
            text: 'outstandingLoan2',
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
                boxcolor:
                    viewModel.outStanding == 1 ? darkGreenHeigh : Colors.white,
                color:
                    viewModel.outStanding != 1 ? darkGreenHeigh : Colors.white,
                onPress: () {
                  viewModel.setOutstandingLoan(1);
                },
              ),
              ReturnButton(
                height: 40,
                text: 'No',
                width: width * 0.43,
                boxcolor:
                    viewModel.outStanding == 2 ? darkGreenHeigh : Colors.white,
                color:
                    viewModel.outStanding != 2 ? darkGreenHeigh : Colors.white,
                onPress: () {
                  viewModel.setOutstandingLoan(2);
                },
              ),
            ],
          ),
          verticalSpaceSmall,
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField( number: false,
                  titleText: 'companyName',
                  controller: viewModel.companyNameCtrl,
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? DropdownTextfield(
                  onChanged: viewModel.setRepaymentType,
                  options: viewModel.repaymentTypeList,
                  value: viewModel.repaymentType,
                  titleText: 'repaymentType',
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  hintText: 'hk',
                  controller: viewModel.totalOutstandingLoanCtrl,
                  titleText: 'totalOutstandingLoan',
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField( number: false,
                  controller: viewModel.tenorCtrl,
                  hintText: 'Months',
                  titleText: 'tenor',
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  controller: viewModel.remainigTenorCtrl,
                  hintText: 'Months', number: false,
                  titleText: 'Remaining Tenor',
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  controller: viewModel.monthlyRepaymentCtrl,
                  hintText: 'hk',
                  titleText: 'monthlyRepayment',
                )
              : Container(),
          verticalSpaceLarge
        ],
      ),
    );
  }
}
