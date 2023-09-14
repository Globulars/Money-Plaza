import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../landing_view.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();
  bool englishLanguage = true;
  bool notification = true;

  inState(BuildContext context) {
    if (context.locale.toString() == 'zh') {
      _apiHelperService.setLocalization(context);
      englishLanguage = false;
      notifyListeners();
    }
  }

  navigateToLanding() async {
    _navigationService.clearStackAndShowView(const LandingView());
  }

  navigateToPrivacyPolicy() async {
    _navigationService.navigateToPrivacyPolicyView();
  }

  navigateToTermConditionsView() async {
    _navigationService.navigateToTermConditionsView();
  }

  logOut() async {
    bool accessToken = await Store.deleteUser();
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
