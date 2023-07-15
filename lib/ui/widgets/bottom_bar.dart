import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

Widget bottomBar(widget) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          myIcons.contacts,
          height: 50,
        ),
        widget
      ],
    ),
  );
}
