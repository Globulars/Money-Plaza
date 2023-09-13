// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/toaster_service.dart';

class BlnstransferViewModel extends BaseViewModel {
  var formKey = GlobalKey<FormState>();

  final _toasterService = locator<ToasterService>();
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();
  TextEditingController borrowingAmountCtrl = TextEditingController(text: "");
  TextEditingController monthlyIncomeCtrl = TextEditingController(text: "");
  TextEditingController companyNameCtrl = TextEditingController(text: "");
  TextEditingController totalOutstandingLoanCtrl =
      TextEditingController(text: "");
  TextEditingController tenorCtrl = TextEditingController(text: "");
  TextEditingController remainigTenorCtrl = TextEditingController(text: "");
  TextEditingController monthlyRepaymentCtrl = TextEditingController(text: "");
  TextEditingController fullNameCtrl = TextEditingController(text: "");
  TextEditingController phoneNumberCtrl = TextEditingController(text: "");
  TextEditingController emailCtrl = TextEditingController(text: "");
  TextEditingController hkidCtrl = TextEditingController(text: "");

  String loanReason = "Business Expansion";
  String propertyOwner = "Have";
  String salaryPayment = "Bank transfer";
  String typeOfIncome = "Full Time";
  String proofOfIncome = "Bank Statement";
  String repaymentType = "Personal Loans";

  final salaryPaymentList = ["Cash", "Bank transfer", "Cheque"];
  setSalaryPayment(value) {
    salaryPayment = value;
    notifyListeners();
  }

  final typeOfIncomeList = ["Full Time", "Part Time"];
  setTypeOfIncome(value) {
    typeOfIncome = value;
    notifyListeners();
  }

  final proofOfIncomeList = ["MPF", "Bank Statement", "Letter"];
  setProofOfIncome(value) {
    proofOfIncome = value;
    notifyListeners();
  }

  final loanReasonList = [
    "Business Expansion",
    "Car Purchase",
    "Credit Card Repayment",
    "Debt Consolidation",
    "Children Education",
    "Self-Education",
    "Home Renovation",
    "Medical or Health Care",
    "Investment",
    "Bills Repayment",
    "Income Tax"
  ];
  setLoanReasonr(value) {
    loanReason = value;
    notifyListeners();
  }

  final propertyOwnerList = [
    "Have",
    "No",
  ];
  setPropertyOwner(value) {
    propertyOwner = value;
    notifyListeners();
  }

  final repaymentTypeList = [
    "Personal Loans",
    "Property Owner's Loan",
    "Commerical Loans",
    "Revolving Loans",
    "Credit Card/Min Pay",
    "Prepaid Interest Loan"
  ];
  setRepaymentType(value) {
    repaymentType = value;
    notifyListeners();
  }

  var initialIndex = 0;
  var loanTenors = 6;
  var outStanding = 0;
  int currentIndex = 0;

  indexing(int index) {
    currentIndex = index;
    notifyListeners();
    print(currentIndex);
  }

  setInitialIndex() {
    initialIndex++;
    notifyListeners();
  }

  setLoanTenors(value) {
    loanTenors = value;
    notifyListeners();
  }

  setOutstandingLoan(value) {
    outStanding = value;
    notifyListeners();
  }

  navigateToApplyconfirm() {
    _navigationService.navigateToBlnstransferloanApplyConfirmView(machBody: {
      "amount": borrowingAmountCtrl.text,
      "tenor": loanTenors,
      "type": "balance_transfer",
      "income": monthlyIncomeCtrl.text,
      "currentTotalLoanAmount": totalOutstandingLoanCtrl.text,
      "monthlyRepayment": monthlyRepaymentCtrl.text,
      "pol": true
    }, survayBody: [
      {
        "fieldName": "amount",
        "fieldTitle": "借貸金額",
        "fieldValue": borrowingAmountCtrl.text,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "tenor",
        "fieldTitle": "還款期",
        "fieldValue": loanTenors,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "reason",
        "fieldTitle": "借貸原因",
        "fieldValue": loanReason,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "hasProperty",
        "fieldTitle": "是否物業持有人",
        "fieldValue": propertyOwner,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "income",
        "fieldTitle": "每月收入",
        "fieldValue": monthlyIncomeCtrl.text,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "salaryPayment",
        "fieldTitle": "出糧方式",
        "fieldValue": salaryPayment,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "employmentType",
        "fieldTitle": "收入類型",
        "fieldValue": typeOfIncome,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "incomeProofType",
        "fieldTitle": "收入證明",
        "fieldValue": proofOfIncome,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "hasLoan",
        "fieldTitle": "現有未還清的貸款",
        "fieldValue": outStanding,
        "fieldType": "text",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      // {
      //   "fieldName": "remainingLoans",
      //   "fieldTitle": "貸款數量",
      //   "fieldValue": numOfLoansCtrl.text,
      //   "fieldType": "totalLoanCount",
      //   "fieldOrder": "",
      //   "fieldAttrs": []
      // },
      {
        "fieldName": "remainingLoanAmount",
        "fieldTitle": "未償還貸款總額",
        "fieldValue": totalOutstandingLoanCtrl.text,
        "fieldType": "remainingLoanAmount",
        "fieldOrder": "",
        "fieldAttrs": []
      },
      {
        "fieldName": "monthlyRepayment",
        "fieldTitle": "每月還款",
        "fieldValue": monthlyRepaymentCtrl.text,
        "fieldType": "monthlyRepayment",
        "fieldOrder": "",
        "fieldAttrs": []
      },
    ]);
  }

  navigateToBackScreen() {
    _navigationService.back();
  }

  navigateToServayLoanResultView(body) {
    _navigationService.navigateToServayLoanResultView(body: body);
  }

  submitSurveyForm(machBody, List survayBody) async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      List applyBody = [
        {
          "fieldName": "fullname",
          "fieldTitle": "英文全名",
          "fieldValue": fullNameCtrl.text,
          "fieldType": "name",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "mobile",
          "fieldTitle": "聯絡電話",
          "fieldValue": phoneNumberCtrl.text,
          "fieldType": "mobile",
          "fieldOrder": "",
          "fieldAttrs": ["unique"]
        },
        {
          "fieldName": "email",
          "fieldTitle": "E-mail",
          "fieldValue": emailCtrl.text,
          "fieldType": "email",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "identity",
          "fieldTitle": "身份證號碼",
          "fieldValue": hkidCtrl.text,
          "fieldType": "hkid",
          "fieldOrder": "",
          "fieldAttrs": ["unique"]
        },
        // {
        //   "fieldName": "bornInHK",
        //   "fieldTitle": "是否在香港出生?",
        //   "fieldValue": "yes",
        //   "fieldType": "text",
        //   "fieldOrder": "",
        //   "fieldAttrs": []
        // }
      ];
      survayBody.addAll(applyBody);
      Map<String, dynamic> body = {"result": survayBody};
      var data = await _apiHelperService.postApi(
          _apiUrl.balanceTransferSurveyform, body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        navigateToServayLoanResultView(machBody);
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }
}
