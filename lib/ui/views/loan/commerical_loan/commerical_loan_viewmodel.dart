// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class CommericalLoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  TextEditingController borrowingAmountCtrl =
      TextEditingController(text: "50000");
      TextEditingController annualTurnoverCtrl =
      TextEditingController(text: "800000");
      TextEditingController digitalPaymentCtrl =
      TextEditingController(text: "10000");
      TextEditingController companyNameCtrl =
      TextEditingController(text: "Gloubular");
      TextEditingController futureReceivableAmountCtrl =
      TextEditingController(text: "90000");
      TextEditingController operationYearCtrl =
      TextEditingController(text: "10");


    String loanReason = "Business Expansion";
  String propertyOwner = "Have";
  String businessNature = "Business Service";
  String posSystemEquipment = "Have";
  String audioReport = "Have";

  final loanReasonList = [
    "Business Expansion",
    "Car Purchase",
    "Credit Card Repayment",
    "Debt Consolidation",
    "Children Education",
    "Self-Education",
    "Home Renovation",
    "Medical or Health Care",
    "Investment",
    "Bills Repayment",
    "Income Tax"
  ];
  setLoanReasonr(value) {
    loanReason = value;
    notifyListeners();
  }

  final propertyOwnerList = [
    "Have",
    "No",
  ];
  setPropertyOwner(value) {
    propertyOwner = value;
    notifyListeners();
  }

  final businessNatureList = [
    "Business Service",
    "Import and Export Trades",
    "Insurance",
    "Manufacturing",
    "Real Estates",
    "Retail",
    "Storage",
    "Transport",
    "Welfare Institutions",
    "Wholesale",
    "Catering",
    "Other Community and Social Services",
    "Personal Service",
    "Communication",
    "Construction",
    "Domestic Services",
    "Education Services",
    "Finance",
    "Hospitals",
    "Hotels and Boarding Houses",
    "Other"
  ];
  setBusinessNature(value) {
    businessNature = value;
    notifyListeners();
  }

   final posSystemEquipmentrList = [
    "Have",
    "No",
  ];
  setPosSystemEquipment(value) {
    posSystemEquipment = value;
    notifyListeners();
  }

  
   final audioReportList = [
    "Have",
    "No",
  ];
  setAudioReport(value) {
    audioReport = value;
    notifyListeners();
  }



  var loanTenors = 6;
  var outStanding = 10;
  var initialIndex = 0;
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
