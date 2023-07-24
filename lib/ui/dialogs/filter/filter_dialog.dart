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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SizedBox(
        height: height * 0.51,
        width: width * 0.76,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'borrowingAmount',
                            fontWeight: FontWeight.w600,
                          ),
                          CustomTextField(
                            hintText: 'hk',
                            height: 40,
                          ),
                          verticalSpaceTiny,
                          CustomText(
                            text: 'repaymentType',
                            fontWeight: FontWeight.w600,
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReturnButton(
                                height: 40,
                                text: 'termLoan',
                                width: width * 0.36,
                                boxcolor: viewModel.repaymentType == 0
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentType != 0
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentType(0);
                                },
                              ),
                              ReturnButton(
                                  height: 40,
                                  text: 'min-pay',
                                  width: width * 0.36,
                                  boxcolor: viewModel.repaymentType == 1
                                      ? darkGreenHeigh
                                      : Colors.white,
                                  color: viewModel.repaymentType != 1
                                      ? darkGreenHeigh
                                      : Colors.white,
                                  onPress: () {
                                    viewModel.setRepaymentType(1);
                                  })
                            ],
                          ),
                          verticalSpace(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReturnButton(
                                  height: 40,
                                  text: 'interestOnly',
                                  width: width * 0.36,
                                  boxcolor: viewModel.repaymentType == 2
                                      ? darkGreenHeigh
                                      : Colors.white,
                                  color: viewModel.repaymentType != 2
                                      ? darkGreenHeigh
                                      : Colors.white,
                                  onPress: () {
                                    viewModel.setRepaymentType(2);
                                  }),
                              ReturnButton(
                                height: 40,
                                text: 'prepaidInterest',
                                width: width * 0.36,
                                boxcolor: viewModel.repaymentType == 3
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentType != 3
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentType(3);
                                },
                              )
                            ],
                          ),
                          verticalSpaceTiny,
                          CustomText(
                            text: 'repaymentPeriod(Monthly)',
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
                                boxcolor: viewModel.repaymentPeriod == 6
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 6
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(6);
                                },
                              ),
                              ReturnButton(
                                height: 40,
                                text: '12',
                                width: width * 0.23,
                                boxcolor: viewModel.repaymentPeriod == 12
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 12
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(12);
                                },
                              ),
                              ReturnButton(
                                height: 40,
                                text: '24',
                                width: width * 0.23,
                                boxcolor: viewModel.repaymentPeriod == 24
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 24
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(24);
                                },
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
                                boxcolor: viewModel.repaymentPeriod == 36
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 36
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(36);
                                },
                              ),
                              ReturnButton(
                                height: 40,
                                text: '48',
                                width: width * 0.23,
                                boxcolor: viewModel.repaymentPeriod == 48
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 48
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(48);
                                },
                              ),
                              ReturnButton(
                                height: 40,
                                text: '60',
                                width: width * 0.23,
                                boxcolor: viewModel.repaymentPeriod == 60
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.repaymentPeriod != 60
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setRepaymentPeriod(60);
                                },
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
                                text: 'resetAll',
                                color: darkGreenLight,
                              ),
                              SubmitButton(
                                text: 'apply',
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
