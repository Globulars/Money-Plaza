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
            controller: viewModel.annualTurnoverCtrl,
          ),
            verticalSpaceSmall,
          CustomTextField(
            controller: viewModel.digitalPaymentCtrl,
            titleText: 'Average monthly Income by digital payment',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: viewModel.setBusinessNature,
            options: viewModel.businessNatureList,
            value: viewModel.businessNature,
            titleText: 'Business Nature',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged:viewModel.setPosSystemEquipment,
            options: viewModel.posSystemEquipmentrList,
            value: viewModel.posSystemEquipment,
            titleText: 'POS system equipped',
          ),
          verticalSpaceSmall,
          CustomTextField(
            controller: viewModel.companyNameCtrl,
            titleText: 'companyName',
          ),
           verticalSpaceSmall,
          CustomTextField(
            controller: viewModel.futureReceivableAmountCtrl,
            titleText: 'Future receivable amount(if any)',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged:viewModel.setAudioReport,
            options: viewModel.audioReportList,
            titleText: 'audioReport',
            value: viewModel.audioReport,
          ),
          verticalSpaceSmall,
          CustomTextField(
            controller: viewModel.operationYearCtrl,
            titleText: 'operationYear',
          ),
          verticalSpaceLarge
        ],
      ),
    );
  }
}
