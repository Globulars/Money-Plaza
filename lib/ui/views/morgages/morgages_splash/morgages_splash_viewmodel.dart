import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class MorgagesSplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupMorgaesInfo() async {
    await Future.delayed(const Duration(seconds: 2));

    _navigationService.replaceWithMorgagesContactInfoView();
  }
}
