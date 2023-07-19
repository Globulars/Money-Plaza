import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../common/app_colors.dart';
import '../common/icon_box_btn/icon_box_btn.dart';
import 'top_bar2_viewmodel.dart';

class TopBar2View extends StackedView<TopBar2ViewModel> {
  const TopBar2View({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TopBar2ViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBoxBtn(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.aiMatching,
                text: 'A.I.Matching',
                imgwidth: 22,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 22,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.filter,
                text: 'Filter',
                onPress: viewModel.showFilter,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 17,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.calculator,
                text: 'Calculator',
                onPress: viewModel.showCalculator,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 18,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.compare1,
                text: 'Compare',
                onPress: viewModel.compareScreen,
              ),
            ],
          ),
        ),
        const Divider(
          color: darkGreenHeigh,
          height: 1.0,
          thickness: 6,
        ),
        verticalSpaceTiny,
      ],
    );
  }

  @override
  TopBar2ViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TopBar2ViewModel();
}
