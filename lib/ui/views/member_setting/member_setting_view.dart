import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
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
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
