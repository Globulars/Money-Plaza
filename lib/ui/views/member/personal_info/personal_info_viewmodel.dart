import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PersonalInfoViewModel extends BaseViewModel {
  TextEditingController firstNameCtrl =
      TextEditingController(text: "Mudassir");
      TextEditingController lastNameCtrl =
      TextEditingController(text: "Mukhtar");
      String dob = "";
      var gender = '';

  setGender(value) {
    gender = value;
    notifyListeners();
  }
  setDob(value) {
    dob = value;
    notifyListeners();
  }
}
