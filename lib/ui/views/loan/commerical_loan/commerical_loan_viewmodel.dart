import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class CommericalLoanViewModel extends BaseViewModel {
   final _navigationService = locator<NavigationService>();

  var initialIndex = 0;
  setInitialIndex() {
    initialIndex++;
    notifyListeners();
  }

  navigateToApplyconfirm() {
    _navigationService.navigateToApplyconfirmView(match: true);
  }
}
