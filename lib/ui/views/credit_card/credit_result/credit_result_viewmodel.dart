import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.dialogs.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/credit_card_service.dart';

class CreditResultViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _creditCardService = locator<CreditCardService>();

  void showCreditFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.creditCardFilter,
    );
  }

  navigateToSplashCreditCard() {
    _navigationService.navigateToMorgagesSplashView();
  }

  Future cardListData() async {
    Map<String, dynamic> body = {};
    var data = await _creditCardService.cardList(body);
    if (data?["success"] == true) {
      log(data.toString());
      return data;
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }
}
