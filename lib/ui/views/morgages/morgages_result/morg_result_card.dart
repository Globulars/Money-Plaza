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
  final List<MortagesCard>? mortgagesCard;
  const MorgagesResultCard({Key? key,required this.mortgagesCard}) : super(key: key);

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
        itemCount: 6,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          myIcons.hSBC,
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
                                text: '1.3%',
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
                                text: '\$6,000',
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
                                text: '\$6713.5',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: 'moneyPlazaExclusiveOffer',
                      fontSize: 12,
                      color: darkGreenLight,
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: 'noteMoney',
                      fontSize: 12,
                    ),
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
