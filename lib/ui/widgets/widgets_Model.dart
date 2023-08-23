// ignore_for_file: file_names
import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.dialogs.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../services/Models/loan_card.dart';
import '../../services/credit_card_service.dart';

class WidgetViewModel extends BaseViewModel {
  final _creditCardService = locator<CreditCardService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  List<LoanCard> selectedLoanCards = [];

  applyConfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

  showDetail(loanData) {
    _dialogService.showCustomDialog(
        variant: DialogType.detailFilte, data: loanData);
  }

//   toggleSelection(value, LoanCard loanData) {
//   log("Value: $value, LoanData: $loanData");
//   if (value) {
//     if (selectedLoanCards.length < 2) {
//       log("Adding $loanData");
//       selectedLoanCards.add(loanData);
//     }
//   } else {
//     log("Removing $loanData");
//     selectedLoanCards.remove(loanData);
//   }
//   log("Selected Loan Cards: $selectedLoanCards");
//   notifyListeners();
// }

  toggleSelection( LoanCard loanData) {
    log("Value: , LoanData: $loanData");

    if (selectedLoanCards.contains(loanData)) {
      selectedLoanCards.remove(loanData);
      log("remove list");
      loanData.checkBox = false;
    } else if (selectedLoanCards.length < 3) {
      selectedLoanCards.add(loanData);
      log("add list=====");
      loanData.checkBox = true;
    } else {
      log("=========alreay to seleced");
    }

    log("Selected Loan Cards: $selectedLoanCards");
    notifyListeners();
  }

  Future<BannerImages> bannerImages(url) async {
    var data = await _creditCardService.bannerImages(url);
    if (data?["success"] == true) {
      data = data["data"];
      return BannerImages.fromJson(data[0]);
    } else {
      throw Exception(data["message"].toString());
    }
  }
}
