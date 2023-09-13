// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../morgages_viewmodel.dart';

class MorgTextFields extends ViewModelWidget<MorgagesViewModel> {
  const MorgTextFields({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    MorgagesViewModel viewModel,
  ) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'knowMoreAboutYou',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: 'mandatoryField',
                fontSize: 10,
              ),
              verticalSpaceSmall,
              DropdownTextfield(
                onChanged: viewModel.setMortgages,
                value: viewModel.mortgages,
                options: viewModel.mortgagesList,
                titleText: 'mortgages',
              ),
              verticalSpaceSmall,
              DropdownTextfield(
                onChanged: viewModel.setTypeOfProperty,
                options: viewModel.typeOfPropertyList,
                value: viewModel.typeOfProperty,
                titleText: 'typeOfProperty',
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: 'hk',
                titleText: 'propertyValuation',
                controller: viewModel.mortgagesPropertyValuationCtrl,
              ),
              verticalSpaceSmall,
              CustomTextField(
                number: false,
                hintText: '%',
                titleText: 'ratio(LTV)',
                controller: viewModel.mortgagesValueRatioCtrl,
              ),
              verticalSpaceSmall,
              CustomTextField(  
                number: false,
                hintText: 'year',
                titleText: 'mortgagesTenor',
                controller: viewModel.mortgagesTenorCtrl,
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: 'year',
                titleText: 'monthlyIncome',
                controller: viewModel.mortgagesMonthlyIncomeCtrl,
              ),
              verticalSpaceLarge,
              verticalSpaceTiny
            ],
          ),
        ),
      ),
    );
  }
}
