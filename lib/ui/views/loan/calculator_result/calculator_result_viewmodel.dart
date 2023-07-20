import 'package:stacked/stacked.dart';

class CalculatorResultViewModel extends BaseViewModel {
  var calculationitem = 0;

  setCalculationItems(value) {
    calculationitem = value;
    notifyListeners();
  }
}
