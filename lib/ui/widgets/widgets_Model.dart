import 'package:stacked/stacked.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../services/credit_card_service.dart';

class WidgetViewModel extends BaseViewModel {
  final _creditCardService = locator<CreditCardService>();
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
