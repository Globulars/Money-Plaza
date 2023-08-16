import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class CreditCardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final _creditCardService = locator<CreditCardService>();
  // final _toasterService = locator<ToasterService>();

  String cardProvider = "VISA";
  String cardType = "Personal";
  String financialInstitutes = "DBS Bank (Hong Kong)";
  String financialInstitutesValue = "53";
  final TextEditingController annualIncomeCtrl =
      TextEditingController(text: "100000");
  List<String> cardProviderList = [
    "VISA",
    "MASTER",
    "Americen Express",
    "UnionPay"
  ];
  List<String> cardList = [
    "Debit",
    "Personal",
    "Corporate Credit",
    "Student Credit",
  ];
  List<String> financialInstitutesList = [
    "DBS Bank (Hong Kong)",
    "Prime Credit",
    "China Citic Bank International",
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
    annualIncomeCtrl.text = "100000";
    financialInstitutesValue = "53";
    financialInstitutes = financialInstitutesList[0];
    notifyListeners();
  }
  back() {
    _navigationService.back();
  }
  navigateToCreditCardResult() {
    _navigationService.navigateToCreditResultView(
      annualIncome: annualIncomeCtrl.text,
      issuersList: [cardProvider],
      typesList: [cardType],
      financialInstitutesList: [financialInstitutesValue],
    );
  }
}
