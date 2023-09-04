import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/list_of_banks.dart';

class MorgagesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  var formKey = GlobalKey<FormState>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();

  TextEditingController mortgagesPropertyValuationCtrl =
      TextEditingController(text: "10000");
  TextEditingController mortgagesValueRatioCtrl =
      TextEditingController(text: "15");
  TextEditingController mortgagesTenorCtrl = TextEditingController(text: "25");
  TextEditingController mortgagesMonthlyIncomeCtrl =
      TextEditingController(text: "5000000");

  String mortgages = "New Owner / Mortgages Transfer";
  String mortgagesForApi = "first_sub_mortgage";
  BankList? bankList;
  List<BankList> bankDataList = [];
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

  setBankList(value) {
    bankList = value;
    notifyListeners();
  }

  resetAll() {
    bankList = bankDataList[0];
    mortgagesTenorCtrl.text = "25";
    typeOfProperty = "New building";
    mortgagesValueRatioCtrl.text = "15";
    typeOfPropertyForApi = "new_property";
    mortgagesForApi = "first_sub_mortgage";
    mortgagesMonthlyIncomeCtrl.text = "5000000";
    mortgages = "New Owner / Mortgages Transfer";
    mortgagesPropertyValuationCtrl.text = "10000";
    notifyListeners();
  }

  navigateToMorgagesResult(List companyIds) {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      _navigationService.navigateToMorgagesResultView(
          mortgagesPropertyValuation: mortgagesPropertyValuationCtrl.text,
          mortgagesValueRatio: mortgagesValueRatioCtrl.text,
          mortgagesTenor: mortgagesTenorCtrl.text,
          mortgagesMonthlyIncome: mortgagesMonthlyIncomeCtrl.text,
          mortgageList: [mortgagesForApi],
          typePropertyList: [typeOfProperty],
          companyIds: companyIds);
    }
  }

  back() {
    _navigationService.back();
  }

  Future<List<BankList>> mortgagesBankListData() async {
    if (bankDataList.isEmpty) {
      var data = await _apiHelperService
          .getApi(_apiUrl.getCompaniesByType + "mortgag");
      if (data?["success"] == true) {
        List dataList = data["data"];
        bankDataList = dataList.map((data) => BankList.fromJson(data)).toList();
        bankList = bankDataList[0];
        notifyListeners();
        return bankDataList;
      } else {
        throw Exception(data["message"].toString());
      }
    } else {
      return bankDataList;
    }
  }
}
