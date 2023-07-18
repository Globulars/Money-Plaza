import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class RewardViewModel extends BaseViewModel {
    final _navigationService = locator<NavigationService>();

  navigateToRewardApplication() {
    _navigationService.navigateToRewardApplicationView();
  }

}
