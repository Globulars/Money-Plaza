import 'package:flutter/src/widgets/framework.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/api_helper_service.dart';
import 'package:money_plaza/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class LandingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();
  String accessToken = "";
  final BuildContext context;
  LandingViewModel(this.context);


  
  getAccessToken() async {
    accessToken = await Store.getUser() ?? "";
    _apiHelperService.setLocalization(context);
    notifyListeners();
  }

  navigateToLoan() {
    _navigationService.navigateToLoanView();
  }

  navigateToMorgages() {
    _navigationService.navigateToMorgagesView();
  }

  navigateToCreditCard() {
    _navigationService.navigateToCreditCardView();
  }

  navigateToLanding(context) {
    _navigationService.navigateToLandingView();
  }

  navigateToMemberLogin() async {
    if (accessToken == "" || accessToken.isEmpty) {
      _navigationService.navigateToMemberLoginView();
    } else {
      _navigationService.navigateToMemberSettingView();
    }
  }
}
