import 'dart:developer';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.dialogs.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/Models/mortgages_card.dart';
import '../../../../services/mortgage_service.dart';

class MorgagesResultViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _mortgagesService = locator<MortgageService>();

  void showMorgagesFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.morgagesFilter,
    );
  }

  navigateToMorgagesSplash() {
    _navigationService.navigateToMorgagesSplashView();
  }

  Future<List<MortagesCard>> cardListData() async {
    Map<String, dynamic> body = {};
    var data = await _mortgagesService.mortgagesList(body);
    if (data?["success"] == true) {
      // log(data.toString());
      // return List<CreditCard>.from(data["data"]["records"]);
      List dataList = data["data"]["records"];
      return dataList.map((data) => MortagesCard.fromJson(data)).toList();
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }
}
