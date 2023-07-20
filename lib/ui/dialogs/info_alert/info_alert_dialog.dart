import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import '../../widgets/common/icon_box_btn/text.dart';
import 'info_alert_dialog_model.dart';

class InfoAlertDialog extends StackedView<InfoAlertDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InfoAlertDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              SubBar(
                height: 40,
                color: Colors.white,
                width: width * 1,
                image: myIcons.calculator,
                text: 'Interest Calculator',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                btmLeftRadius: 0,
                btmRightRadius: 0,
                topimage: myIcons.cancel,
              ),
              verticalSpaceTiny,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Borrowing Amount',
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextField(
                      hintText: 'HK\$',
                      height: 40,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: 'Repayment Method',
                      fontWeight: FontWeight.w600,
                    ),
                    verticalSpaceTiny,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReturnButton(
                          height: 40,
                          text: 'Fixed Rate Term Loans',
                          width: width * 0.42,
                        ),
                        SubmitButton(
                          height: 40,
                          text: 'Resolving Loans',
                          width: width * 0.32,
                        )
                      ],
                    ),
                    verticalSpace(5),
                    ReturnButton(
                      height: 40,
                      text: 'Prepaaid Interest(Commerical Loans)',
                      width: width * 1,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: 'Calculation Items',
                      fontWeight: FontWeight.w600,
                    ),
                    verticalSpaceTiny,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReturnButton(
                          height: 40,
                          text: 'Tenor',
                          width: width * 0.36,
                        ),
                        SubmitButton(
                          height: 40,
                          text: 'APR',
                          width: width * 0.36,
                        )
                      ],
                    ),
                    verticalSpace(5),
                    ReturnButton(
                      height: 40,
                      text: 'Monthly Repayment Amount',
                      width: width * 1,
                    ),
                    verticalSpaceTiny,
                    verticalSpaceTiny,
                    CustomText(
                      text: 'MonthlyRepayment Amount',
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextField(
                      hintText: 'HK\$',
                      height: 40,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: 'Interest Rate',
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextField(
                      hintText: '%',
                      height: 40,
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubmitButton(
                          boxColor: Colors.transparent,
                          image: myIcons.iconPowerReset,
                          text: 'Reset all',
                          color: darkGreenLight,
                        ),
                        SubmitButton(
                          text: 'Calculate Now',
                          height: 40,
                          width: 120,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
