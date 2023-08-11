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
  TextEditingController verifyCode = TextEditingController();
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  String interestProducts = "Loans";
  String knownChannel = "Facebook";
  bool receiveNews = true;
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

  sendEmailCode() async {
    log("Runing....");
    Map<String, dynamic> body = {"email": emailCtrl.text, "type": "signup"};
    var data = await _authnService.sendEmailCode(body);
    if (data["success"] == true) {
      log("code send success..");
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }

  signupByEmail() async {
    log("Runing....");
    Map<String, dynamic> body = {
      "code": verifyCode.text,
      "email": emailCtrl.text,
      "firstName": firstNameCtrl.text,
      "interestProducts": [interestProducts],
      "knownChannel": knownChannel,
      "lastName": lastNameCtrl,
      "password": passwordCtrl.text,
      "receiveNews": receiveNews
    };
    var data = await _authnService.signupByEmail(body);
    if (data["success"] == true) {
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }

  loginWithEmail() async {
    log("Runing....");
    Map<String, dynamic> body = {
      "login": emailCtrl.text,
      "password": passwordCtrl.text,
    };
    var data = await _authnService.loginWithEmail(body);
    if (data?["success"] == true) {
      _navigationService.navigateToMemberSettingView();
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }
}
