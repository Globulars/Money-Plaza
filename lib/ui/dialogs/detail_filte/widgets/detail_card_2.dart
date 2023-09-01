import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/views/loan/loan_viewmodel.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';

class DetailCard2 extends ViewModelWidget<LoanViewModel> {
  const DetailCard2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Row(
              children: [
                Image.asset(
                  myIcons.appbarTitle,
                ),
              ],
            ),
          ),
          CustomText(text: 'pleaseTurnOffAdBlocker'),
        ],
      ),
    );
  }
}
