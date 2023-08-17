import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
// import '../../../services/toaster_service.dart';
// import 'package:money_plaza/services/mortgage_service.dart';

class MorgagesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  var formKey = GlobalKey<FormState>();
  // final _dialogService = locator<DialogService>();
  // final _toasterService = locator<ToasterService>();
  // final _mortgagesService = locator<MortgageService>();

  TextEditingController mortgagesPropertyValuationCtrl =
      TextEditingController(text: "10000");
  TextEditingController mortgagesValueRatioCtrl =
      TextEditingController(text: "15");
  TextEditingController mortgagesTenorCtrl = TextEditingController(text: "25");
  TextEditingController mortgagesMonthlyIncomeCtrl =
      TextEditingController(text: "5000000");

  String mortgages = "New Owner / Mortgages Transfer";
  String mortgagesForApi = "first_sub_mortgage";

  String typeOfProperty = "New building";
  String typeOfPropertyForApi = "new_property";

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
    if (value == typeOfPropertyList[0]) {
      typeOfPropertyForApi = "new_property";
    } else if (value == typeOfPropertyList[1]) {
      typeOfPropertyForApi = "private_property";
    } else if (value == typeOfPropertyList[2]) {
      typeOfPropertyForApi = "estate";
    } else if (value == typeOfPropertyList[3]) {
      typeOfPropertyForApi = "hos_property1";
    } else {
      typeOfPropertyForApi = "hos_property2";
    }
    typeOfProperty = value;
    notifyListeners();
  }

  resetAll() {
    mortgagesPropertyValuationCtrl.clear();
    mortgagesValueRatioCtrl.clear();
    mortgagesTenorCtrl.clear();
    mortgagesMonthlyIncomeCtrl.clear();
  }

  navigateToMorgagesResult() {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      _navigationService.navigateToMorgagesResultView(
          mortgagesPropertyValuation: mortgagesPropertyValuationCtrl.text,
          mortgagesValueRatio: mortgagesValueRatioCtrl.text,
          mortgagesTenor: mortgagesTenorCtrl.text,
          mortgagesMonthlyIncome: mortgagesMonthlyIncomeCtrl.text,
          mortgageList: [mortgagesForApi],
          typePropertyList: [typeOfProperty]);
    }
  }
}
