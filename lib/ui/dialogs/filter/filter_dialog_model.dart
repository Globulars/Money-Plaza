import 'package:stacked/stacked.dart';

class FilterDialogModel extends BaseViewModel {
  var repaymentType = 0;
  var repaymentPeriod = 6;

  setRepaymentType(value) {
    repaymentType = value;
    notifyListeners();
  }

  setRepaymentPeriod(value) {
    repaymentPeriod = value;
    notifyListeners();
  }
}
