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
import '../../widgets/custom_text.dart';

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
                child: Form(
                  key: viewModel.formKey,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          titleText: 'borrowingAmount',
                          hintText: 'hk',
                          controller: viewModel.loanAmountCtrl,
                          height: 40,
                        ),
                        verticalSpaceTiny,
                        CustomText(
                          text: 'repaymentMethod',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        verticalSpaceTiny,
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
                        verticalSpace(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            ),
                            viewModel.repayment == 0
                                ? ReturnButton(
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
                                  )
                                : Container(),
                          ],
                        ),
                        verticalSpaceTiny,
                        (viewModel.repayment == 0 &&
                                    (viewModel.calculation == 0 ||
                                        viewModel.calculation == 1)) ||
                                (viewModel.repayment == 1 &&
                                    (viewModel.calculation == 1))
                            ? CustomTextField(
                                titleText: 'totalRepaymentAmount',
                                hintText: 'hk',
                                controller: viewModel.monthlyPaymentCtrl,
                                height: 40,
                              )
                            : Container(),
                        verticalSpaceTiny,
                        (viewModel.repayment == 0 &&
                                (viewModel.calculation == 2 ||
                                    viewModel.calculation == 0))
                            ? CustomTextField(
                                titleText: 'interestRate',
                                number: false,
                                hintText: '%',
                                controller: viewModel.interestCtrl,
                                height: 40,
                              )
                            : Container(),
                        verticalSpaceTiny,
                        viewModel.repayment == 2 && viewModel.calculation == 1
                            ? CustomTextField(
                                titleText: 'totalPrepaidInterest',
                                number: false,
                                hintText: '%',
                                controller: viewModel.interestCtrl,
                                height: 40,
                              )
                            : Container(),
                        verticalSpaceTiny,
                        (viewModel.repayment == 0 &&
                                    (viewModel.calculation == 1 ||
                                        viewModel.calculation == 2)) ||
                                (viewModel.repayment == 1 &&
                                    (viewModel.calculation == 1 ||
                                        viewModel.calculation == 2)) ||
                                (viewModel.repayment == 2 &&
                                    (viewModel.calculation == 1 ||
                                        viewModel.calculation == 2))
                            ? CustomTextField(
                                titleText: 'tenor',
                                controller: viewModel.tenorCtrl,
                                height: 40,
                              )
                            : Container(),
                        verticalSpaceTiny,
                        (viewModel.repayment == 1 &&
                                    (viewModel.calculation == 2)) ||
                                (viewModel.repayment == 2 &&
                                    (viewModel.calculation == 2))
                            ? CustomTextField(
                                titleText: 'apr',
                                number: false,
                                hintText: '%',
                                controller: viewModel.aprCtrl,
                                height: 40,
                              )
                            : Container(),
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
                                onPress: () {
                                  viewModel.back();
                                  viewModel.navigateToCalculatorResult();
                                }),
                          ],
                        )
                      ],
                    ),
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
  LoanViewModel viewModelBuilder(BuildContext context) => LoanViewModel();
}
