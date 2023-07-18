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
import 'filter_dialog_model.dart';

const double _graphicSize = 60;

class FilterDialog extends StackedView<FilterDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const FilterDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FilterDialogModel viewModel,
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
                    text: 'Repayment Type',
                    fontWeight: FontWeight.w600,
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReturnButton(
                        height: 40,
                        text: 'Term Loan',
                        width: width * 0.36,
                      ),
                      SubmitButton(
                        height: 40,
                        text: 'min-pay',
                        width: width * 0.36,
                      )
                    ],
                  ),
                  verticalSpace(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReturnButton(
                        height: 40,
                        text: 'Interest only',
                        width: width * 0.36,
                      ),
                      ReturnButton(
                        height: 40,
                        text: 'Prepaid interest',
                        width: width * 0.36,
                      )
                    ],
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: 'Repayment Period(Monthly)',
                    fontWeight: FontWeight.w600,
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReturnButton(
                        height: 40,
                        text: '6',
                        width: width * 0.23,
                      ),
                      ReturnButton(
                        height: 40,
                        text: '12',
                        width: width * 0.23,
                      ),
                      SubmitButton(
                        height: 40,
                        text: '24',
                        width: width * 0.23,
                      )
                    ],
                  ),
                  verticalSpace(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReturnButton(
                        height: 40,
                        text: '36',
                        width: width * 0.23,
                      ),
                      ReturnButton(
                        height: 40,
                        text: '48',
                        width: width * 0.23,
                      ),
                      ReturnButton(
                        height: 40,
                        text: '60',
                        width: width * 0.23,
                      )
                    ],
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
                        text: 'Apply',
                        height: 40,
                        width: 80,
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
  FilterDialogModel viewModelBuilder(BuildContext context) =>
      FilterDialogModel();
}
