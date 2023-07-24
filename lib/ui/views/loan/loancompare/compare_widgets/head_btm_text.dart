import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../loancompare_viewmodel.dart';

class HeadBtmText extends ViewModelWidget<LoancompareViewModel> {
  const HeadBtmText({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoancompareViewModel viewModel,
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
                  CustomText(text: '1.12% - 42.86%'),
                  CustomText(text: '2.75% - 2.78%'),
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
                children: [
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(text: 'successfullyApply')),
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(text: 'limitedTimeOfferUntil')),
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
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                        text:
                            'firstMonth\n\$4.281.29\nsecondMonth\n\$4.281.29\lastMonth\n\$4.281.29',
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                        text:
                            'firstMonth\n\$4.281.29\nsecondMonth\n\$4.281.29\nlastMonth\n\$4.281.29',
                        textAlign: TextAlign.center,
                      )),
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
                  CustomText(text: '\$51.290'),
                  CustomText(text: '\$51.290'),
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
                  CustomText(text: '2.75%'),
                  CustomText(text: '1.12%'),
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
              text: 'earlyPaybackPenalty',
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
