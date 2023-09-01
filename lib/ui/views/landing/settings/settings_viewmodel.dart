import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/shared_preferences_service.dart';
import '../landing_view.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  bool englishLanguage = true;
  bool notification = true;

  inState(BuildContext context) {
    if (context.locale.toString() == 'zh') {
      englishLanguage = false;
      notifyListeners();
    }
  }

  navigateToLanding() async {
    _navigationService.clearStackAndShowView(const LandingView());
  }

  logOut() async {
    bool accessToken = await Store.deleteUser();
// ignore: unnecessary_null_comparison
    if (accessToken) {
      _navigationService.navigateToMemberLoginView();
    }
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

  setNotification() {
    notification = !notification;
    notifyListeners();
  }
}
