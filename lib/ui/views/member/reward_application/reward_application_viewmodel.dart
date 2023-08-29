import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RewardApplicationViewModel extends BaseViewModel {
  String typeOfProduct = "Loan";
  String institution = "DBS BAnk(Hong Kong)";
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

  final institutionList = [
    "DBS BAnk(Hong Kong)",
    "PrimeCredit",
    "China Citic Bank International"
  ];
  setInstitution(value) {
    institution = value;
    notifyListeners();
  }

  final rewardDetailsList = [
    "MONEY PLAZA Reward Rebate Up to 1% Cash Rebate",
    "MONEY PLAZA Reward Rebate Up to 1% Cash Rebate",
    "MONEY PLAZA Reward Rebate Up to 1% Cash Rebate"
  ];
  setRewardDetails(value) {
    rewardDetails = value;
    notifyListeners();
  }
}
