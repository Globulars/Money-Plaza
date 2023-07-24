import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';
import '../views/landing/landing_view.dart';

AppBar appBar(BuildContext context) {
  final _navigationService = locator<NavigationService>();
  navigateToSettings() async {
    _navigationService.navigateToSettingsView(context: context);
  }

  navigateToLanding() async {
    _navigationService.clearStackAndShowView(const LandingView());
  }

  return AppBar(
    title: Image.asset(
      myIcons.appbarTitle,
      height: 40,
    ),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: Image.asset(
          myIcons.appbarSetting,
          height: 30,
        ),
        tooltip: 'Setting Icon',
        onPressed: navigateToSettings,
      ), //IconButton
    ], //<Widget>[]
    backgroundColor: Colors.transparent,
    bottomOpacity: 0.0,
    elevation: 0.0,
    leading: IconButton(
      icon: Image.asset(
        myIcons.appbarHome,
        height: 30,
      ),
      tooltip: 'Menu Icon',
      onPressed: navigateToLanding,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
