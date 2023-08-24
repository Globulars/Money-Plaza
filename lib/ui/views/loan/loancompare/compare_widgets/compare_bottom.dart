import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../../loan_viewmodel.dart';
import 'schedule_loan_builder.dart';

class CompareBottom extends ViewModelWidget<LoanViewModel> {
  final List<LoanCard> compareData;

  const CompareBottom({required this.compareData, Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'apr',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text:
                          '${compareData[0].minInterestRate}% - ${compareData[0].maxInterestRate}%'),
                  CustomText(
                      text:
                          '${compareData[1].minInterestRate}% - ${compareData[1].maxInterestRate}%'),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'moneyPlazaExclusive',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                          text: compareData[0].incentive.toString())),
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                          text: compareData[1].incentive.toString())),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'repaymentType',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'termLoan'),
                  CustomText(text: 'termLoan'),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'moneyRepaymentDetails',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScheduleLoanBuilder(
                      amount: "${compareData[0].minIncome}",
                      numOfMonths: "${compareData[0].minTenor}",
                      interestRate: compareData[0].interestRate ?? 0.0),
                  ScheduleLoanBuilder(
                      amount: "${compareData[1].minIncome}",
                      numOfMonths: "${compareData[1].minTenor}",
                      interestRate: compareData[1].interestRate ?? 0.0),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'moneyRepaymentDetails',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: compareData[0].totalPaymentAmount.toString()),
                  CustomText(
                      text: compareData[1].totalPaymentAmount.toString()),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'totalInterest',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "${compareData[0].interestRate}%"),
                  CustomText(text: "${compareData[1].interestRate}%"),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'earlyPaybackPenalty1',
            )),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'no'),
                  CustomText(text: 'no'),
                ],
              ),
            ),
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
