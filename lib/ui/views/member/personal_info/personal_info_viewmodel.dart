import 'package:stacked/stacked.dart';

class PersonalInfoViewModel extends BaseViewModel {
  var loanTenors = '';

  setLoanTenors(value) {
    loanTenors = value;
    notifyListeners();
  }
}
