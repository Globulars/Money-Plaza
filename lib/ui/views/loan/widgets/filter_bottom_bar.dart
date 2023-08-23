import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../loan_viewmodel.dart';
import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../../../widgets/filter_bar_widget.dart';

class FilterBottomBar extends ViewModelWidget<LoanViewModel> {
  const FilterBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
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
                boxcolor: darkGreenHeigh.withOpacity(0.8),
                topimage: myIcons.aiMatching,
                text: 'a.I.Matching',
                imgwidth: 22,
                onPress: viewModel.showHide,
                btmLeftRadius: 0,
                btmRightRadius: 0,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 22,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh.withOpacity(0.8),
                topimage: myIcons.filter,
                text: 'filter',
                onPress: viewModel.showFilter,
                btmLeftRadius: 0,
                btmRightRadius: 0,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 17,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh.withOpacity(0.8),
                topimage: myIcons.calculator,
                text: 'calculator',
                onPress: viewModel.showCalculator,
                btmLeftRadius: 0,
                btmRightRadius: 0,
              ),
              IconBoxBtn(
                height: 60,
                imgwidth: 18,
                width: MediaQuery.of(context).size.width * 0.23,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh.withOpacity(0.8),
                topimage: myIcons.compare1,
                text: 'compare',
                onPress: viewModel.compareScreen,
                btmLeftRadius: 0,
                btmRightRadius: 0,
              ),
            ],
          ),
        ),
        const Divider(
          color: darkGreenHeigh,
          height: 1.0,
          thickness: 3,
        ),
        verticalSpaceTiny,
        viewModel.showcard ? const FilterBarWidget() : Container(),
      ],
    );
  }
}
