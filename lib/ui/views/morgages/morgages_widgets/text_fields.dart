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
                text: 'We need to know more about you',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: '*Mandatory Field',
                fontSize: 10,
              ),
              verticalSpaceSmall,
              DropdownTextfield(
                onChanged: (String) {},
                options: [],
                titleText: 'Mortgages',
              ),
              verticalSpaceSmall,
              DropdownTextfield(
                onChanged: (String) {},
                options: [],
                titleText: 'Type of Property',
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: 'HK\$',
                titleText: 'Property Valuation',
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: '%',
                titleText: 'Loan-to-Value Ratio(LTV)',
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: 'year(s)',
                titleText: 'Mortgages Tenor',
              ),
              verticalSpaceSmall,
              CustomTextField(
                hintText: 'year(s)',
                titleText: 'Monthly Income',
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
