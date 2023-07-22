import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import 'morgages_splash_viewmodel.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

class MorgagesSplashView extends StackedView<MorgagesSplashViewModel> {
  const MorgagesSplashView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesSplashViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: '[[[[[[[ ]]]]]]]',
                color: darkGreenHeigh,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
              verticalSpaceMedium,
              CustomText(
                text: 'leaveyourInformation',
                color: darkGreenHeigh,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
              verticalSpaceMedium,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    myIcons.group,
                    width: 100,
                  ),
                  // horizontalSpaceSmall,
                  Image.asset(
                    myIcons.groupPenc,
                    width: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  MorgagesSplashViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesSplashViewModel();

  @override
  void onViewModelReady(MorgagesSplashViewModel viewModel) => SchedulerBinding
      .instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupMorgaesInfo());
}
