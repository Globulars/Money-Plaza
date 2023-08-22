import 'dart:developer';

import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/loan_card.dart';
import '../../../services/Models/loan_tags.dart';
import '../../../services/loan_card_service.dart';

class LoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List features = [];
  navigateToPersonalloan() {
    _navigationService.navigateToPersonalloanView();
  }

  navigateToOwnerloan() {
    _navigationService.navigateToOwnerloanView();
  }

  navigateToBlnstransfer() {
    _navigationService.navigateToBlnstransferView();
  }

  navigateToApplyconfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

  navigateToCommerical() {
    _navigationService.navigateToCommericalLoanView();
  }

  final _loanCardService = locator<LoanCardService>();
  Future<List<LoanCard>> loanListData() async {
    Map<String, dynamic> body = {
      "order": "descending",
      "sort": "ordering",
      "tenor": 12,
      "amount": 50000,
      "features": features,
      "search": ""
    };
    var data = await _loanCardService.loanlist(body);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      log("===>${dataList.length}");
      List<LoanCard> loanCardList =
          dataList.map((data) => LoanCard.fromJson(data)).toList();
      return loanCardList;
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }

  Future<List<LoanTags>> getLoanTags() async {
    var data = await _loanCardService.getLoanTags();
    if (data?["success"] == true) {
      List dataList = data["data"];
      log("===>${dataList.length}");
      List<LoanTags> loanCardList =
          dataList.map((data) => LoanTags.fromJson(data)).toList();
      return loanCardList;
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }
}
