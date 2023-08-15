import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class CreditCardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final _creditCardService = locator<CreditCardService>();
  // final _toasterService = locator<ToasterService>();

  String cardProvider = "Select the Card Providers";
  String cardType = "Select type of Card";
  final TextEditingController annualIncomeCtrl = TextEditingController();
  List<String> cardProviderList = [
    "Select the Card Providers",
    "VISA",
    "MASTER",
    "Americen Express",
    "UnionPay"
  ];
  List<String> cardList = [
    "Select type of Card",
    "Debit",
    "Personal",
    "Corporate Credit",
    "Student Credit",
  ];

  setCardProvider(value) {
    cardProvider = value;
    notifyListeners();
  }

  setCard(value) {
    cardType = value;
    notifyListeners();
  }

  navigateToCreditCardResult() {
    _navigationService.navigateToCreditResultView(
        annualIncome: annualIncomeCtrl.text,
        issuersList: [cardProvider],
        typesList: [cardType]);
  }
}
