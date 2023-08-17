import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/mortgages_card.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'morgages_result_viewmodel.dart';

class MorgagesResultCard extends StackedView<MorgagesResultViewModel> {
  final List<MortgagesCard>? mortgagesCard;
  const MorgagesResultCard({Key? key, required this.mortgagesCard})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesResultViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: mortgagesCard!.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final mortgage = mortgagesCard![index];
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 6, top: 8, right: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              mortgage.company!.signLogoUrl.toString(),
                              width: 80,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                  child: Checkbox(
                                    value: mortgage.checkBox,
                                    onChanged: (value) {
                                      viewModel.setCardSelect(value, mortgage);
                                    },
                                  ),
                                ),
                                CustomText(
                                  text: 'select',
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ],
                            )
                          ],
                        ),
                        verticalSpaceTiny,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: 'minimumMortgages',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: 'interestRate',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: "${mortgage.interestRate}%",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: 'highest',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: 'cashRebate',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: '${mortgage.totalRebate}',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: 'minMonthly',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: 'repayment',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  CustomText(
                                    text: mortgage.minPaymentAmountStr ?? "",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceTiny,
                        CustomText(
                          text: mortgage.advantage.toString(),
                          fontSize: 12,
                          color: darkGreenLight,
                        ),
                      ],
                    ),
                  )));
            },
          ),
          verticalSpaceLarge
        ],
      )),
    );
  }

  @override
  MorgagesResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesResultViewModel();
}
