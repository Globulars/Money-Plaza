import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class MorgagesContactInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  navigateToMorgagesResult() {
    _navigationService.navigateToMorgagesResultView();
  }
}
