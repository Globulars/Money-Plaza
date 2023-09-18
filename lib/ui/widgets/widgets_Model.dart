// ignore_for_file: file_names
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:stacked/stacked.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../../../services/api_helper_service.dart';

class WidgetViewModel extends BaseViewModel {
  int progress = 0;
  bool loading = true;
  late InAppWebViewController webViewController;

  changeProgress(int progress) {
    progress = progress;
    if (progress == 100) {
      loading = false;
    }
    rebuildUi();
  }

  final _apiHelperService = locator<ApiHelperService>();
  BannerImages bannerImages = BannerImages();
  Future<BannerImages> getBannerImages(url) async {
    var data = await _apiHelperService.getApi(url);
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
