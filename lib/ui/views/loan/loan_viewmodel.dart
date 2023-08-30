import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/interest_calculator.dart';
import '../../../services/Models/loan_card.dart';
import '../../../services/Models/loan_tags.dart';
import '../../../services/Models/schedule_loan.dart';
import '../../../services/api_helper_service.dart';
import '../../../services/loan_card_service.dart';
import '../../common/app_url.dart';

class LoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();

  final _loanCardService = locator<LoanCardService>();
  final _dialogService = locator<DialogService>();
  final ApiUrl _apiUrl = ApiUrl();
  var formKey = GlobalKey<FormState>();
  Map<String, dynamic> loneMachBody = {};
  List<LoanCard> loanCardList = [];
   InterestCalculator paymentTable=InterestCalculator();

  List<LoanTags> loanTagsList = [];
  List<String> features = [];
  List<LoanCard> compareData = [];
  List<ScheduleLoan> scheduleLoan = [];
  var showcard = false;
  String loanCardListMessage = "";
  String paymentTableMessage = "";
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

  setloneMachBody(body) {
    loneMachBody = body;
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

  /////////////////// calculator result//////////////////
  TextEditingController borrowingAmountCtrl =
      TextEditingController(text: "50000");
  TextEditingController aprCtrl = TextEditingController(text: "4");

  TextEditingController tenorCtrl = TextEditingController(text: "5");
  TextEditingController monthyRepaymentAmountCtrl =
      TextEditingController(text: "10100");
  TextEditingController totalPaymentAmountCtrl =
      TextEditingController(text: "50501");
  TextEditingController totalInterestCtrl = TextEditingController(text: "501");

  Future<InterestCalculator> recalculate() async {
     Map<String, dynamic> body = {
      "amount": borrowingAmountCtrl.text,
    "interestRate": interestCtrl.text,
    "monthlyRepayment": monthlyPaymentCtrl.text
    };
    var data =
        await _apiHelperService.postApi( _apiUrl.scheduleByLoan,body);
    if (data?["success"] == true) {
      var dataList = data["data"];
      log(dataList.toString());
      if (dataList.isEmpty) {
        paymentTableMessage = "No data found";
        log(paymentTableMessage.toString());
      } else {
        paymentTable = InterestCalculator.fromJson(dataList);
        log("=======>${paymentTable.amount}");
      }
      notifyListeners();
      return paymentTable;
    } else {
      paymentTableMessage = data["message"].toString();
      throw Exception(data["message"].toString());
    }
  }

  ////// ////////////
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
    var data = await _loanCardService.loanlist(body);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      if (dataList.isEmpty) {
        loanCardListMessage = "No data found";
      } else {
        loanCardList = dataList.map((data) => LoanCard.fromJson(data)).toList();
      }
      notifyListeners();
      return loanCardList;
    } else {
      loanCardListMessage = data["message"].toString();
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

  Future<List<LoanCard>> loanMatch() async {
    log(loneMachBody.toString());
    var data = await _loanCardService.loanMatch(loneMachBody);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      if (dataList.isEmpty) {
        loanCardListMessage = "No data found";
      } else {
        loanCardList = dataList.map((data) => LoanCard.fromJson(data)).toList();
      }
      notifyListeners();
      return loanCardList;
    } else {
      loanCardListMessage = data["message"].toString();
      throw Exception(data["message"].toString());
    }
  }
}

//2 https://admin.moneyplaza.com.hk/option/incomeProofTypes
//2 https://admin.moneyplaza.com.hk/option/employmentTypes
//
// personel loan
// https://admin.moneyplaza.com.hk/surveyform/survey/submit/76d99393-0023-4113-ad92-3068197adc14
// result:  [{"fieldName":"amount","fieldTitle":"借貸金額","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"tenor","fieldTitle":"還款期","fieldValue":"12","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"reason","fieldTitle":"借貸原因","fieldValue":"債務整合","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasProperty","fieldTitle":"是否物業持有人","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"income","fieldTitle":"每月收入","fieldValue":"3443","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"salaryPayment","fieldTitle":"出糧方式","fieldValue":"銀行轉賬","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"employmentType","fieldTitle":"收入類型","fieldValue":"全職","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"incomeProofType","fieldTitle":"收入證明","fieldValue":"強積金","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasLoan","fieldTitle":"現有未還清的貸款","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoans","fieldTitle":"貸款數量","fieldValue":"0","fieldType":"totalLoanCount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoanAmount","fieldTitle":"未償還貸款總額","fieldValue":"0","fieldType":"remainingLoanAmount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"monthlyRepayment","fieldTitle":"每月還款","fieldValue":"0","fieldType":"monthlyRepayment","fieldOrder":"","fieldAttrs":[]},{"fieldName":"fullname","fieldTitle":"英文全名","fieldValue":"Mudassir Mukhtar","fieldType":"name","fieldOrder":"","fieldAttrs":[]},{"fieldName":"mobile","fieldTitle":"聯絡電話","fieldValue":"+85246303385","fieldType":"mobile","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"email","fieldTitle":"E-mail","fieldValue":"mudassirmukhtar4@gmail.com","fieldType":"email","fieldOrder":"","fieldAttrs":[]},{"fieldName":"identity","fieldTitle":"身份證號碼","fieldValue":"A331230-8","fieldType":"hkid","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"bornInHK","fieldTitle":"是否在香港出生?","fieldValue":"yes","fieldType":"text","fieldOrder":"","fieldAttrs":[]}]

// Owner Loan
// https://admin.moneyplaza.com.hk/surveyform/survey/submit/c9d7ef93-4ea3-4df3-8aab-373aa633046e
// result: [{"fieldName":"amount","fieldTitle":"借貸金額","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"tenor","fieldTitle":"還款期","fieldValue":"12","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"reason","fieldTitle":"借貸原因","fieldValue":"債務整合","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"income","fieldTitle":"每月收入","fieldValue":"3443","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"salaryPayment","fieldTitle":"出糧方式","fieldValue":"銀行轉賬","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"employmentType","fieldTitle":"收入類型","fieldValue":"全職","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"incomeProofType","fieldTitle":"收入證明","fieldValue":"強積金","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasLoan","fieldTitle":"現有未還清的貸款","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoans","fieldTitle":"貸款數量","fieldValue":"0","fieldType":"totalLoanCount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoanAmount","fieldTitle":"未償還貸款總額","fieldValue":"0","fieldType":"remainingLoanAmount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"monthlyRepayment","fieldTitle":"每月還款","fieldValue":"0","fieldType":"monthlyRepayment","fieldOrder":"","fieldAttrs":[]},{"fieldName":"propertyValue","fieldTitle":"物業價值","fieldValue":"","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"propertyShare","fieldTitle":"現按成數","fieldValue":"0","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"fullname","fieldTitle":"英文全名","fieldValue":"Mudassir Mukhtar","fieldType":"name","fieldOrder":"","fieldAttrs":[]},{"fieldName":"mobile","fieldTitle":"聯絡電話","fieldValue":"+85246303385","fieldType":"mobile","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"email","fieldTitle":"E-mail","fieldValue":"mudassirmukhtar4@gmail.com","fieldType":"email","fieldOrder":"","fieldAttrs":[]},{"fieldName":"identity","fieldTitle":"身份證號碼","fieldValue":"A331230-8","fieldType":"hkid","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"bornInHK","fieldTitle":"是否在香港出生?","fieldValue":"yes","fieldType":"text","fieldOrder":"","fieldAttrs":[]}]

// balance_transfer
// https://admin.moneyplaza.com.hk/surveyform/survey/submit/573310d0-2ec8-478b-8fe7-2531fa78813c
// result: [{"fieldName":"loanHistory","fieldTitle":"貸款紀錄","fieldValue":"[]","fieldType":"jsonArray","fieldOrder":"","fieldAttrs":[]},{"fieldName":"amount","fieldTitle":"借貸金額","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"tenor","fieldTitle":"還款期","fieldValue":"12","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"reason","fieldTitle":"借貸原因","fieldValue":"債務整合","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasProperty","fieldTitle":"是否物業持有人","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"income","fieldTitle":"每月收入","fieldValue":"3443","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"salaryPayment","fieldTitle":"出糧方式","fieldValue":"銀行轉賬","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"employmentType","fieldTitle":"收入類型","fieldValue":"全職","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"incomeProofType","fieldTitle":"收入證明","fieldValue":"強積金","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasLoan","fieldTitle":"現有未還清的貸款","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoans","fieldTitle":"貸款數量","fieldValue":"0","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoanAmount","fieldTitle":"未償還貸款總額","fieldValue":"0","fieldType":"remainingLoanAmount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"fullname","fieldTitle":"英文全名","fieldValue":"Mudassir Mukhtar","fieldType":"name","fieldOrder":"","fieldAttrs":[]},{"fieldName":"mobile","fieldTitle":"聯絡電話","fieldValue":"+85246303385","fieldType":"mobile","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"email","fieldTitle":"E-mail","fieldValue":"mudassirmukhtar4@gmail.com","fieldType":"email","fieldOrder":"","fieldAttrs":[]},{"fieldName":"identity","fieldTitle":"身份證號碼","fieldValue":"A331230-8","fieldType":"hkid","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"bornInHK","fieldTitle":"是否在香港出生?","fieldValue":"yes","fieldType":"text","fieldOrder":"","fieldAttrs":[]}]

// commercial_loan
// https://admin.moneyplaza.com.hk/surveyform/survey/submit/3c54426a-4c43-4d56-988d-87c55e97ebe5
// result: [{"fieldName":"amount","fieldTitle":"借貸金額","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"tenor","fieldTitle":"還款期","fieldValue":"12","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"reason","fieldTitle":"借貸原因","fieldValue":"債務整合","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasProperty","fieldTitle":"是否物業持有人","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"turnover","fieldTitle":"全年總營利","fieldValue":"3245","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"digitalIncome","fieldTitle":"數字支付的平均月收入","fieldValue":"363","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"industry","fieldTitle":"業務性質","fieldValue":"進出口貿易","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"pos","fieldTitle":"配備POS系統","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"company","fieldTitle":"公司名稱","fieldValue":"student","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"receivableAmount","fieldTitle":"未來應收金額（如有）","fieldValue":"345","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"audit","fieldTitle":"審計報告","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"operationYears","fieldTitle":"經營年期","fieldValue":"435","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"hasLoan","fieldTitle":"現有未還清的貸款","fieldValue":"沒有","fieldType":"text","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoans","fieldTitle":"貸款數量","fieldValue":"0","fieldType":"totalLoanCount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"remainingLoanAmount","fieldTitle":"未償還貸款總額","fieldValue":"0","fieldType":"remainingLoanAmount","fieldOrder":"","fieldAttrs":[]},{"fieldName":"monthlyRepayment","fieldTitle":"每月還款","fieldValue":"0","fieldType":"monthlyRepayment","fieldOrder":"","fieldAttrs":[]},{"fieldName":"fullname","fieldTitle":"英文全名","fieldValue":"Mudassir Mukhtar","fieldType":"name","fieldOrder":"","fieldAttrs":[]},{"fieldName":"mobile","fieldTitle":"聯絡電話","fieldValue":"+85246303385","fieldType":"mobile","fieldOrder":"","fieldAttrs":["unique"]},{"fieldName":"email","fieldTitle":"E-mail","fieldValue":"mudassirmukhtar4@gmail.com","fieldType":"email","fieldOrder":"","fieldAttrs":[]}]

// https://admin.moneyplaza.com.hk/loan/match
// {"amount":435,"tenor":12,"type":"commercial_loan","income":3245,"currentTotalLoanAmount":0,"monthlyRepayment":0,"pol":false}
