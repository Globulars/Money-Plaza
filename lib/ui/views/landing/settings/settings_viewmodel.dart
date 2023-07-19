import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class SettingsViewModel extends BaseViewModel {
    final _navigationService = locator<NavigationService>();
  bool englishLanguage = true;

  navigateToMemberSetting() {
    _navigationService.navigateToMemberSettingView();
  }

  setEnglishLanguage(BuildContext context) {
    if (englishLanguage == true) {
      context.setLocale(const Locale('zh'));
    } else {
      context.setLocale(const Locale('en'));
    }
    englishLanguage = !englishLanguage;
    notifyListeners();
  }
}
