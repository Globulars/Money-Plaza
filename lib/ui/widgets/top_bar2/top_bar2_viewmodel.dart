import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class TopBar2ViewModel extends BaseViewModel {
    final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  void showCalculator() {
    _dialogService.showCustomDialog(
      variant: DialogType.calculator,
    );
  }

  void showFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.filter,
    );
  }

  void compareScreen() {
    _navigationService.navigateToLoancompareView();
  }
}
