import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class CreditCardViewModel extends BaseViewModel {
  var formKey = GlobalKey<FormState>();
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();

  // final _toasterService = locator<ToasterService>();

  String cardProvider = "visa";
  String cardType = "personal";
  String financialInstitutes = "dBSBankHongKong";
  String financialInstitutesValue = "53";
  final TextEditingController annualIncomeCtrl = TextEditingController();
  List<String> cardProviderList = [
    "visa",
    "master",
    "americenExpress",
    "unionPay"
  ];
  List<String> cardList = [
    "debit",
    "personal",
    "corporateCredit",
    "studentCredit",
  ];
  List<String> financialInstitutesList = [
    "dBSBankHongKong",
    "primeCredit",
    "chinaCiticBankInternational",
  ];

  setCardProvider(value) {
    cardProvider = value;
    notifyListeners();
  }

  setCard(value) {
    cardType = value;
    notifyListeners();
  }

  setFinancialInstitutes(value) {
    financialInstitutes = value;
    if (value == financialInstitutesList[0]) {
      financialInstitutesValue = "53";
    } else if (value == financialInstitutesList[0]) {
      financialInstitutesValue = "19";
    } else if (value == financialInstitutesList[0]) {
      financialInstitutesValue = "76";
    }
    notifyListeners();
  }

  resetAll() {
    cardProvider = cardProviderList[0];
    cardType = cardList[0];
    annualIncomeCtrl.text = "";
    financialInstitutesValue = "53";
    financialInstitutes = financialInstitutesList[0];
    notifyListeners();
  }

  back() {
    _navigationService.back();
  }

  navigateToCreditCardResult(_financialInstitutesValue) {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      _navigationService.navigateToCreditResultView(
        annualIncome: _apiHelperService.removeComa(annualIncomeCtrl.text),
        issuersList: [cardProvider],
        typesList: [cardType],
        financialInstitutesList: _financialInstitutesValue,
      );
    }
  }
}
