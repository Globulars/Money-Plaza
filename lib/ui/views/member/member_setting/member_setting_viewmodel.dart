import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';

class MemberSettingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final _toastService = locator<ToasterService>();

  navigateToPersonalInfoView() {
    _navigationService.navigateToPersonalInfoView();
    //  _toastService.warningToast("You are successfully subscribe");
  }

  navigateToReward() {
    _navigationService.navigateToRewardView();
  }

  navigateToChangePassword() {
    _navigationService.navigateToChangePasswordView();
  }
}
