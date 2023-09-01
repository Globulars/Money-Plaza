import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/api_helper_service.dart';
import '../../../../services/toaster_service.dart';
import '../../../common/app_url.dart';

class ChangePasswordViewModel extends BaseViewModel {
  var formKey = GlobalKey<FormState>();
  final _toasterService = locator<ToasterService>();

  final _navigationService = locator<NavigationService>();
  final _apiHelperService = locator<ApiHelperService>();
  final ApiUrl _apiUrl = ApiUrl();

  TextEditingController currentPasswordCtrl = TextEditingController();
  TextEditingController newPasswordCtrl = TextEditingController();
  TextEditingController confirmNewPasswordCtrl = TextEditingController();

  changePassword() async {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
      Map<String, dynamic> body = {
        "newPassword": newPasswordCtrl.text,
        "oldPassword": currentPasswordCtrl.text
      };
      var data =
          await _apiHelperService.postAuthApi(_apiUrl.updatePassword, body);
      if (data?["success"] == true) {
        _navigationService.back();
        _toasterService.successToast(data["message"]);
      } else {
        _toasterService.errorToast(data["message"].toString());
      }
    }
  }
}
