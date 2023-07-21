import 'package:stacked/stacked.dart';

class ResetPasswordDialogModel extends BaseViewModel {
   var initialIndex = 0;

  

  setInitialIndex(value) {
    initialIndex = value;
    notifyListeners();
  }
}
