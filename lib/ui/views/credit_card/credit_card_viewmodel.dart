import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/credit_card_service.dart';
// import '../../../services/toaster_service.dart';

class CreditCardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _creditCardService = locator<CreditCardService>();
  // final _toasterService = locator<ToasterService>();

  String cardProvider = "Select the Card Providers";
  String card = "Select type of Card";
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
    "Personal Card",
    "Corporate Credit Card",
    "Student Credit Card",
    "Debit Card",
  ];

  setCardProvider(value) {
    cardProvider = value;
    notifyListeners();
  }

  setCard(value) {
    card = value;
    notifyListeners();
  }

  navigateToCreditCardResult() {
    _navigationService.navigateToCreditResultView();
  }


}
