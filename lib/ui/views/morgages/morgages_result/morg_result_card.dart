import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'morgages_result_viewmodel.dart';

class MorgagesResultCard extends StackedView<MorgagesResultViewModel> {
  const MorgagesResultCard({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(myIcons.hSBC,width: 80,),
                        SubmitButton(
                          boxColor: Colors.transparent,
                          image: myIcons.compare2,
                          imgwidth: 12,
                          text: 'Select',
                          color: Colors.black,
                          fontSize: 16,
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
                                text: 'Minimum Mortgages',
                                fontSize: 10,
                              ),
                              CustomText(
                                text: 'Interest Rate',
                                fontSize: 10,
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
                                text: 'Highest',
                                fontSize: 10,
                              ),
                              CustomText(
                                text: 'Cash Rebate',
                                fontSize: 10,
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
                                text: 'min.Monthly',
                                fontSize: 10,
                              ),
                              CustomText(
                                text: 'Repayment',
                                fontSize: 10,
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
                      text:
                          'Money Plaza Exclusive Offer: Exclusive HK\$500 cash coupon for every HK\$1 million mortgage amount (maximum HK\$8000 cash coupon)',
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text:
                          'Note:Money Plaza has the final decision on all offers',
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
