import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/loan_card.dart';
import '../../../services/Models/loan_tags.dart';
import '../../../services/loan_card_service.dart';

class LoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _loanCardService = locator<LoanCardService>();
  final _dialogService = locator<DialogService>();
  List<LoanCard> loanCardList = [];
  List<LoanTags> loanTagsList = [];
  List<String> features = [];
  List<LoanCard> compareData = [];

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

  applyConfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

  showDetail(loanData) {
    _dialogService.showCustomDialog(
        variant: DialogType.detailFilte, data: loanData);
  }

  setFeatures(LoanTags loanTags) {
    if (features.contains(loanTags.id)) {
      features.remove(loanTags.id);
      loanTags.selected = false;
    } else {
      features.add(loanTags.id ?? "");
      loanTags.selected = true;
    }
    loanListData();
    notifyListeners();
  }

  setCompareData(LoanCard loanData) {
    if (compareData.contains(loanData)) {
      compareData.remove(loanData);
      loanData.checkBox = false;
    } else if (compareData.length < 2) {
      compareData.add(loanData);
      loanData.checkBox = true;
    } else {
      log("=========>alreay to seleced");
    }
    notifyListeners();
  }

  Future<List<LoanTags>> getLoanTags() async {
    var data = await _loanCardService.getLoanTags();
    if (data?["success"] == true) {
      List dataList = data["data"];
      loanTagsList = dataList.map((data) => LoanTags.fromJson(data)).toList();
      loanListData();
      notifyListeners();
      return loanTagsList;
    } else {
      throw Exception(data["message"].toString());
    }
  }

  Future<List<LoanCard>> loanListData() async {
    Map<String, dynamic> body = {
      "order": "descending",
      "sort": "ordering",
      "tenor": 12,
      "amount": 50000,
      "features": features,
      "search": ""
    };
    log(features.toString());
    var data = await _loanCardService.loanlist(body);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      loanCardList = dataList.map((data) => LoanCard.fromJson(data)).toList();
      notifyListeners();
      return loanCardList;
    } else {
      throw Exception(data["message"].toString());
    }
  }
}
