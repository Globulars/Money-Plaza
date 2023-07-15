import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../loan_viewmodel.dart';

class PicContainer extends ViewModelWidget<LoanViewModel> {
  const PicContainer({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
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
        ),
        verticalSpaceMedium,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconBoxBtn(
                  height: 80,
                  width: width * 0.45,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  topimage: myIcons.personalLoans,
                  text: 'Personal Loans',
                ),
                horizontalSpaceSmall,
                IconBoxBtn(
                  height: 80,
                  width: width * 0.45,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  topimage: myIcons.ownerLoan,
                  text: "Property Owner's Loan",
                ),
              ],
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconBoxBtn(
                  height: 80,
                  width: width * 0.45,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  topimage: myIcons.balanceTrans,
                  text: 'Loan Balance Transfer',
                ),
                horizontalSpaceSmall,
                IconBoxBtn(
                  height: 80,
                  width: width * 0.45,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  topimage: myIcons.commericalLoan,
                  text: 'Commerical Loans',
                ),
              ],
            ),
            verticalSpaceSmall,
          ],
        )
      ],
    );
  }
}
