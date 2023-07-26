// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../morgages_viewmodel.dart';

class Picture extends ViewModelWidget<MorgagesViewModel> {
  const Picture({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    MorgagesViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 170,
          width: width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/best_deals.jpg'),
                fit: BoxFit.fitWidth),
          ),
          child: Center(
              child: CustomText(
            text: 'compareAvailableMortagages',
            fontSize: 24,
            color: Colors.white,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          )),
        ),
      ],
    );
  }
}
