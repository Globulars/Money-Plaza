import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

AppBar appBar() {
  final _navigationService = locator<NavigationService>();
  Future navigateToSettings() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigationService.navigateToSettingsView();
  }

  Future navigateToLanding() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigationService.navigateToLandingView();
  }

  return AppBar(
    title: Image.asset(
      myIcons.appbarTitle,
    ),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: Image.asset(myIcons.appbarSetting),
        tooltip: 'Setting Icon',
        onPressed: navigateToSettings,
      ), //IconButton
    ], //<Widget>[]
    backgroundColor: Colors.transparent,
    bottomOpacity: 0.0,
    elevation: 0.0,
    leading: IconButton(
      icon: Image.asset(myIcons.appbarHome),
      tooltip: 'Menu Icon',
      onPressed: navigateToLanding,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
