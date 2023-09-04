import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/auth_service.dart';
import '../../../services/toaster_service.dart';

class MemberLoginViewModel extends BaseViewModel {
  var formKey = GlobalKey<FormState>();

  final _dialogService = locator<DialogService>();
  final _toasterService = locator<ToasterService>();

  final _navigationService = locator<NavigationService>();
  final _authnService = locator<AuthService>();
  TextEditingController emailCtrl =
      TextEditingController(text: "mudassirmukhtar4@gmail.com");
  TextEditingController verifyCode = TextEditingController();
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController passwordCtrl =
      TextEditingController(text: "qwerty1234");
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
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      Map<String, dynamic> body = {"email": emailCtrl.text, "type": "signup"};
      var data = await _authnService.sendEmailCode(body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }

  signupByEmail() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
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
        _toasterService.successToast(data["message"]);
        resetAll();
        _navigationService.back();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }

  login(type) async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      Map<String, dynamic> body = {
        "login":
            type == "email" ? emailCtrl.text : "$verifyCode${phoneNoCtrl.text}",
        "password": passwordCtrl.text,
      };
      var data = await _authnService.login(body);
      if (data?["success"] == true) {
        resetAll();
        _toasterService.successToast(data["message"]);

        _navigationService.navigateToMemberSettingView();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }

  sendSmsCode() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      Map<String, dynamic> body = {
        "mobile": "$verifyCode${phoneNoCtrl.text}",
        "type": "signup"
      };
      var data = await _authnService.sendSmsCode(body);
      if (data?["success"] == true) {
        _toasterService.successToast(data["message"]);
        resetAll();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }

  signupByMobile() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
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
        _toasterService.successToast(data["message"]);
        resetAll();
        _navigationService.back();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }
}
