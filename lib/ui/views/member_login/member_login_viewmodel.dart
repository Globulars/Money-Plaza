import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class MemberLoginViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final registerDropDown=["Option 1", "Option 2", "Option 3"];

  void showResetPassword() {
    _dialogService.showCustomDialog(
      variant: DialogType.resetPassword,
    );
  }

  var changeTab = 0;
  setChangeTab(value) {
    log(value.toString());
    changeTab = value;
    notifyListeners();
  }

    var registerDropdown= "Option 1";
  setRegisterDropDown(value) {
    log(value.toString());
    registerDropdown = value;
    notifyListeners();
  }

  navigateToMemberSetting() {
    _navigationService.navigateToMemberSettingView();
  }


}


