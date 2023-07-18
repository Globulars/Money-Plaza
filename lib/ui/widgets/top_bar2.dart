import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.dialogs.dart';
import '../../app/app.locator.dart';
import '../common/app_colors.dart';
import 'common/icon_box_btn/icon_box_btn.dart';

Widget topBar(context) {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  void showCalculator() {
    _dialogService.showCustomDialog(
      variant: DialogType.calculator,
    );
  }

  void showFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.filter,
    );
  }

  void compareScreen() {
    _navigationService.navigateToLoancompareView();
  }

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBoxBtn(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.22,
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.aiMatching,
              text: 'A.I.Matching',
              imgwidth: 25,
            ),
            IconBoxBtn(
              height: 70,
               imgwidth: 25,
              width: MediaQuery.of(context).size.width * 0.22,
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.filter,
              text: 'Filter',
              onPress: showFilter,
            ),
            InkWell(
              onTap: () {
                // viewModel.navigateCalculatorDialog();
              },
              child: IconBoxBtn(
                height: 70,
                 imgwidth: 20,
                width: MediaQuery.of(context).size.width * 0.22,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.calculator,
                text: 'Calculator',
                onPress: showCalculator,
              ),
            ),
            IconBoxBtn(
              height: 70,
               imgwidth: 20,
              width: MediaQuery.of(context).size.width * 0.22,
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.compare1,
              text: 'Compare',
              onPress: compareScreen,
            ),
          ],
        ),
      ),
      const Divider(
        color: darkGreenHeigh,
        height: 1.0,
        thickness: 6,
      ),
    ],
  );
}
