import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'credit_result_viewmodel.dart';

class CreditCardWiget extends ViewModelWidget<CreditResultViewModel> {
  const CreditCardWiget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CreditResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                myIcons.creditCardFrame,
                                width: 80,
                              ),
                              horizontalSpaceTiny,
                              SizedBox(
                                width: width * 0.45,
                                child: CustomText(
                                  text: 'dbsEminentVisa',
                                  fontSize: 18,
                                  maxLines: 2,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          SubmitButton(
                            image: myIcons.apply,
                            imgwidth: 12,
                            onPress: viewModel.navigateToSplashCreditCard,
                            text: 'apply',
                            height: 40,
                            width: 80,
                            // onPress: ,
                          ),
                        ],
                      ),
                      verticalSpaceTiny,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.28,
                            child: Column(
                              children: [
                                CustomText(
                                  text: "minimumAnnualSalary",
                                  color: Colors.black.withOpacity(0.6),
                                  textAlign: TextAlign.center,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: "\$150,000",
                                  textAlign: TextAlign.center,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.28,
                            child: Column(
                              children: [
                                CustomText(
                                  text: "4designated",
                                  color: Colors.black.withOpacity(0.6),
                                  textAlign: TextAlign.center,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: "5%",
                                  textAlign: TextAlign.center,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.28,
                            child: Column(
                              children: [
                                CustomText(
                                  text: "otherRetail",
                                  color: Colors.black.withOpacity(0.6),
                                  textAlign: TextAlign.center,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: "1%",
                                  textAlign: TextAlign.center,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CustomText(
                          text: "upTo5%Rebate".tr(args: ['5']),
                          color: Colors.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400),
                      CustomText(
                          text: "exclusiveOffer".tr(args: ["304"]),
                          color: Colors.black.withOpacity(0.6),
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400),
                      verticalSpaceTiny,
                      CustomText(
                          text: "noteMoney",
                          color: Colors.black,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
