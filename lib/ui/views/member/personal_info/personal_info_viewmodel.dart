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
  String dob = "";
  var gender = '';
  SelectCountry? countryList;
  List<SelectCountry> countryDataList = [];

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
