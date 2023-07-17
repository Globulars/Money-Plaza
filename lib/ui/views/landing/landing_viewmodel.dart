import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LandingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToSettings() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigationService.navigateToSettingsView();
  }
}
