import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/app_bar.dart';
import 'package:money_plaza/ui/widgets/bottom_bar.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import 'privacy_policy_viewmodel.dart';

class PrivacyPolicyView extends StackedView<PrivacyPolicyViewModel> {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PrivacyPolicyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(context),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: CustomText(
                text: viewModel.dat,
              ),
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
                  onPress: viewModel.back,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  PrivacyPolicyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrivacyPolicyViewModel();
}
