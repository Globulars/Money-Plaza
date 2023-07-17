import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class MemberLoginViewModel extends BaseViewModel {
    final _dialogService = locator<DialogService>();

    void showResetPassword() {
    _dialogService.showCustomDialog(
      variant: DialogType.resetPassword,
    );
  }
}
