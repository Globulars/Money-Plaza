import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/company_by_card.dart';
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
  String rewardDetails = "MONEY PLAZA Reward Rebate Up to 1% Cash Rebate";
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
    notifyListeners();
  }

  List<CompanyByCard> institutionList = [];
  setInstitution(value) {
    institution = value;
    notifyListeners();
  }

  final rewardDetailsList = [
    "MONEY PLAZA Reward Rebate Up to 1% Cash Rebate",
    "MONEY PLAZA Reward Rebate Up to 2% Cash Rebate",
    "MONEY PLAZA Reward Rebate Up to 3% Cash Rebate"
  ];
  setRewardDetails(value) {
    rewardDetails = value;
    notifyListeners();
  }

  Future<List<CompanyByCard>> mortgagesBankListData(type) async {
    if (rewardDetailsList.isEmpty) {
      var data = await _apiHelperService
          .getApi(Uri.parse(_apiUrl.getCompaniesByType + type));
      if (data?["success"] == true) {
        List dataList = data["data"];
        institutionList =
            dataList.map((data) => CompanyByCard.fromJson(data)).toList();
        rewardDetails = rewardDetailsList[0];
        notifyListeners();
        return institutionList;
      } else {
        throw Exception(data["message"].toString());
      }
    } else {
      return institutionList;
    }
  }
}
