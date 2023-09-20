// ignore_for_file: file_names

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';
import '../../services/Models/card_banners.dart';
import '../../../../services/api_helper_service.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int progress = 0;
  bool loading = true;
  bool showWebView = true;

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

  navigateToSurveySplashView() {
    _navigationService.navigateToSurveySplashView(organization: "promise");
  }

  Future<void> urlLauncher(url) async {
    showWebView = false;
    notifyListeners();

    if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}
