import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/auth_service.dart';

class MemberLoginViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _authnService = locator<AuthService>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController verifyCode = TextEditingController();
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();
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
  String countryCode = "+39";
  void showResetPassword() {
    _dialogService.showCustomDialog(
      variant: DialogType.resetPassword,
    );
  }

  var changeTab = 0;
  setChangeTab(value) {
    changeTab = value;
    notifyListeners();
  }

  setInterestProducts(value) {
    interestProducts = value;
    notifyListeners();
  }

  setKnownChannel(value) {
    knownChannel = value;
    notifyListeners();
  }

  setCountryCode(value) {
    countryCode = value.toString();
    notifyListeners();
  }

  setReceiveNews(value) {
    log(value);
    receiveNews = value;
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
      _navigationService.back();
    } else {
      log(data["message"].toString());
    }
  }

  login(type) async {
    log("Runing....");
    Map<String, dynamic> body = {
      "login":
          type == "email" ? emailCtrl.text : "$verifyCode${phoneNoCtrl.text}",
      "password": passwordCtrl.text,
    };
    var data = await _authnService.login(body);
    if (data?["success"] == true) {
      _navigationService.navigateToMemberSettingView();
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }

  sendSmsCode() async {
    log("Runing....");
    Map<String, dynamic> body = {"mobile": "+923454335400", "type": "signup"};
    var data = await _authnService.sendSmsCode(body);
    if (data?["success"] == true) {
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }

  signupByMobile() async {
    log("Runing....");
    Map<String, dynamic> body = {
      "code": verifyCode.text,
      "firstName": firstNameCtrl.text,
      "interestProducts": [interestProducts],
      "knownChannel": knownChannel,
      "lastName": lastNameCtrl,
      "mobile": "$verifyCode${phoneNoCtrl.text}",
      "password": passwordCtrl.text,
      "receiveNews": receiveNews
    };
    var data = await _authnService.signupByMobile(body);
    if (data["success"] == true) {
      log(data.toString());
      _navigationService.back();
    } else {
      log(data["message"].toString());
    }
  }
}
