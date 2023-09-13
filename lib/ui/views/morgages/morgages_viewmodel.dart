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
      TextEditingController();
  TextEditingController mortgagesValueRatioCtrl = TextEditingController();
  TextEditingController mortgagesTenorCtrl = TextEditingController();
  TextEditingController mortgagesMonthlyIncomeCtrl = TextEditingController();

  String mortgages = "newOwnerMortgagesTransfer";
  String mortgagesForApi = "first_sub_mortgage";
  BankList? bankList;
  List<BankList> bankDataList = [];
  String typeOfProperty = "newBuilding";
  String typeOfPropertyForApi = "new_property";

  final mortgagesList = [
    "newOwnerMortgagesTransfer",
    "secondMortgages",
    "Property Owner Loan"
  ];

  final typeOfPropertyList = [
    "newBuilding",
    "privateHousing",
    "villageHouse",
    "hosHouseMakePrice",
    "houseUnpaidLandPrice"
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
    mortgagesTenorCtrl.text = "";
    typeOfProperty = "newBuilding";
    mortgagesValueRatioCtrl.text = "";
    typeOfPropertyForApi = "new_property";
    mortgagesForApi = "first_sub_mortgage";
    mortgagesMonthlyIncomeCtrl.text = "";
    mortgages = "newOwnerMortgagesTransfer";
    mortgagesPropertyValuationCtrl.text = "";
    notifyListeners();
  }

  navigateToMorgagesResult(List companyIds) {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      _navigationService.navigateToMorgagesResultView(
          mortgagesPropertyValuation: _apiHelperService.removeComa(mortgagesPropertyValuationCtrl.text),
          mortgagesValueRatio: _apiHelperService.removeComa(mortgagesValueRatioCtrl.text),
          mortgagesTenor: _apiHelperService.removeComa(mortgagesTenorCtrl.text),
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
