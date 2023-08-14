import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../services/Models/credit_card.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'credit_result_viewmodel.dart';

class CreditCardWiget extends ViewModelWidget<CreditResultViewModel> {
  final List<CreditCard>? creditCard;
  const CreditCardWiget({
    Key? key,
    required this.creditCard,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CreditResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;

    return ListView.builder(
      itemCount: creditCard?.length ?? 0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        CreditCard _creditCard = creditCard![index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
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
                            Image.network(
                              _creditCard.signImageUrl.toString(),
                              width: 80,
                            ),
                            horizontalSpaceTiny,
                            SizedBox(
                              width: width * 0.45,
                              child: CustomText(
                                text: _creditCard.name.toString(),
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
                    SizedBox(
                      height: 70,
                      width: width - 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              creditCard![index].textFeatureItems?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            List<TextFeatureItems> featureItems =
                                creditCard![index].textFeatureItems ?? [];
                            return SizedBox(
                              width: width * 0.28,
                              child: Column(
                                children: [
                                  CustomText(
                                    text: featureItems[index].name.toString(),
                                    color: Colors.black.withOpacity(0.6),
                                    textAlign: TextAlign.center,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomText(
                                    text: "\$${featureItems[index].value}",
                                    textAlign: TextAlign.center,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    CustomText(
                        text: _creditCard.advantage.toString(),
                        color: Colors.black,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w400),
                    CustomText(
                        text: "exclusiveOffer".tr(args: ["304"]),
                        color: darkGreenLight,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w400),
                    verticalSpaceTiny,
                    CustomText(
                        text: "noteMoney",
                        color: Colors.black,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.w300),
                  ],
                )),
          ),
        );
      },
    );
  }
}
