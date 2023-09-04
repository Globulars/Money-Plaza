import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/toaster_service.dart';

class MemberLoginViewModel extends BaseViewModel {
  var formKey = GlobalKey<FormState>();

  final _dialogService = locator<DialogService>();
  final _toasterService = locator<ToasterService>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();
  final _navigationService = locator<NavigationService>();
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
  bool phoneFieldEmpty = false;

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
  resetAll() {
    emailCtrl.clear();
    verifyCode.clear();
    firstNameCtrl.clear();
    lastNameCtrl.clear();
    passwordCtrl.clear();
    confirmPasswordCtrl.clear();
    phoneNoCtrl.clear();
  }

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
    receiveNews = value;
    notifyListeners();
  }

  onChangeFunctionSetValue(v) {
    if (v.isEmpty) {
      phoneFieldEmpty = true;
    } else {
      phoneFieldEmpty = false;
    }
    notifyListeners();
  }

  sendEmailCode() async {
    if (emailCtrl.text != "") {
      setBusy(true);
      Map<String, dynamic> body = {"email": emailCtrl.text, "type": "signup"};
      var data = await _apiHelperService.postApi(_apiUrl.sendEmailCode, body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
      setBusy(false);
    } else {
      _toasterService.errorToast("Please enter your email");
    }
  }

  signupByEmail() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      setBusy(true);
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
      var data = await _apiHelperService.postApi(_apiUrl.signupByEmail, body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
        _navigationService.back();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
      setBusy(false);
    }
  }

  login(type) async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      setBusy(true);
      Map<String, dynamic> body = {
        "login": type == "email"
            ? emailCtrl.text
            : "$countryCode${phoneNoCtrl.text}",
        "password": passwordCtrl.text,
      };
      var data = await _apiHelperService.login(body);
      if (data?["success"] == true) {
        resetAll();
        _toasterService.successToast(data["message"]);
        _navigationService.navigateToMemberSettingView();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
      setBusy(false);
    }
  }

  sendSmsCode() async {
    if (phoneNoCtrl.text != '') {
      setBusy(true);
      Map<String, dynamic> body = {
        "mobile": "$verifyCode${phoneNoCtrl.text}",
        "type": "signup"
      };
      var data = await _apiHelperService.postApi(_apiUrl.sendSmsCode, body);
      if (data?["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
      setBusy(false);
    } else {
      _toasterService.errorToast("Please enter your phone number");
    }
  }

  signupByMobile() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      setBusy(true);
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
      var data = await _apiHelperService.postApi(_apiUrl.signupByMobile, body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
        _navigationService.back();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
      setBusy(false);
    }
  }
}
