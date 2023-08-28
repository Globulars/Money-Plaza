import 'dart:developer';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.locator.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/services/toaster_service.dart';
import 'package:money_plaza/services/loan_card_service.dart';

class PersonalloanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _loanCardService = locator<LoanCardService>();
  final _toasterService = locator<ToasterService>();
  var formKey = GlobalKey<FormState>();

  TextEditingController borrowingAmountCtrl =
      TextEditingController(text: "50000");
  TextEditingController monthlyIncomeCtrl =
      TextEditingController(text: "40000");
  TextEditingController numOfLoansCtrl = TextEditingController(text: "0");
  TextEditingController totalOutstandingLoanCtrl =
      TextEditingController(text: "0");
  TextEditingController monthlyRepaymentCtrl =
      TextEditingController(text: "0");
  TextEditingController fullNameCtrl =
      TextEditingController(text: "Mudassir Mukhtar");
  TextEditingController phoneNumberCtrl =
      TextEditingController(text: "3045655432");
  TextEditingController emailCtrl =
      TextEditingController(text: "mudassirmukhtar4@gmail.com");
  TextEditingController hkidCtrl = TextEditingController(text: "SM6867864");
  String loanReason = "Business Expansion";
  String propertyOwner = "Have";
  String salaryPayment = "Bank transfer";
  String typeOfIncome = "Full Time";
  String proofOfIncome = "Bank Statement";
  var initialIndex = 0;
  var loanTenors = 6;
  var outStanding = 0;
  int currentIndex = 0;

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
    _navigationService.navigateToPersonalloanApplyConfirmView();
  }

  navigateToBackScreen() {
    _navigationService.back();
  }

  navigateToOwnerloanresultView() {
    _navigationService.navigateToOwnerloanresultView(body: {
      "amount": borrowingAmountCtrl.text,
      "tenor": loanTenors.toString(),
      "type": "personal_loan",
      "income": monthlyIncomeCtrl.text,
      "currentTotalLoanAmount": totalOutstandingLoanCtrl.text,
      "monthlyRepayment": monthlyRepaymentCtrl.text,
      "pol": true
    });
  }

  submitSurveyForm() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      Map<String, dynamic> body = {
        "result": [
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
          {
            "fieldName": "remainingLoans",
            "fieldTitle": "貸款數量",
            "fieldValue": numOfLoansCtrl.text,
            "fieldType": "totalLoanCount",
            "fieldOrder": "",
            "fieldAttrs": []
          },
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
        ]
      };
      log(body.toString());
      var data = await _loanCardService.personelLoneSurveyform(body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        navigateToOwnerloanresultView();
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }
}
