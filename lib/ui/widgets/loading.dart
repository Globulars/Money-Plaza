import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';

Widget loading() {
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(40.0),
      child: CircularProgressIndicator(color: darkGreenLight),
    ),
  );
}
