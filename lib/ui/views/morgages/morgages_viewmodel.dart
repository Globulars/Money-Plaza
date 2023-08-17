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

  TextEditingController mortgagesPropertyValuationCtrl =TextEditingController();
      
  TextEditingController mortgagesValueRatioCtrl = TextEditingController();
  TextEditingController mortgagesTenorCtrl = TextEditingController();
  TextEditingController mortgagesMonthlyIncomeCtrl = TextEditingController();
  String mortgages = "New Owner / Mortgages Transfer";

  String mortgagesForApi = "first_sub_mortgage";

  // "New Owner / Mortgages Transfer";
  String typeOfProperty = "New building";

  // final mortgagesList = [
  //   "first_sub_mortgage",
  //   "secondary_mortgage",
  //   "owner_private_loan"
  // ];

  final mortgagesList = [
    "New Owner / Mortgages Transfer",
    "Second Mortgages",
    "Property Owner Loan"
  ];
  //  Map<String, dynamic> mortgagesList = {

  //     "first_sub_mortgage": "New Owner / Mortgages Transfer",
  //     "secondary_mortgage": "Second Mortgages",
  //     "owner_private_loan":"Property Owner Loan"
  //   };
  // [
  //
  // ];
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
    if (value == mortgagesList[0]) {
      mortgagesForApi = "first_sub_mortgage";
    } else if (value == mortgagesList[1]) {
      mortgagesForApi = "secondary_mortgage";
    } else {
      mortgagesForApi = "owner_private_loan";
    }
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
        mortgageList: [mortgagesForApi],
        typePropertyList: [typeOfProperty]);
  }
}
