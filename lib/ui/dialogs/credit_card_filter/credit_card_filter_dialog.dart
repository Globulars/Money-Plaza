// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../views/credit_card/credit_card_viewmodel.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

class CreditCardFilterDialog extends StackedView<CreditCardViewModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const CreditCardFilterDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreditCardViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(vertical: height * 0.13, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SubBar(
              height: 50,
              color: Colors.white,
              width: width * 1,
              image: myIcons.filter,
              text: 'filter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              topimage: myIcons.cancel,
              close: true,
            ),
            verticalSpaceTiny,
            Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownTextfield(
                      value: viewModel.cardProvider,
                      onChanged: viewModel.setCardProvider,
                      options: viewModel.cardProviderList,
                      titleText: 'cardProviders',
                    ),
                    verticalSpaceSmall,
                    DropdownTextfield(
                      value: viewModel.cardType,
                      onChanged: viewModel.setCard,
                      options: viewModel.cardList,
                      titleText: 'card',
                    ),
                    verticalSpaceSmall,
                    CustomTextField(
                      hintText: 'hk',
                      titleText: 'annualIncome',
                      controller: viewModel.annualIncomeCtrl,
                    ),
                    verticalSpaceSmall,
                    DropdownTextfield(
                      titleText: 'bankFinancialInstitutes',
                      value: viewModel.financialInstitutes,
                      onChanged: viewModel.setFinancialInstitutes,
                      options: viewModel.financialInstitutesList,
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubmitButton(
                          height: 40,
                          width: 80,
                          boxColor: Colors.transparent,
                          image: myIcons.iconPowerReset,
                          imgwidth: 15,
                          text: 'resetAll',
                          onPress: viewModel.resetAll,
                          color: darkGreenLight,
                        ),
                        SubmitButton(
                          text: 'matching',
                          onPress: () {
                            log("message");
                            viewModel.back();
                            viewModel.back();
                            viewModel.navigateToCreditCardResult();
                          },
                          height: 40,
                          width: 100,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CreditCardViewModel viewModelBuilder(BuildContext context) =>
      CreditCardViewModel();
}
