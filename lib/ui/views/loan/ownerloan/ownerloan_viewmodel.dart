// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class OwnerloanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  TextEditingController borrowingAmountCtrl =
      TextEditingController(text: "50000");
  TextEditingController monthlyIncomeCtrl =
      TextEditingController(text: "40000");
  String loanReason = "Business Expansion";
  //  String loanReasonFOrApi = "Business Expansion";
  String propertyOwner = "Have";
  // String propertyOwnerForApi = "";
  String salaryPayment = "Bank transfer";
  // String salaryPaymentForApi = "";
  String typeOfIncome = "Full Time";
  // String typeOfIncomeForApi = "";
  String proofOfIncome = "Bank Statement";
  // String proofOfIncomeForApi = "";
  var loanTenors = 6;
  var outStanding = 0;
  var initialIndex = 0;
  int currentIndex = 0;

  setInitialIndex() {
    initialIndex++;
    notifyListeners();
  }

  setLoanTenors(value) {
    loanTenors = value;
    notifyListeners();
  }

  setOutstandingLoan(value) {
    outStanding = value;
    notifyListeners();
  }

  navigateToApplyconfirm() {
    _navigationService.navigateToApplyconfirmView(match: true);
  }

  navigateToBackScreen() {
    _navigationService.back();
  }
}
