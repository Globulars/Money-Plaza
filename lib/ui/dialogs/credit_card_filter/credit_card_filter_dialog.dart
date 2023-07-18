import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'credit_card_filter_dialog_model.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

class CreditCardFilterDialog extends StackedView<CreditCardFilterDialogModel> {
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
    CreditCardFilterDialogModel viewModel,
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
              height: 40,
              color: Colors.white,
              width: width * 1,
              image: myIcons.filter,
              text: 'Filter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              topimage: myIcons.cancel,
              close: true,
            ),
            verticalSpaceTiny,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownTextfield(
                    titleText: 'Mortgages',
                    onChanged: (String) {},
                    options: [],
                  ),
                  verticalSpaceSmall,
                  CustomTextField(
                    titleText: 'Mortgage Load Amount',
                    hintText: 'HK\$',
                  ),
                  verticalSpaceSmall,
                  CustomTextField(
                    titleText: 'Mortgage Tenors',
                    hintText: 'year(s)',
                  ),
                  verticalSpaceSmall,
                  DropdownTextfield(
                    titleText: 'Banks and Financial Institutes',
                    onChanged: (String) {},
                    options: [],
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
                        text: 'Reset all',
                        color: darkGreenLight,
                      ),
                      SubmitButton(
                        text: 'Matching',
                        height: 40,
                        width: 100,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CreditCardFilterDialogModel viewModelBuilder(BuildContext context) =>
      CreditCardFilterDialogModel();
}