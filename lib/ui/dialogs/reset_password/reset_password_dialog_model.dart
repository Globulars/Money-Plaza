import 'package:flutter/material.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/toaster_service.dart';

class ResetPasswordDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _toasterService = locator<ToasterService>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();

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
    Map<String, dynamic> body = {"email": emailCtrl.text};
    var data = await _apiHelperService.postApi(_apiUrl.sendForgetPasswordCodeByEmail,body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();
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
    var data = await _apiHelperService.postApi(_apiUrl.updatePasswordByEmailCode,body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();
      _navigationService.back();
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }

  sendForgetPasswordCodeByMobile() async {
    Map<String, dynamic> body = {"mobile": emailCtrl.text};
    var data = await _apiHelperService.postApi(_apiUrl.sendForgetPasswordCodeByMobile,body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();
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
    var data = await _apiHelperService.postApi(_apiUrl.updatePasswordByMobileCode,body);
    if (data?["success"] == true) {
      _toasterService.successToast(data["message"]);
      resetAll();
      _navigationService.back();
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }
}
