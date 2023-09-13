import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class ApplyconfirmViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  TextEditingController fullNameCtrl = TextEditingController();
  TextEditingController phoneNumberCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController hkidCtrl = TextEditingController();

  navigateToPloanreslut() {
    _navigationService.navigateToPloanreslutView();
  }
}
// SM6867864
