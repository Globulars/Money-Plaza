import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import 'icon_box_btn/submit_button.dart';
import 'icon_box_btn/text.dart';

Widget resultCard(context, {detailPage = 0}) {
  final _navigationService = locator<NavigationService>();
  void applyConfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

  final _dialogService = locator<DialogService>();
  void showDetail() {
    _dialogService.showCustomDialog(
      variant: DialogType.detailFilte,
    );
  }

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
                  Image.asset(
                    myIcons.weLend,
                    width: 90,
                  ),
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
                          .tr(args: ["10,000", "70,000", "12 - 60"]),
                      color: Colors.black87,
                      fontSize: 15),
                  verticalSpaceTiny,
                  CustomText(
                      text: "limitedTimeOffer",
                      color: darkGreenLight,
                      fontSize: 14),
                  verticalSpaceTiny,
                  CustomText(
                    text: "moneyLender".tr(args: ["#00093/2022"]),
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "valueChange".tr(args: ["2.75%"]),
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
                    imgwidth: 16,
                    boxColor: Colors.transparent,
                    text: 'compare',
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                  verticalSpaceSmall,
                  SubmitButton(
                    image: myIcons.apply,
                    imgwidth: 16,
                    text: 'apply',
                    fontSize: 18,
                    height: 40,
                    onPress: applyConfirm,
                  ),
                  verticalSpaceSmall,
                  SubmitButton(
                    image: myIcons.detail,
                    imgwidth: 30,
                    boxColor: Colors.transparent,
                    text: 'details',
                    color: Colors.black,
                    fontSize: 18,
                    onPress: showDetail,
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
