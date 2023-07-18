import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class SettingsViewModel extends BaseViewModel {
  bool englishLanguage = true;
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
