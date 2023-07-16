import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../common/app_colors.dart';
import 'common/icon_box_btn/icon_box_btn.dart';

Widget topBar(context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBoxBtn(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.aiMatching,
              text: 'A.I.Matching',
            ),
            IconBoxBtn(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.filter,
              text: 'Filter',
            ),
            InkWell(
              onTap: () {
                // viewModel.navigateCalculatorDialog();
              },
              child: IconBoxBtn(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                boxcolor: darkGreenHeigh,
                topimage: myIcons.calculator,
                text: 'Calculator',
              ),
            ),
            IconBoxBtn(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              boxcolor: darkGreenHeigh,
              topimage: myIcons.compare1,
              text: 'Compare',
            ),
          ],
        ),
      ),
      const Divider(
        color: darkGreenHeigh,
        height: 5.0,
        thickness: 8,
      ),
    ],
  );
}
