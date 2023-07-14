import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

AppBar appBar(menuFunction, settingFunction) {
  return AppBar(
    title: Image.asset(
      myIcons.appbarTitle,
    ),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: Image.asset(myIcons.appbarSetting),
        tooltip: 'Setting Icon',
        onPressed: () {},
      ), //IconButton
    ], //<Widget>[]
    backgroundColor: Colors.transparent,
    bottomOpacity: 0.0,
    elevation: 0.0,
    leading: IconButton(
      icon: Image.asset(myIcons.appbarHome),
      tooltip: 'Menu Icon',
      onPressed: () {},
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
