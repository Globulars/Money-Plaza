import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class MemberSettingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToPersonalInfoView() {
    _navigationService.navigateToPersonalInfoView();
    toaster();
  }

  navigateToReward() {
    _navigationService.navigateToRewardView();
  }

  navigateToChangePassword() {
    _navigationService.navigateToChangePasswordView();
  }

  toaster() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
