// ignore_for_file: avoid_print
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import 'package:flutter/material.dart';

class PersonalloanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController borrowingAmountCtrl =
      TextEditingController(text: "50000");
  TextEditingController monthlyIncomeCtrl =
      TextEditingController(text: "40000");
  TextEditingController numOfLoansCtrl = TextEditingController(text: "");
  TextEditingController totalOutstandingLoanCtrl =
      TextEditingController(text: "5000");
  TextEditingController monthlyRepaymentCtrl =
      TextEditingController(text: "2000");
  String loanReason = "Business Expansion";
  String propertyOwner = "Have";
  String salaryPayment = "Bank transfer";
  String typeOfIncome = "Full Time";
  String proofOfIncome = "Bank Statement";

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

  final salaryPaymentList = ["Cash", "Bank transfer", "Cheque"];
  setSalaryPayment(value) {
    salaryPayment = value;
    notifyListeners();
  }

  final typeOfIncomeList = ["Full Time", "Part Time"];
  setTypeOfIncome(value) {
    typeOfIncome = value;
    notifyListeners();
  }

  final proofOfIncomeList = ["MPF", "Bank Statement", "Letter"];
  setProofOfIncome(value) {
    proofOfIncome = value;
    notifyListeners();
  }

  var initialIndex = 0;
  var loanTenors = 6;
  var outStanding = 0;
  int currentIndex = 0;

  // indexing(int index) {
  //   currentIndex = index;
  //   notifyListeners();
  //   print(currentIndex);
  // }

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
