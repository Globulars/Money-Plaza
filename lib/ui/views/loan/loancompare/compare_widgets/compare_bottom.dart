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

    Widget detailData(text, height) {
      return Container(
        color: Colors.white,
        height: 30,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: Row(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: compareData.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: width * 0.42,
                      child: Center(
                        child: CustomText(text: text),
                      ),
                    );
                  }),
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
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
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: compareData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.42,
                          child: Center(
                            child: CustomText(
                                text:
                                    '${compareData[0].minInterestRate}% - ${compareData[0].maxInterestRate}%'),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
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
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: compareData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.42,
                          child: Center(
                            child: CustomText(
                                text: compareData[index].incentive.toString()),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
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
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: compareData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.42,
                          child: Center(
                            child: CustomText(text: "termLoan"),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'moneyRepaymentDetails',
            )),
          ),
          ScheduleLoanBuilder(),
          verticalSpaceTiny,
          Container(
            height: 30,
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
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: compareData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.42,
                          child: Center(
                            child: CustomText(
                                text: compareData[index]
                                    .totalPaymentAmount
                                    .toString()),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'totalInterest',
            )),
          ),
          detailData(compareData[1].interestRate.toString(), 30),
          Container(
            color: Colors.white,
            height: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: Row(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: compareData.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: width * 0.42,
                          child: Center(
                            child: CustomText(
                                text:
                                    compareData[index].interestRate.toString()),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          verticalSpaceTiny,
          Container(
            height: 30,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Center(
                child: CustomText(
              text: 'earlyPaybackPenalty1',
            )),
          ),
          detailData("No", 30),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
