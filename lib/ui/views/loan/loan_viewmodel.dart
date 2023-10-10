import 'dart:math';

import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/Models/interest_calculator.dart';
import '../../../services/Models/loan_card.dart';
import '../../../services/Models/loan_tags.dart';
import '../../../services/Models/schedule_loan.dart';
import '../../../services/api_helper_service.dart';
import '../../../services/toaster_service.dart';
import '../../common/app_url.dart';

class LoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();
  final _toasterService = locator<ToasterService>();
  final ApiUrl _apiUrl = ApiUrl();
  final _dialogService = locator<DialogService>();
  var formKey = GlobalKey<FormState>();
  Map<String, dynamic> loneMachBody = {};
  List<LoanCard> loanCardList = [];
  InterestCalculator paymentTable = InterestCalculator();

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

  TextEditingController loanAmountCtrl = TextEditingController();
  TextEditingController monthlyPaymentCtrl = TextEditingController();
  TextEditingController interestCtrl = TextEditingController();

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
    loanAmountCtrl.text = "";
    monthlyPaymentCtrl.text = "";
    interestCtrl.text = "";
    notifyListeners();
  }

  // setloneMachBody(body) {
  //   loneMachBody = body;
  //   notifyListeners();
  // }

  navigateToCalculatorResult() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      if (_navigationService.currentRoute == "/calculator-result-view") {
        back();
      }
      _navigationService.navigateToCalculatorResultView(
        loanAmount: _apiHelperService.removeComa(loanAmountCtrl.text),
        repayment: repayment,
        loanTenor: calculation == 0 && repayment == 0
            ? await emiToTenor()
            : _apiHelperService.removeComa(tenorCtrl.text),
      );

      notifyListeners();
    }
  }

  emiToTenor() {
    double emi = double.parse(_apiHelperService
        .removeComa(monthlyPaymentCtrl.text)); // Replace with your desired EMI
    double principalLoanAmount =
        double.parse(_apiHelperService.removeComa(loanAmountCtrl.text));
    double annualInterestRate =
        double.parse(interestCtrl.text); // 8% annual interest rate
    double monthlyInterestRate =
        (annualInterestRate / 12) / 100; // Monthly interest rate
    double n =
        (log(emi) - log(emi - (principalLoanAmount * monthlyInterestRate))) /
                log(1 + monthlyInterestRate) +
            1;
    return n.toString();
  }

  back() {
    _navigationService.back();
  }
  ////////////////////////// Filter ///////////////////////////

  var repaymentType = 0;
  var repaymentPeriod = 18;

  setRepaymentType(value) {
    repaymentType = value;
    notifyListeners();
  }

  setRepaymentPeriod(value) {
    repaymentPeriod = value;
    notifyListeners();
  }

  /////////////////// calculator result//////////////////
  TextEditingController borrowingAmountCtrl = TextEditingController();
  TextEditingController aprCtrl = TextEditingController();
  TextEditingController tenorCtrl = TextEditingController();
  TextEditingController monthyRepaymentAmountCtrl = TextEditingController();
  TextEditingController totalPaymentAmountCtrl = TextEditingController();
  TextEditingController totalInterestCtrl = TextEditingController();

  Future<InterestCalculator> recalculate() async {
    setBusy(true);
    String calculationType = "";
    Map<String, dynamic> body = {};
    if (calculationitem == 0) {
      calculationType = "scheduleByPLoanForTenor";
      body = {
        "amount": _apiHelperService.removeComa(borrowingAmountCtrl.text),
        "interestRate": _apiHelperService.removeComa(interestCtrl.text),
        "monthlyRepayment":
            _apiHelperService.removeComa(monthlyPaymentCtrl.text)
      };
    } else if (calculationitem == 1) {
      calculationType = "scheduleByPLoanForInterestRate";
      body = {
        "amount": _apiHelperService.removeComa(borrowingAmountCtrl.text),
        "monthlyRepayment":
            _apiHelperService.removeComa(monthlyPaymentCtrl.text),
        "numOfMonths": _apiHelperService.removeComa(tenorCtrl.text)
      };
    } else if (calculationitem == 2) {
      calculationType = "scheduleByPLoanForRepayment";
      body = {
        "amount": _apiHelperService.removeComa(borrowingAmountCtrl.text),
        "interestRate": _apiHelperService.removeComa(interestCtrl.text),
        "numOfMonths": _apiHelperService.removeComa(tenorCtrl.text)
      };
    }
    // log(body.toString() as num);
    var data =
        await _apiHelperService.postApi("/repayment/$calculationType", body);
    if (data?["success"] == true) {
      var dataList = data["data"];
      if (dataList.isEmpty) {
        paymentTableMessage = "No data found";
      } else {
        paymentTableMessage = "";
        paymentTable = InterestCalculator.fromJson(dataList);
      }
      notifyListeners();
      setBusy(false);
      return paymentTable;
    } else {
      paymentTableMessage = data["message"].toString();
      setBusy(false);
      return paymentTable;
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
    _navigationService.navigateToSurveySplashView(organization: "promise");
  }

  navigateToWebView(applyLink) async {
    /*
    if (applyLink == "" || applyLink == null) {
      log("No link:$applyLink" as num);
      navigateToSurveySplashView();
    } else {
      log("link:$applyLink" as num);
      _navigationService.navigateToWebView(uri: applyLink.toString());
    }
    */
    await launchUrl(Uri.parse(applyLink.toString()));
    Future.delayed(const Duration(milliseconds: 3000), () async {
      await navigateToSurveySplashView();
    });
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
    loneListBody();
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
        variant: DialogType.filter, data: filterData);
  }

  void compareScreen() {
    if (compareData.length >= 2) {
      _navigationService.navigateToLoancompareView(compareData: compareData);
    } else {
      _toasterService.errorToast("Please select more then two value");
    }
    showcard = false;
    notifyListeners();
  }

  void showHide() {
    showcard = !showcard;
    notifyListeners();
  }

  Future<List<LoanTags>> getLoanTags() async {
    var data = await _apiHelperService.getApi(_apiUrl.getLoanTags);
    if (data?["success"] == true) {
      List dataList = data["data"];
      loanTagsList = dataList.map((data) => LoanTags.fromJson(data)).toList();
      notifyListeners();
      return loanTagsList;
    } else {
      _toasterService.errorToast(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }

  filterData(_loanAmount, _repaymentType, _repaymentPeriod) {
    loanAmountCtrl.text = _loanAmount;
    repaymentType = _repaymentType;
    repaymentPeriod = _repaymentPeriod;
    loneListBody();
  }

  loneListBody() {
    Map<String, dynamic> body = {
      "order": "descending",
      "sort": "ordering",
      "tenor": repaymentPeriod,
      "amount": _apiHelperService.removeComa(loanAmountCtrl.text),
      "features": features,
      "calculateMethod": repaymentType == 0
          ? "PLoan"
          : repaymentType == 1
              ? "MinPay"
              : repaymentType == 2
                  ? "InterestOnly"
                  : "PrepaidInterest",
      "search": "",
      "interestRate": _apiHelperService.removeComa(interestCtrl.text),
      "monthlyRepayment": _apiHelperService.removeComa(monthlyPaymentCtrl.text)
    };
    loanListData(body);
  }

  loneListCalculatorBody(loanTenor) {
    Map<String, dynamic> body = {
      "tenor": double.parse(loanTenor),
      "amount": _apiHelperService.removeComa(loanAmountCtrl.text),
      "calculateMethod": repayment == 0
          ? "PLoan"
          : repayment == 1
              ? "InterestOnly"
              : repayment == 2
                  ? "PrepaidInterest"
                  : "PrepaidInterest",
    };
    if (loanTenor != 'NaN') {
      loanListData(body);
    }
  }

  Future<List<LoanCard>> loanListData(body) async {
    setBusy(true);
    var data = await _apiHelperService.postApi(_apiUrl.loanList, body);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      if (dataList.isEmpty) {
        loanCardListMessage = "No data found";
      } else {
        loanCardList = dataList.map((data) => LoanCard.fromJson(data)).toList();
      }
      setBusy(false);
      notifyListeners();
      return loanCardList;
    } else {
      setBusy(false);
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
    var data = await _apiHelperService.postApi(
        _apiUrl.scheduleByPLoanForRepayment, body);
    if (data?["success"] == true) {
      return ScheduleLoan.fromJson(data["data"]);
    } else {
      return ScheduleLoan();
    }
  }

  Future<List<LoanCard>> loanMatch() async {
    var data = await _apiHelperService.postApi(_apiUrl.loanMatch, loneMachBody);
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
      return loanCardList;
    }
  }
}
