import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/bottom_bar.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/common/icon_box_btn/icon_box_btn.dart';
import 'landing_viewmodel.dart';

class LandingView extends StackedView<LandingViewModel> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LandingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(() {}, () {}),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/screens/mainbg.png"), fit: BoxFit.fill),
        ),
        child: Column(children: [
          Image.asset(
            "assets/screens/landing/cover_image.png",
            fit: BoxFit.fill,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBoxBtn(
                      height: 110,
                      width: 120,
                      color: kcDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      text: "Loans",
                      btmimage: myIcons.loans,
                      imgwidth: 50,
                    ),
                    horizontalSpaceSmall,
                    IconBoxBtn(
                      height: 110,
                      width: 120,
                      color: kcDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      text: "Morgages",
                      btmimage: myIcons.morgages,
                      imgwidth: 50,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBoxBtn(
                      height: 110,
                      width: 120,
                      color: kcDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      text: "Insurances",
                      btmimage: myIcons.svg,
                      imgwidth: 50,
                    ),
                    horizontalSpaceSmall,
                    IconBoxBtn(
                      height: 110,
                      width: 120,
                      color: kcDarkGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      text: "Credit Cards",
                      btmimage: myIcons.creditCard,
                      imgwidth: 50,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                IconBoxBtn(
                  height: 110,
                  width: 120,
                  color: kcDarkGreyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  text: "Sign Up/Login",
                  btmimage: myIcons.regularUser,
                  imgwidth: 50,
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: bottomBar(ReturnButton(text: "Return",imageLeft: myIcons.returnIcon1,))
    );
  }

  @override
  LandingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingViewModel();
}
