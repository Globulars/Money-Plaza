import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
// import '../../../services/toaster_service.dart';
// import 'package:money_plaza/services/mortgage_service.dart';

class MorgagesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final _dialogService = locator<DialogService>();
  // final _toasterService = locator<ToasterService>();
  // final _mortgagesService = locator<MortgageService>();

  TextEditingController mortgagesPropertyValuationCtrl =
      TextEditingController();
  TextEditingController mortgagesValueRatioCtrl = TextEditingController();
  TextEditingController mortgagesTenorCtrl = TextEditingController();
  TextEditingController mortgagesMonthlyIncomeCtrl = TextEditingController();
  String mortgages = "New Owner / Mortgages Transfer";
  String typeOfProperty = "New building";

  final mortgagesList = [
    "New Owner / Mortgages Transfer",
    "Second Mortgages",
    "Property Owner Loan"
  ];
  final typeOfPropertyList = [
    "New building",
    "Private housing",
    "Village house",
    "HOS House (Make -up price)",
    "House (unpaid land price)"
  ];

  resetAll() {
    mortgagesPropertyValuationCtrl.clear();
    mortgagesValueRatioCtrl.clear();
    mortgagesTenorCtrl.clear();
    mortgagesMonthlyIncomeCtrl.clear();
  }

  setMortgages(value) {
    mortgages = value;
    notifyListeners();
  }

  setTypeOfProperty(value) {
    typeOfProperty = value;
    notifyListeners();
  }

  navigateToMorgagesResult() {
    _navigationService.navigateToMorgagesResultView(
        mortgagesPropertyValuation: mortgagesPropertyValuationCtrl.text,
        mortgagesValueRatio: mortgagesValueRatioCtrl.text,
        mortgagesTenor: mortgagesTenorCtrl.text,
        mortgagesMonthlyIncome: mortgagesMonthlyIncomeCtrl.text,
        mortgageList: [mortgages],
        typePropertyList: [typeOfProperty]);
  }
}
