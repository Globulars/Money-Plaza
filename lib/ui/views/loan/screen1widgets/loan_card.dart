import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../loan_viewmodel.dart';

class LoanCard extends ViewModelWidget<LoanViewModel> {
  const LoanCard({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width:width*0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Image.asset(myIcons.weLend,height: 100,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
