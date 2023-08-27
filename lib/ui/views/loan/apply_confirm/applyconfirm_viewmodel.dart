import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class ApplyconfirmViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController fullNameCtrl =
      TextEditingController(text: "Mudassir Mukhtar");
      TextEditingController phoneNumberCtrl =
      TextEditingController(text: "3045655432");
      TextEditingController emailCtrl =
      TextEditingController(text: "mudassirmukhtar4@gmail.com");
      TextEditingController hkidCtrl =
      TextEditingController(text: "SM6867864");

  navigateToPloanreslut() {
    _navigationService.navigateToPloanreslutView();
  }
}
