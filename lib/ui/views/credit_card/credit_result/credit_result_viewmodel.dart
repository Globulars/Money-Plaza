import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/Models/credit_card.dart';
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

  Future<List<CreditCard>> cardListData() async {
    Map<String, dynamic> body = {};
    var data = await _creditCardService.cardList(body);
    if (data?["success"] == true) {
      // log(data.toString());
      // return List<CreditCard>.from(data["data"]["records"]);
      List dataList = data["data"]["records"];
      return dataList.map((data) => CreditCard.fromJson(data)).toList();
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }
}
