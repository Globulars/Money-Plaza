import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/sub_bar.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    bool isToggled = true;
    return Stack(
      children: [
        Scaffold(
          appBar: appBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/screens/mainbg.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(children: [
              SubBar(
                text: "settings",
                image: myIcons.setting,
                height: 50,
                imgwidth: 30,
                divider: true,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "中国人English",
                          fontSize: 18,
                          color: kcDarkGreyColor,
                        ),
                        FlutterSwitch(
                          height: 20.0,
                          width: 40.0,
                          padding: 4.0,
                          toggleSize: 15.0,
                          borderRadius: 10.0,
                          activeColor: darkGreenHeigh,
                          value: viewModel.englishLanguage,
                          onToggle: (value) {
                            viewModel.setEnglishLanguage(context);
                          },
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "pushNotifications",
                          fontSize: 18,
                          color: kcDarkGreyColor,
                        ),
                        FlutterSwitch(
                          height: 20.0,
                          width: 40.0,
                          padding: 4.0,
                          toggleSize: 15.0,
                          borderRadius: 10.0,
                          activeColor: darkGreenHeigh,
                          value: isToggled,
                          onToggle: (value) {
                            //   setState(() {
                            //     isToggled = value;
                            //   });
                          },
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: "privacyPolicy",
                      fontSize: 18,
                      color: kcDarkGreyColor,
                    ),
                    verticalSpaceSmall,
                    CustomText(
                      text: "termsConditions",
                      fontSize: 18,
                      color: kcDarkGreyColor,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'return',
                height: 40,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
