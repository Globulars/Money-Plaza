import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/auth_service.dart';

class ResetPasswordDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authnService = locator<AuthService>();

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController verifyCode = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();
  var initialIndex = 0;

  setInitialIndex(value) {
    initialIndex = value;
    notifyListeners();
  }

  resetAll() {
    emailCtrl.clear();
    verifyCode.clear();
    passwordCtrl.clear();
    confirmPasswordCtrl.clear();
    phoneNoCtrl.clear();
  }

  sendForgetPasswordCodeByEmail() async {
    log("Runing....");
    Map<String, dynamic> body = {"email": emailCtrl.text};
    var data = await _authnService.sendForgetPasswordCodeByEmail(body);
    if (data?["success"] == true) {
      log(data.toString());
    } else {
      log(data["message"].toString());
    }
  }

  updatePasswordByEmailCode() async {
    log("Runing....");
    Map<String, dynamic> body = {
      "code": verifyCode.text,
      "email": emailCtrl.text,
      "password": passwordCtrl.text
    };
    var data = await _authnService.updatePasswordByEmailCode(body);
    if (data?["success"] == true) {
      log(data.toString());
      _navigationService.back();
    } else {
      log(data["message"].toString());
    }
  }
}
