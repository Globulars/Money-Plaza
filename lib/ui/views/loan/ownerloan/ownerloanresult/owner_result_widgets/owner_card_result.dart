import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../../../widgets/common/icon_box_btn/text.dart';
import '../ownerloanresult_viewmodel.dart';

class OwnerResultCard extends ViewModelWidget<OwnerloanresultViewModel> {
  const OwnerResultCard({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    OwnerloanresultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
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
                    width: width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(myIcons.weLend),
                        verticalSpaceTiny,
                        CustomText(
                          text: "weLend",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        verticalSpaceTiny,
                        CustomText(
                            text: "borrowingAmountTenor"
                                .tr(args: ["1000", "7000", "12 - 32"]),
                            color: Colors.black87,
                            fontSize: 15),
                        verticalSpaceTiny,
                        CustomText(
                            text: "limitedTimeOffer",
                            color: Colors.black54,
                            fontSize: 14),
                        verticalSpaceTiny,
                        CustomText(
                          text: "moneyLender".tr(args: ["3232"]),
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "2.75%",
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
                        SubmitButton(
                          image: myIcons.compare2,
                          boxColor: Colors.transparent,
                          text: 'Compare',
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                        verticalSpaceSmall,
                        SubmitButton(
                          image: myIcons.apply,
                          text: 'Apply',
                          fontSize: 18,
                          height: 40,
                        ),
                        verticalSpaceSmall,
                        SubmitButton(
                          image: myIcons.detail,
                          boxColor: Colors.transparent,
                          text: 'Details',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
