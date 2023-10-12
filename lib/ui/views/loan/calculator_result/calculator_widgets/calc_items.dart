import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../loan_viewmodel.dart';

class CalculatorItems extends ViewModelWidget<LoanViewModel> {
  const CalculatorItems({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                myIcons.greenCalculator,
                scale: 2,
                width: 18,
              ),
              horizontalSpaceTiny,
              CustomText(
                text: 'interestCalculator',
                color: darkGreenHeigh,
                fontSize: 18,
              ),
            ],
          ),
          verticalSpaceSmall,
          CustomText(
            text: 'calculationItems',
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReturnButton(
                height: 40,
                text: 'tenor',
                width: width * 0.16,
                boxcolor: viewModel.calculationitem == 0
                    ? darkGreenHeigh
                    : Colors.white,
                color: viewModel.calculationitem != 0
                    ? darkGreenHeigh
                    : Colors.white,
                onPress: () {
                  viewModel.setCalculationItems(0);
                },
              ),
              ReturnButton(
                height: 40,
                text: 'apr',
                width: width * 0.16,
                boxcolor: viewModel.calculationitem == 1
                    ? darkGreenHeigh
                    : Colors.white,
                color: viewModel.calculationitem != 1
                    ? darkGreenHeigh
                    : Colors.white,
                onPress: () {
                  viewModel.setCalculationItems(1);
                },
              ),
              ReturnButton(
                height: 40,
                text: 'monthlyRepaymentAmount',
                width: width * 0.56,
                boxcolor: viewModel.calculationitem == 2
                    ? darkGreenHeigh
                    : Colors.white,
                color: viewModel.calculationitem != 2
                    ? darkGreenHeigh
                    : Colors.white,
                onPress: () {
                  viewModel.setCalculationItems(2);
                },
              ),
            ],
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                        text: 'borrowingAmount',
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    CustomTextField(
                      controller: viewModel.borrowingAmountCtrl,
                      hintText: '\$',
                      height: 40,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                        text: 'apr', fontSize: 12, fontWeight: FontWeight.w500),
                    viewModel.calculationitem == 0 ||
                            viewModel.calculationitem == 2
                        ? CustomTextField(
                            number: false,
                            controller: viewModel.aprCtrl,
                            hintText: '%',
                            height: 40,
                            textAlign: TextAlign.center,
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: ReturnButton(
                              text:
                                  "${viewModel.paymentTable.interestRate ?? 23224}",
                              height: 40,
                              onPress: () {},
                              btmRightRadius: 5,
                              topLeftRadius: 5,
                              topRightRadius: 5,
                              btmLeftRadius: 5,
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                        text: 'monthlyRepaymentAmount',
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    viewModel.calculationitem == 0 ||
                            viewModel.calculationitem == 1
                        ? CustomTextField(
                            controller: viewModel.monthyRepaymentAmountCtrl,
                            hintText: '\$',
                            height: 40,
                            textAlign: TextAlign.center,
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: ReturnButton(
                              text:
                                  "${viewModel.paymentTable.scheduledPaymentAmount ?? 23224}",
                              height: 40,
                              onPress: () {},
                              btmRightRadius: 5,
                              topLeftRadius: 5,
                              topRightRadius: 5,
                              btmLeftRadius: 5,
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                        text: 'tenor',
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    viewModel.calculationitem == 1 ||
                            viewModel.calculationitem == 2
                        ? CustomTextField(
                            number: false,
                            controller: viewModel.tenorCtrl,
                            hintText: '%',
                            height: 40,
                            textAlign: TextAlign.center,
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: ReturnButton(
                              text:
                                  "${viewModel.paymentTable.totalNumOfPayments ?? 23224}",
                              height: 40,
                              onPress: () {},
                              btmRightRadius: 5,
                              topLeftRadius: 5,
                              topRightRadius: 5,
                              btmLeftRadius: 5,
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                      text: 'totalRepaymentAmount',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: ReturnButton(
                        text:
                            "${viewModel.paymentTable.totalPaymentAmount ?? 23224}",
                        height: 40,
                        onPress: () {},
                        btmRightRadius: 5,
                        topLeftRadius: 5,
                        topRightRadius: 5,
                        btmLeftRadius: 5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.46,
                child: Column(
                  children: [
                    CustomText(
                      text: 'totalInterest',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    verticalSpaceTiny,
                    ReturnButton(
                      text:
                          "${viewModel.paymentTable.totalInterestAmount ?? 232}",
                      onPress: () {},
                      height: 40,
                      btmRightRadius: 5,
                      topLeftRadius: 5,
                      topRightRadius: 5,
                      btmLeftRadius: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
          verticalSpaceSmall,
          SubmitButton(
            onPress: viewModel.recalculate,
            height: 40,
            text: 'recalculate',
            width: width * 0.46,
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
