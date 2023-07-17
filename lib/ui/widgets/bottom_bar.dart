import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

Widget bottomBar(widget) {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            myIcons.contacts,
            height: 50,
          ),
          widget
        ],
      ),
    ),
  );
}
