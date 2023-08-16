import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/credit_card_service.dart';
import '../../../../services/toaster_service.dart';

class MorgagesContactInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _toasterService = locator<ToasterService>();
  final _creditCardService = locator<CreditCardService>();

  navigateToMorgagesResult() {
    _navigationService.back();
  }

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController refeNoCtrl = TextEditingController();
  final TextEditingController contactNoCtrl = TextEditingController();
  final TextEditingController institutesAndProductsCtrl =
      TextEditingController();

  submitSurveyForm() async {
    Map<String, dynamic> body = {
      "result": [
        {
          "fieldName": "email",
          "fieldTitle": "E-mail",
          "fieldValue": emailCtrl.text,
          "fieldType": "unique",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "fullname",
          "fieldTitle": "英文全名",
          "fieldValue": nameCtrl.text,
          "fieldType": "text",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "reference_no",
          "fieldTitle": "Reference Number(如有)",
          "fieldValue": refeNoCtrl.text,
          "fieldType": "text",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "mobile",
          "fieldTitle": "聯絡電話",
          "fieldValue": contactNoCtrl.text,
          "fieldType": "mobile",
          "fieldOrder": "",
          "fieldAttrs": []
        },
        {
          "fieldName": "organization",
          "fieldTitle": "申請機構和服務",
          "fieldValue": "HSBC+New Owner / Mortgage Transfer",
          "fieldType": "text",
          "fieldOrder": "",
          "fieldAttrs": []
        }
      ]
    };
    var data = await _creditCardService.submitSurveyForm(body);
    if (data["success"] == true) {
      _toasterService.successToast(data["message"]);
      _navigationService.back();
    } else {
      _toasterService.errorToast(data["message"].toString());
    }
  }
}
