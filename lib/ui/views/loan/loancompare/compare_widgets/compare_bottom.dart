import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/custom_text.dart';
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

    Widget detailData(text) {
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
                      width: width * 0.48,
                      child: Center(
                        child: CustomText(
                          text: text,
                          localization: false,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      );
    }

    Widget _title(title) {
      return Container(
        height: 30,
        width: width * (0.49 * compareData.length),
        decoration: const BoxDecoration(
            color: lightGreenHeigh,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4))),
        child: Center(
            child: CustomText(
          text: title,
          localization: true,
        )),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _title("apr"),
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
                        width: width * 0.48,
                        child: Center(
                          child: CustomText(
                            text:
                                '${compareData[0].minInterestRate}% - ${compareData[0].maxInterestRate}%',
                            localization: false,
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
        verticalSpaceTiny,
        _title("moneyPlazaExclusive"),
        Container(
          color: Colors.white,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: compareData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.48,
                    child: Center(
                      child: CustomText(
                        text: compareData[index].incentive.toString(),
                        localization: false,
                      ),
                    ),
                  );
                }),
          ),
        ),
        verticalSpaceTiny,
        _title("repaymentType"),
        detailData("termLoan"),
        verticalSpaceTiny,
        _title("moneyRepaymentDetails"),
        const ScheduleLoanBuilder(),
        verticalSpaceTiny,
        _title("totalRepaymentAmount"),
        Container(
          color: Colors.white,
          height: 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: compareData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.48,
                    child: Center(
                      child: CustomText(
                        text: compareData[index].totalPaymentAmount.toString(),
                        localization: false,
                      ),
                    ),
                  );
                }),
          ),
        ),
        verticalSpaceTiny,
        _title("totalInterest"),
        detailData(compareData[1].interestRate.toString()),
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
                        width: width * 0.48,
                        child: Center(
                          child: CustomText(
                            text: compareData[index].interestRate.toString(),
                            localization: false,
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
        verticalSpaceTiny,
        _title("earlyPaybackPenalty1"),
        detailData("No"),
        verticalSpaceSmall,
      ],
    );
  }
}
