import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/company_by_card.dart';
import 'package:money_plaza/services/Models/reward_details.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../common/app_url.dart';

class RewardApplicationViewModel extends BaseViewModel {
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();

  var formKey = GlobalKey<FormState>();
  String typeOfProduct = "Loan";
  CompanyByCard? institution;
  RewardDetails? rewardDetails;
  TextEditingController referenceNumberCtrl = TextEditingController(text: "");

  final typeOfProductList = [
    "Loan",
    "Mortgage",
    "Card",
    "Account",
    "Imsurance"
  ];
  setTypeOfProduct(value) {
    typeOfProduct = value;
    getCompaniesByType();
    notifyListeners();
  }

  List<CompanyByCard> institutionList = [];
  setInstitution(value) {
    institution = value;
    notifyListeners();
  }

  List<RewardDetails> rewardDetailsList = [];
  setRewardDetails(value) {
    rewardDetails = value;
    notifyListeners();
  }

  Future<List<CompanyByCard>> getCompaniesByType() async {
    if (institutionList.isEmpty) {
      var data = await _apiHelperService
          .getApi(Uri.parse(_apiUrl.getCompaniesByType + typeOfProduct));
      if (data?["success"] == true) {
        List dataList = data["data"];
        institutionList =
            dataList.map((data) => CompanyByCard.fromJson(data)).toList();
        institution = institutionList[0];
        notifyListeners();
        getRewardDetailsList();
        return institutionList;
      } else {
        throw Exception(data["message"].toString());
      }
    } else {
      return institutionList;
    }
  }

  Future<List<RewardDetails>> getRewardDetailsList() async {      

    if (rewardDetailsList.isEmpty) {
      Map<String, dynamic> body = {
        "companyId": institution?.id,
        "type": typeOfProduct.toLowerCase()
      };
      log(body.toString());
      var data =
          await _apiHelperService.postAuthApi(_apiUrl.getIncentives, body);
      if (data?["success"] == true) {
        List dataList = data["data"];
        rewardDetailsList =
            dataList.map((data) => RewardDetails.fromJson(data)).toList();
        if (rewardDetailsList.isNotEmpty) {
          rewardDetails = rewardDetailsList[0];
        }
        notifyListeners();
        return rewardDetailsList;
      } else {
        log(data["message"].toString());

        return rewardDetailsList;
      }
    } else {
      return rewardDetailsList;
    }
  }
}
