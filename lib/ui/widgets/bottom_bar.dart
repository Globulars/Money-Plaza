import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.dialogs.dart';
import '../../app/app.locator.dart';

Widget bottomBar(widget) {
  final _dialogService = locator<DialogService>();
  void showContactUs() {
    _dialogService.showCustomDialog(
      variant: DialogType.contactUs,
    );
  }

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
          GestureDetector(
            onTap: showContactUs,
            child: Image.asset(
              myIcons.contacts,
              height: 50,
            ),
          ),
          widget
        ],
      ),
    ),
  );
}
