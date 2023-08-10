import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/auth_service.dart';

class MemberLoginViewModel extends BaseViewModel {
  TextEditingController emailCtrl = TextEditingController();
  String verifyCode = "";
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  String interestProducts = "";
  String knownChannel = "";
  final interestProductsList = [
    "Loans",
    "Mortgages",
    "Creadit Cards",
    "Accounts",
    "Insurances"
  ];
  final knownChannelList = [
    "Facebook",
    "Search Engine",
    "Friends",
    "Youtube",
    "Instagram",
    "Other"
  ];
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _authnService = locator<AuthService>();

  void showResetPassword() {
    _dialogService.showCustomDialog(
      variant: DialogType.resetPassword,
    );
  }

  var changeTab = 0;
  setChangeTab(value) {
    log(value.toString());
    changeTab = value;
    notifyListeners();
  }

  setInterestProducts(value) {
    log(value.toString());
    interestProducts = value;
    notifyListeners();
  }

  setKnownChannel(value) {
    log(value.toString());
    knownChannel = value;
    notifyListeners();
  }

  navigateToMemberSetting() {
    _navigationService.navigateToMemberSettingView();
  }

  sendEmailCode() async {
    log("Runing....");
    var data = await _authnService.sendEmailCode(emailCtrl.text, "signup");
    if (data["success"] == true) {
      verifyCode = data["code"];
      log("code send success..");
    } else {
      log("try again");
    }
  }

  signupByEmail() async {
    log("Runing....");
    Map<String, dynamic> body = {
      "code": verifyCode,
      "email": emailCtrl.text,
      "firstName": "string",
      "interestProducts": ["string"],
      "knownChannel": "string",
      "lastName": "string",
      "password": "string",
      "receiveNews": true
    };
    var data = await _authnService.signupByEmail(body);
    if (data["success"] == true) {
      log("code send success..");
    } else {
      log("try again");
    }
  }
}
