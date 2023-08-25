// ignore_for_file: avoid_print
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import 'package:flutter/material.dart';


class PersonalloanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController borrowingAmount =
      TextEditingController(text: "50000");
       String loanReason = "Business Expansion";
      //  String loanReasonFOrApi = "Business Expansion";
      String propertyOwner= "Have";
  // String propertyOwnerForApi = "";

   final loanReasonList = [
    "Business Expansion",
    "Car Purchase",
    "Credit Card Repayment",
    "Debt Consolidation",
    "Car Purchase",
    "Car Purchase",
  ];

  var initialIndex = 0;
  var loanTenors = 6;
  var outStanding = 10;
  int currentIndex = 0;

  indexing(int index) {
    currentIndex = index;
    notifyListeners();
    print(currentIndex);
  }

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
