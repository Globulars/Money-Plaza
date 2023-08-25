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

  TextEditingController loanAmountCtrl = TextEditingController(text: "50000");
  TextEditingController monthlyPaymentCtrl =
      TextEditingController(text: "10000");
  TextEditingController interestCtrl = TextEditingController(text: "4");

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
    loanAmountCtrl.text = "50000";
    monthlyPaymentCtrl.text = "10000";
    interestCtrl.text = "4";
    notifyListeners();
  }

  navigateToCalculatorResult() {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      if (_navigationService.currentRoute == "/calculator-result-view") {
        back();
      }
      _navigationService.navigateToCalculatorResultView(
        loanAmount: loanAmountCtrl.text,
        monthlyPayment: monthlyPaymentCtrl.text,
        interest: interestCtrl.text,
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
    // log("====>${loanAmountCtrl.text}===>${interestCtrl.text}===>${monthlyPaymentCtrl.text}");
    Map<String, dynamic> body = {
      "order": "descending",
      "sort": "ordering",
      "tenor": 12,
      "amount": loanAmountCtrl.text,
      "features": features,
      "search": "",
      "interestRate": interestCtrl.text,
      "monthlyRepayment": monthlyPaymentCtrl.text
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


// https://admin.moneyplaza.com.hk/surveyform/survey/submit/76d99393-0023-4113-ad92-3068197adc14
// Request Method:
// POST
// Status Code:
// 200
// Remote Address:
// 16.162.30.173:443


// [{"fieldName":"amount","fieldTitle":"借貸金額","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"tenor","fieldTitle":"還款期","fieldValue":"12","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"reason","fieldTitle":"借貸原因","fieldValue":"債務整合","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasProperty","fieldTitle":"是否物業持有人","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"income","fieldTitle":"每月收入","fieldValue":"3443","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"salaryPayment","fieldTitle":"出糧方式","fieldValue":"銀行轉賬","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"employmentType","fieldTitle":"收入類型","fieldValue":"全職","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"incomeProofType","fieldTitle":"收入證明","fieldValue":"強積金","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasLoan","fieldTitle":"現有未還清的貸款","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoans","fieldTitle":"貸款數量","fieldValue":"0","fieldType":"totalLoanCount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoanAmount","fieldTitle":"未償還貸款總額","fieldValue":"0","fieldType":"remainingLoanAmount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"monthlyRepayment","fieldTitle":"每月還款","fieldValue":"0","fieldType":"monthlyRepayment","fieldOrder":"","fieldAttrs":[]},{"fieldName":"fullname","fieldTitle":"英文全名","fieldValue":"Mudassir Mukhtar","fieldType":"name","fieldOrder":"","fieldAttrs":[]},{"fieldName":"mobile","fieldTitle":"聯絡電話","fieldValue":"+85246303385","fieldType":"mobile","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"email","fieldTitle":"E-mail","fieldValue":"mudassirmukhtar4@gmail.com","fieldType":"email","fieldOrder":"","fieldAttrs":[]},{"fieldName":"identity","fieldTitle":"身份證號碼","fieldValue":"A331230-8","fieldType":"hkid","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"bornInHK","fieldTitle":"是否在香港出生?","fieldValue":"yes","fieldType":"text","fieldOrder":"","fieldAttrs":[]}]