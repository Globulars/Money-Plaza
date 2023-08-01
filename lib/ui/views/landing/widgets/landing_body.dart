import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../landing_viewmodel.dart';

class LandingBody extends ViewModelWidget<LandingViewModel> {
  const LandingBody({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LandingViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconBoxBtn(
                height: width / 3,
                width: width / 3,
                color: kcDarkGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                text: "loans",
                btmimage: myIcons.loans,
                imgwidth: 50,
                onPress: viewModel.navigateToLoan,
              ),
              horizontalSpaceSmall,
              IconBoxBtn(
                height: width / 3,
                width: width / 3,
                color: kcDarkGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                text: "morgages",
                btmimage: myIcons.morgages,
                imgwidth: 50,
                onPress: viewModel.navigateToMorgages,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconBoxBtn(
                height: width / 3,
                width: width / 3,
                color: kcDarkGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                text: "insurances",
                btmimage: myIcons.svg,
                imgwidth: 50,
              ),
              horizontalSpaceSmall,
              IconBoxBtn(
                height: width / 3,
                width: width / 3,
                color: kcDarkGreyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                text: "creditCards",
                btmimage: myIcons.creditCard,
                imgwidth: 50,
                onPress: viewModel.navigateToCreditCard,
              ),
            ],
          ),
          verticalSpaceSmall,
          IconBoxBtn(
            height: width / 3,
            width: width / 3,
            color: kcDarkGreyColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            text: "signUpLogin",
            btmimage: myIcons.regularUser,
            imgwidth: 50,
            onPress: viewModel.navigateToMemberLogin,
          ),
          verticalSpaceMedium
        ],
      ),
    );
  }
}
