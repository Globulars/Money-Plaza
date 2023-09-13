import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/toaster_service.dart';

class CommericalLoanViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _toasterService = locator<ToasterService>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();
  var formKey = GlobalKey<FormState>();

  TextEditingController borrowingAmountCtrl = TextEditingController(text: "");
  TextEditingController annualTurnoverCtrl = TextEditingController(text: "");
  TextEditingController digitalPaymentCtrl = TextEditingController(text: "");
  TextEditingController companyNameCtrl = TextEditingController(text: "");
  TextEditingController futureReceivableAmountCtrl =
      TextEditingController(text: "");
  TextEditingController operationYearCtrl = TextEditingController(text: "");
  TextEditingController numOfLoansCtrl = TextEditingController(text: "");
  TextEditingController totalOutstandingLoanCtrl =
      TextEditingController(text: "");
  TextEditingController monthlyRepaymentCtrl = TextEditingController(text: "");
  TextEditingController fullNameCtrl = TextEditingController(text: "");
  TextEditingController phoneNumberCtrl = TextEditingController(text: "");
  TextEditingController emailCtrl = TextEditingController(text: "");
  TextEditingController hkidCtrl = TextEditingController(text: "");
  String loanReason = "businessExpansion";
  String propertyOwner = "have";
  String businessNature = "businessService";
  String posSystemEquipment = "have";
  String audioReport = "have";

  final loanReasonList = [
     "businessExpansion",
    "carPurchase",
    "creditCardRepayment",
    "debtConsolidation",
    "childrenEducation",
    "selfEducation",
    "homeRenovation",
    "medicalHealthCare",
    "investment",
    "billsRepayment",
    "incomeTax"
  ];
  setLoanReasonr(value) {
    loanReason = value;
    notifyListeners();
  }

  final propertyOwnerList = [
    "have",
    "no",
  ];
  setPropertyOwner(value) {
    propertyOwner = value;
    notifyListeners();
  }

  final businessNatureList = [
    "businessService",
    "importExportTrades",
    "insurances",
    "manufacturing",
    "realEstates",
    "retail",
    "storage",
    "transport",
    "welfareInstitutions",
    "wholesale",
    "Catering",
    "otherCommunitySocialServices",
    "personalService",
    "communication",
    "construction",
    "domesticServices",
    "educationServices",
    "finance",
    "hospitals",
    "hotelsBoardingHouses",
    "other"
  ];
  setBusinessNature(value) {
    businessNature = value;
    notifyListeners();
  }

  final posSystemEquipmentrList = [
   "have",
    "no",
  ];
  setPosSystemEquipment(value) {
    posSystemEquipment = value;
    notifyListeners();
  }

  final audioReportList = [
    "have",
    "no",
  ];
  setAudioReport(value) {
    audioReport = value;
    notifyListeners();
  }

  var loanTenors = 6;
  var outStanding = 0;
  var initialIndex = 0;
  int currentIndex = 0;

  indexing(int index) {
    currentIndex = index;
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
    _navigationService.navigateToCommericalApplyConfirmView(machBody: {
      "amount": borrowingAmountCtrl.text,
      "tenor": loanTenors,
      "type": "commercial_loan",
      "income": borrowingAmountCtrl.text,
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
      // {
      //   "fieldName": "income",
      //   "fieldTitle": "每月收入",
      //   "fieldValue": monthlyIncomeCtrl.text,
      //   "fieldType": "text",
      //   "fieldOrder": "",
      //   "fieldAttrs": []
      // },
      // {
      //   "fieldName": "salaryPayment",
      //   "fieldTitle": "出糧方式",
      //   "fieldValue": salaryPayment,
      //   "fieldType": "text",
      //   "fieldOrder": "",
      //   "fieldAttrs": []
      // },
      // {
      //   "fieldName": "employmentType",
      //   "fieldTitle": "收入類型",
      //   "fieldValue": typeOfIncome,
      //   "fieldType": "text",
      //   "fieldOrder": "",
      //   "fieldAttrs": []
      // },
      // {
      //   "fieldName": "incomeProofType",
      //   "fieldTitle": "收入證明",
      //   "fieldValue": proofOfIncome,
      //   "fieldType": "text",
      //   "fieldOrder": "",
      //   "fieldAttrs": []
      // },
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
      var data =
          await _apiHelperService.postApi(_apiUrl.personelLoneSurveyform, body);
      if (data["success"] == true) {
        _toasterService.successToast(data["message"]);
        navigateToServayLoanResultView(machBody);
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }
}
