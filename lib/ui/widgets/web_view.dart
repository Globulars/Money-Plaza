import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/app_bar.dart';
import 'package:money_plaza/ui/widgets/bottom_bar.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebView extends StackedView<WidgetViewModel> {
  final String url;
  const WebView({Key? key, required this.url}) : super(key: key);
  // @override
  // void onViewModelReady(WidgetViewModel viewModel) {
  //   super.onViewModelReady(viewModel);
  // }

  @override
  Widget builder(
    BuildContext context,
    WidgetViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(context),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(url)),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                cacheEnabled: true,
                supportZoom: false,
                javaScriptCanOpenWindowsAutomatically: true,
                useOnLoadResource: true,
                javaScriptEnabled: true,
                mediaPlaybackRequiresUserGesture: false,
                transparentBackground: false,
              ),
            ),
            androidOnPermissionRequest: (controller, origin, resources) async {
              return PermissionRequestResponse(
                resources: resources,
                action: PermissionRequestResponseAction.GRANT,
              );
            },
            // InAppWebViewGroupOptions(crossPlatform: InAppWebViewOptions()),
            onWebViewCreated: (InAppWebViewController controller) {
              viewModel.webViewController = controller;
            },
            onLoadStart: (InAppWebViewController controller, Uri? url) {},
            onLoadStop: (InAppWebViewController controller, Uri? url) async {},
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              viewModel.changeProgress(progress);
            },
            onLoadError: (controller, url, code, message) {
              log(message.toString());
            },
            onReceivedServerTrustAuthRequest:
                (InAppWebViewController controller,
                    URLAuthenticationChallenge challenge) async {
              return ServerTrustAuthResponse(
                  action: ServerTrustAuthResponseAction.PROCEED);
            },
          ),
          viewModel.loading
              ? Container(
                  color: Colors.white,
                  child: const Center(child: CircularProgressIndicator()))
              : Container(),
          bottomBar(
            Row(
              children: [
                ReturnButton(
                  imageLeft: myIcons.returnIcon1,
                  imgwidth: 12,
                  text: 'return',
                  height: 40,
                  width: 80,
                ),
                horizontalSpaceTiny,
                SubmitButton(
                  onPress: viewModel.navigateToSurveySplashView,
                  image: myIcons.save,
                  imgwidth: 12,
                  text: 'submit',
                  height: 40,
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  WidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetViewModel();
}
