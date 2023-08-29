import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/select_country.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/api_helper_service.dart';

class PersonalInfoViewModel extends BaseViewModel {
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();
  TextEditingController firstNameCtrl = TextEditingController(text: "Mudassir");
  TextEditingController lastNameCtrl = TextEditingController(text: "Mukhtar");
  TextEditingController emailCtrl =
      TextEditingController();
  TextEditingController contactNumCtrl =
      TextEditingController();
  String dob = "";
  var gender = '';
  String doYouKnow = "Facebook";
  SelectCountry? countryList;
  List<SelectCountry> countryDataList = [];
  final doYouKnowList = [
    "Facebook",
    "Search Engine",
    "Friends",
    "Youtube",
    "Instragram",
    "Others"
  ];

  setGender(value) {
    gender = value;
    notifyListeners();
  }

  setDob(value) {
    dob = value;
    notifyListeners();
  }

  setSelectCountry(value) {
    countryList = value;
    notifyListeners();
  }

  setDoYouKnow(value) {
    doYouKnow = value;
    notifyListeners();
  }
   

  Future<List<SelectCountry>> countryNameListData() async {
    log("==================>");
    if (countryDataList.isEmpty) {
      var data = await _apiHelperService.getApi(_apiUrl.selectCountries);
      if (data?["success"] == true) {
        List dataList = data["data"];
        countryDataList =
            dataList.map((data) => SelectCountry.fromJson(data)).toList();
        countryList = countryDataList[0];
        log(countryList.toString());
        notifyListeners();
        return countryDataList;
      } else {
        log(data.toString());
        throw Exception(data["message"].toString());
      }
    } else {
      return countryDataList;
    }
  }
}
