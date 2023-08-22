// ignore_for_file: file_names

import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.dialogs.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../services/credit_card_service.dart';

class WidgetViewModel extends BaseViewModel {
  final _creditCardService = locator<CreditCardService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

void applyConfirm() {
    _navigationService.navigateToApplyconfirmView();
  }

   void showDetail(loanData) {
    _dialogService.showCustomDialog(
        variant: DialogType.detailFilte, data: loanData);
  }
  
  Future<BannerImages> bannerImages(url) async {
    var data = await _creditCardService.bannerImages(url);
    if (data?["success"] == true) {
      data = data["data"];
      return BannerImages.fromJson(data[0]);
    } else {
      throw Exception(data["message"].toString());
    }
  }

}
