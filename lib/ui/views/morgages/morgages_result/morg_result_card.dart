import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/mortgages_card.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
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
          child: ListView.builder(
        shrinkWrap: true,
        itemCount: mortgagesCard!.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final mortgage = mortgagesCard![index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 6, top: 8,right: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          mortgage.company!.signLogoUrl.toString(),

                          // myIcons.hSBC,
                          width: 80,
                        ),
                        SubmitButton(
                          boxColor: Colors.transparent,
                          image: myIcons.compare2,
                          imgwidth: 12,
                          text: 'select',
                          color: Colors.black,
                          fontSize: 12,
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    //  SizedBox(
                    //   height: 50,
                    //   child: ListView.builder(
                    //       itemCount: mortgage.displayColumns?.length ?? 0,
                    //       shrinkWrap: true,
                    //       physics: NeverScrollableScrollPhysics(),
                    //       scrollDirection: Axis.horizontal,
                    //       itemBuilder: (BuildContext context, int index) {
                    //         List items = mortgage.displayColumns ?? [];
                          
                    //         return SizedBox(
                    //           width: width * 0.3,
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               CustomText(
                    //                 text: items[index],
                    //                 fontSize: 10,
                    //                 fontWeight: FontWeight.w600,
                    //                 color: Colors.black.withOpacity(0.6),
                    //               ),
                    //               CustomText(
                    //                 text: items[index].toString(),
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ],
                    //           ),
                    //         );
                    //       }),
                    // ),
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
                                text:"${mortgage.interestRate}%",
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
                                text:mortgage.minPaymentAmountStr??"\$6713.5",
                                //  '\$6713.5',
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
                      // 'moneyPlazaExclusiveOffer',
                      // fontSize: 12,
                      // color: darkGreenLight,
                    ),
                    verticalSpaceSmall,
                    // CustomText(
                    //   text: 'noteMoney',
                    //   fontSize: 12,
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }

  @override
  MorgagesResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesResultViewModel();
}
