import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/loan_card.dart';
import '../../../services/Models/loan_tags.dart';
import '../../../services/Models/schedule_loan.dart';
import '../../../services/loan_card_service.dart';

class LoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _loanCardService = locator<LoanCardService>();
  final _dialogService = locator<DialogService>();
  var formKey = GlobalKey<FormState>();
  List<LoanCard> loanCardList = [];
  List<LoanTags> loanTagsList = [];
  List<String> features = [];
  List<LoanCard> compareData = [];
  List<ScheduleLoan> scheduleLoan = [];
  var showcard = false;

  /////////////////// calculator dialog data//////////////////
  var repayment = 0;
  var calculation = 0;
  var calculationitem = 0;

  TextEditingController calculatorLoanAmountCtrl =
      TextEditingController(text: "50000");
  TextEditingController calculatorMonthlyPaymentCtrl =
      TextEditingController(text: "10000");
  TextEditingController calculatorInterestCtrl =
      TextEditingController(text: "4");

  setRepayment(value) {
    repayment = value;
    notifyListeners();
  }

  setCalculation(value) {
    calculation = value;
    notifyListeners();
  }

  calculatorResetAll() {
    repayment = 0;
    calculation = 0;
    calculatorLoanAmountCtrl.text = "50000";
    calculatorMonthlyPaymentCtrl.text = "10000";
    calculatorInterestCtrl.text = "4";

    notifyListeners();
  }

  navigateToCalculatorResult() {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      if (_navigationService.currentRoute == "/calculator-result-view") {
        back();
        back();
        getLoanTags();
      }
      _navigationService.navigateToCalculatorResultView(
        calculatorLoanAmount: calculatorLoanAmountCtrl.text,
        calculatorMonthlyPayment: calculatorMonthlyPaymentCtrl.text,
        calculatorInterest: calculatorInterestCtrl.text,
      );

      notifyListeners();
    }
  }

  back() {
    _navigationService.back();
  }

  /// /////////
  navigateToPersonalloan() {
    _navigationService.navigateToPersonalloanView();
  }

  navigateToOwnerloan() {
    _navigationService.navigateToOwnerloanView();
  }

  navigateToBlnstransfer() {
    _navigationService.navigateToBlnstransferView();
  }

  navigateToSurveySplashView() {
    _navigationService.navigateToSurveySplashView(organization: "Promise");
  }

  navigateToCommerical() {
    _navigationService.navigateToCommericalLoanView();
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

  setCalculationItems(value) {
    calculationitem = value;
    notifyListeners();
  }

  setCompareData(LoanCard loanData) {
    if (compareData.contains(loanData)) {
      compareData.remove(loanData);
      loanData.checkBox = false;
    } else {
      compareData.add(loanData);
      loanData.checkBox = true;
    }
    notifyListeners();
  }

  void showCalculator() {
    showcard = false;
    notifyListeners();
    _dialogService.showCustomDialog(
      variant: DialogType.calculator,
    );
  }

  void showFilter() {
    showcard = false;
    notifyListeners();
    _dialogService.showCustomDialog(
      variant: DialogType.filter,
    );
  }

  void compareScreen() {
    log(compareData.length.toString());
    if (compareData.length >= 2) {
      _navigationService.navigateToLoancompareView(compareData: compareData);
    } else {
      log("Please select more then two value${compareData.length}");
    }
    showcard = false;
    notifyListeners();
  }

  void showHide() {
    showcard = !showcard;
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
      "amount": calculatorLoanAmountCtrl.text,
      "features": features,
      "search": "",
      "interestRate": calculatorInterestCtrl.text,
      "monthlyRepayment": calculatorMonthlyPaymentCtrl.text
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

  Future<ScheduleLoan> scheduleByPLoanForRepayment(
      amount, numOfMonths, interestRate) async {
    Map<String, dynamic> body = {
      "amount": amount,
      "numOfMonths": numOfMonths,
      "interestRate": interestRate
    };
    var data = await _loanCardService.scheduleByPLoanForRepayment(body);
    if (data?["success"] == true) {
      return ScheduleLoan.fromJson(data["data"]);
    } else {
      throw Exception(data["message"].toString());
    }
  }
}
