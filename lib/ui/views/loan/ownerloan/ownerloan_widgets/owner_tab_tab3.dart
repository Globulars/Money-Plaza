// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../ownerloan_viewmodel.dart';

class OwnerTabBar3 extends ViewModelWidget<OwnerloanViewModel> {
  const OwnerTabBar3({Key? key}) : super(key: key);

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
                    viewModel.outStanding == 1 ? darkGreenHeigh : Colors.white,
                color:
                    viewModel.outStanding != 1 ? darkGreenHeigh : Colors.white,
                onPress: () {
                  viewModel.setOutstandingLoan(1);
                },
              ),
              ReturnButton(
                height: 40,
                text: 'no',
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
          CustomTextField(
            hintText: 'hk',
            titleText: 'propertyValuation',
            controller: viewModel.propertyValuationCtrl,
          ),
          verticalSpaceSmall,
          CustomTextField(
            hintText: '0%',
            titleText: 'currentMortgageRatio',
            controller: viewModel.currentMortgageRatioCtrl,
          ),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  number: false,
                  titleText: 'numberOfLoans',
                  controller: viewModel.numOfLoansCtrl,
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  hintText: 'hk',
                  titleText: 'totalOutstandingLoan',
                  controller: viewModel.totalOutstandingLoanCtrl,
                )
              : Container(),
          verticalSpaceSmall,
          viewModel.outStanding == 1
              ? CustomTextField(
                  titleText: 'monthlyRepayment',
                  controller: viewModel.monthlyRepaymentCtrl,
                )
              : Container(),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
