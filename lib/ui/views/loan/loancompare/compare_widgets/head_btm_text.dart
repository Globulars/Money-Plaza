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
              text: 'APR',
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
              text: 'Money Plaza Exclusive Offer',
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
                      child: CustomText(
                          text:
                              'Successfully apply for MONEY PLAZA and you will receive HKD 100 cash*')),
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                          text:
                              '[Limited Time Offer Until December 31th] Successfully withdraw the specified loan amount and enjoy up to HK\$14,200 reward!')),
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
              text: 'Repayment Type',
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
                  CustomText(text: 'Term Loan'),
                  CustomText(text: 'Term Loan'),
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
              text: 'Money Repayment Details',
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
                            'First month\n\$4.281.29\nSecond month\n\$4.281.29\nLast month\n\$4.281.29',
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                      width: width * 0.42,
                      child: CustomText(
                        text:
                            'First month\n\$4.281.29\nSecond month\n\$4.281.29\nLast month\n\$4.281.29',
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
              text: 'Total Payment Amount',
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
              text: 'Total Interest',
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
              text: 'Early Payback Penalty',
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
                  CustomText(text: 'No'),
                  CustomText(text: 'No'),
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