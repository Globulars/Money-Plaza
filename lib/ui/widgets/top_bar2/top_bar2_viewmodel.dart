import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class TopBar2ViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  var showcard = false;
  void showCalculator() {
    showcard = false;
    notifyListeners();
    _dialogService.showCustomDialog(
      variant: DialogType.calculator,
    );
  }

  void showFilter() {
    showcard = false;
    notifyListeners();
    _dialogService.showCustomDialog(
      variant: DialogType.filter,
    );
  }

  void compareScreen() {
    showcard = false;
    notifyListeners();
    _navigationService.navigateToLoancompareView();
  }

  void showHide() {
    showcard = !showcard;
    notifyListeners();
  }
}
