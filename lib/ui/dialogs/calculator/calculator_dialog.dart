import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../views/loan/loan_viewmodel.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import '../../widgets/common/icon_box_btn/text.dart';

class CalculatorDialog extends StackedView<LoanViewModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const CalculatorDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SizedBox(
        height: height * 0.67,
        width: width * 0.76,
        child: Column(
          children: [
            SubBar(
              height: 50,
              color: Colors.white,
              width: width * 1,
              image: myIcons.calculator,
              text: 'interestCalculator',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              imgwidth: 15,
              close: true,
            ),
            verticalSpaceTiny,
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'borrowingAmount',
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTextField(
                        hintText: 'hk',
                      controller: viewModel.calculatorLoanAmount,
                        height: 40,
                      ),
                      verticalSpaceTiny,
                      CustomText(
                        text: 'repaymentMethod',
                        fontWeight: FontWeight.w600,
                      ),
                      verticalSpaceTiny,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReturnButton(
                            height: 40,
                            text: 'fixedRateTermLoans',
                            width: width * 0.41,
                            fontSize: 13,
                            boxcolor: viewModel.repayment == 0
                                ? darkGreenHeigh
                                : Colors.white,
                            color: viewModel.repayment != 0
                                ? darkGreenHeigh
                                : Colors.white,
                            onPress: () {
                              viewModel.setRepayment(0);
                            },
                          ),
                          ReturnButton(
                            height: 40,
                            fontSize: 13,
                            text: 'resolvingLoans',
                            width: width * 0.31,
                            boxcolor: viewModel.repayment == 1
                                ? darkGreenHeigh
                                : Colors.white,
                            color: viewModel.repayment != 1
                                ? darkGreenHeigh
                                : Colors.white,
                            onPress: () {
                              viewModel.setRepayment(1);
                            },
                          )
                        ],
                      ),
                      verticalSpace(5),
                      ReturnButton(
                        height: 40,
                        text: 'prepaaidInterest',
                        width: width * 1,
                        boxcolor: viewModel.repayment == 2
                            ? darkGreenHeigh
                            : Colors.white,
                        color: viewModel.repayment != 2
                            ? darkGreenHeigh
                            : Colors.white,
                        onPress: () {
                          viewModel.setRepayment(2);
                        },
                      ),
                      verticalSpaceTiny,
                      CustomText(
                        text: 'calculationItems',
                        fontWeight: FontWeight.w600,
                      ),
                      verticalSpaceTiny,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReturnButton(
                            height: 40,
                            text: 'tenor',
                            width: width * 0.36,
                            boxcolor: viewModel.calculation == 0
                                ? darkGreenHeigh
                                : Colors.white,
                            color: viewModel.calculation != 0
                                ? darkGreenHeigh
                                : Colors.white,
                            onPress: () {
                              viewModel.setCalculation(0);
                            },
                          ),
                          ReturnButton(
                            height: 40,
                            text: 'apr',
                            width: width * 0.36,
                            boxcolor: viewModel.calculation == 1
                                ? darkGreenHeigh
                                : Colors.white,
                            color: viewModel.calculation != 1
                                ? darkGreenHeigh
                                : Colors.white,
                            onPress: () {
                              viewModel.setCalculation(1);
                            },
                          )
                        ],
                      ),
                      verticalSpace(5),
                      ReturnButton(
                        height: 40,
                        text: 'monthlyRepaymentAmount',
                        width: width * 1,
                        boxcolor: viewModel.calculation == 2
                            ? darkGreenHeigh
                            : Colors.white,
                        color: viewModel.calculation != 2
                            ? darkGreenHeigh
                            : Colors.white,
                        onPress: () {
                          viewModel.setCalculation(2);
                        },
                      ),
                      verticalSpaceTiny,
                      verticalSpaceTiny,
                      CustomText(
                        text: 'totalRepaymentAmount',
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTextField(
                        hintText: 'hk',
                        controller: viewModel.calculatorMonthlyPayment,
                        height: 40,
                      ),
                      verticalSpaceTiny,
                      CustomText(
                        text: 'interestRate',
                        fontWeight: FontWeight.w500,
                      ),
                      CustomTextField(
                        hintText: '%',
                        controller: viewModel.calculatorInterest,
                        height: 40,
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
                            onPress: viewModel.calculatorResetAll,
                          ),
                          SubmitButton(
                            text: 'calculateNow',
                            height: 40,
                            width: 120,
                            onPress: viewModel.navigateToCalculatorResult,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoanViewModel viewModelBuilder(BuildContext context) =>
      LoanViewModel();
}
