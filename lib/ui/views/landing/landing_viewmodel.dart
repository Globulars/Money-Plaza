import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class LandingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String accessToken = "";
  getAccessToken() async {
    accessToken = await Store.getUser() ?? "";
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

  navigateToLanding() {
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
