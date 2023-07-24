import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Scaffold(
          appBar: appBar(context),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                Image.asset(
                  "assets/screens/landing/cover_image.png",
                  fit: BoxFit.fitWidth,
                  width: width,
                ),
                Padding(
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
                ),
              ]),
            ),
          ),
        ),
        bottomBar(Container()),
      ],
    );
  }

  @override
  LandingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingViewModel();
}
