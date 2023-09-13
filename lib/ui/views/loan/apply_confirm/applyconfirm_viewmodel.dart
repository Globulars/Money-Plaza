import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class ApplyconfirmViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController fullNameCtrl =
      TextEditingController(text: "");
  TextEditingController phoneNumberCtrl =
      TextEditingController(text: "");
  TextEditingController emailCtrl =
      TextEditingController(text: "");
  TextEditingController hkidCtrl = TextEditingController(text: "");

  navigateToPloanreslut() {
    _navigationService.navigateToPloanreslutView();
  }
}
// SM6867864