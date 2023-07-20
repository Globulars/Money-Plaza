// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../common/ui_helpers.dart';
import 'common/icon_box_btn/icon_box_btn.dart';

Widget loanCont(context) {
  final _navigationService = locator<NavigationService>();

  navigateToPersonalloan() {
    _navigationService.navigateToPersonalloanView();
  }

  navigateToOwnerloan() {
    _navigationService.navigateToOwnerloanView();
  }

  navigateToBlnstransfer() {
    _navigationService.navigateToBlnstransferView();
  }

  navigateToApplyconfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

  navigateToCommerical() {
    _navigationService.navigateToCommericalLoanView();
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconBoxBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.45,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            topimage: myIcons.personalLoans,
            text: 'personalLoans',
            onPress: navigateToPersonalloan,
          ),
          horizontalSpaceSmall,
          IconBoxBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.45,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            topimage: myIcons.ownerLoan,
            text: "propertyOwnerLoan",
            onPress: navigateToOwnerloan,
          ),
        ],
      ),
      verticalSpaceSmall,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconBoxBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.45,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            topimage: myIcons.balanceTrans,
            text: 'Loan Balance Transfer',
            onPress: navigateToBlnstransfer,
          ),
          horizontalSpaceSmall,
          IconBoxBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.45,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            topimage: myIcons.commericalLoan,
            text: 'Commerical Loans',
            onPress: navigateToCommerical,
          ),
        ],
      ),
      verticalSpaceSmall,
    ],
  );
}
