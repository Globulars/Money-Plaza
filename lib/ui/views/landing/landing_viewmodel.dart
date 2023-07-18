import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LandingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToLoan() {
    _navigationService.navigateToLoanView();
  }

  navigateToMorgages() {
    _navigationService.navigateToMorgagesView();
  }

  // navigateToSettings() {
  //   _navigationService.navigateToin();
  // }

  // navigateToSettings() {
  //   _navigationService.navigateTo();
  // }

  navigateToLanding() {
    _navigationService.navigateToLandingView();
  }

  navigateToMemberLogin() {
    _navigationService.navigateToMemberLoginView();
  }
}
