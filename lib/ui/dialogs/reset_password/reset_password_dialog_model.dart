import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/auth_service.dart';
import '../../../services/toaster_service.dart';

class ResetPasswordDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _toasterService = locator<ToasterService>();

  final _authnService = locator<AuthService>();

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController verifyCode = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmPasswordCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();
  var initialIndex = 0;
  String countryCode = "+39";

  setInitialIndex(value) {
    initialIndex = value;
    notifyListeners();
  }
  setCountryCode(value) {
    countryCode = value.toString();
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
      _toasterService.successToast(data["message"]);
      resetAll();
      log(data.toString());
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }

  updatePasswordByEmailCode() async {
    Map<String, dynamic> body = {
      "code": verifyCode.text,
      "email": emailCtrl.text,
      "password": passwordCtrl.text
    };
    var data = await _authnService.updatePasswordByEmailCode(body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();

      log(data.toString());
      _navigationService.back();
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }
    sendForgetPasswordCodeByMobile() async {
    log("Runing....");
    Map<String, dynamic> body = {"mobile": emailCtrl.text};
    var data = await _authnService.sendForgetPasswordCodeByMobile(body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();
      log(data.toString());
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }

  updatePasswordByMobileCode() async {
    Map<String, dynamic> body = {
      "code": verifyCode.text,
      "email": emailCtrl.text,
      "password": passwordCtrl.text
    };
    var data = await _authnService.updatePasswordByMobileCode(body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();

      log(data.toString());
      _navigationService.back();
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }
}
