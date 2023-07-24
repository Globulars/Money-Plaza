import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import 'reward_viewmodel.dart';

class RewardView extends StackedView<RewardViewModel> {
  const RewardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RewardViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubBar(
                width: width * 0.95,
                height: 50,
                text: "moneyPlazaReward",
                btmLeftRadius: 0,
                btmRightRadius: 0,
                fontSize: 16,
              ),
              const Divider(
                color: darkGreenHeigh,
                height: 1.0,
                thickness: 3,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        verticalSpaceMedium,
                        CustomText(text: "uploadApplicatioRecord"),
                        verticalSpaceMedium,
                        SubBar(
                          height: 40,
                          text: 'submitRewardClaim',
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          onPress: viewModel.navigateToRewardApplication,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
  RewardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardViewModel();
}
