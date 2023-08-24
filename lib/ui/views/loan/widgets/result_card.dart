import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../../services/Models/loan_card.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../loan_viewmodel.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';

class ResultCard extends ViewModelWidget<LoanViewModel> {
  final LoanCard loanData;
  final double detailPage;

  const ResultCard({
    super.key,
    required this.loanData,
    this.detailPage = 0,
  });

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * (0.57 - detailPage),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      loanData.company?.signLogoUrl ?? "",
                      width: 80,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: loanData.company?.name ?? "",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                        text: "borrowingAmountTenor".tr(args: [
                          "${loanData.minAmount}",
                          "${loanData.maxAmount}",
                          "${loanData.minTenor} - ${loanData.maxTenor}"
                        ]),
                        color: Colors.black87,
                        fontSize: 15),
                    verticalSpaceTiny,
                    CustomText(
                        text: loanData.advantage.toString(),
                        color: darkGreenLight,
                        fontSize: 14),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "${loanData.interestRate.toString()}%",
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: "lowestAnnualInterest",
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    verticalSpaceSmall,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 20,
                            child: Checkbox(
                              value: loanData.checkBox,
                              onChanged: (value) {
                                viewModel.setCompareData(loanData);
                              },
                            ),
                          ),
                          SubmitButton(
                            boxColor: Colors.transparent,
                            text: 'compare',
                            color: Colors.black87,
                            onPress: () {},
                            fontSize: 18,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    SubmitButton(
                      image: myIcons.apply,
                      imgwidth: 16,
                      text: 'apply',
                      fontSize: 18,
                      height: 40,
                      onPress: viewModel.applyConfirm,
                    ),
                    verticalSpaceSmall,
                    SubmitButton(
                      image: myIcons.detail,
                      imgwidth: 30,
                      boxColor: Colors.transparent,
                      text: 'details',
                      color: Colors.black,
                      fontSize: 18,
                      onPress: () {
                        viewModel.showDetail(loanData);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}