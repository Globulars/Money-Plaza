import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'member_setting_viewmodel.dart';

class MemberSettingView extends StackedView<MemberSettingViewModel> {
  const MemberSettingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberSettingViewModel viewModel,
    Widget? child,
  ) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 170,
                      width: width * 1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/best_deals.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    CustomText(
                      text: "memberZone",
                      color: kcPureWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      IconBoxBtn(
                        boxcolor: lightGreenHeigh,
                        text: "personalInfo",
                        height: 80,
                        fontSize: 20,
                        color: darkGreenHeigh,
                        margin: width * 0.02,
                        onPress: viewModel.navigateToPersonalInfoView,
                      ),
                      IconBoxBtn(
                        boxcolor: lightGreenHeigh,
                        text: "moneyPlazaReward",
                        height: 80,
                        fontSize: 20,
                        color: darkGreenHeigh,
                        margin: width * 0.02,
                        onPress: viewModel.navigateToReward,
                      ),
                      IconBoxBtn(
                        boxcolor: lightGreenHeigh,
                        text: "changePassword",
                        height: 80,
                        fontSize: 20,
                        color: darkGreenHeigh,
                        margin: width * 0.02,
                        onPress: viewModel.navigateToChangePassword,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'return',
            height: 40,
            width: 80,
          ),
        ),
      ],
    );
  }

  @override
  MemberSettingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberSettingViewModel();
}
