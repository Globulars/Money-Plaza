import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/app_bar.dart';
import 'package:money_plaza/ui/widgets/bottom_bar.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'term_conditions_viewmodel.dart';

class TermConditionsView extends StackedView<TermConditionsViewModel> {
  const TermConditionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TermConditionsViewModel viewModel,
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
                text: viewModel.data,
                localization: false,
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
  TermConditionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TermConditionsViewModel();
}
