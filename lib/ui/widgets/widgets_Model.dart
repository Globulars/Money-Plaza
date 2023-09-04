// ignore_for_file: file_names

import 'package:stacked/stacked.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../../../services/api_helper_service.dart';

class WidgetViewModel extends BaseViewModel {
  final _apiHelperService = locator<ApiHelperService>();
  BannerImages bannerImages = BannerImages();
  Future<BannerImages> getBannerImages(url) async {
    var data = await _apiHelperService.getApi(Uri.parse(url));
    if (data?["success"] == true) {
      data = data["data"];
      bannerImages = BannerImages.fromJson(data[0]);
      notifyListeners();
      return bannerImages;
    } else {
      throw Exception(data["message"].toString());
    }
  }
}
