import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../loan_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'filter_container_widget.dart';

class ShortFilterBarWidget extends ViewModelWidget<LoanViewModel> {
  const ShortFilterBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterContainerBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            btmimage: myIcons.personalLoans,
            text: 'personalLoans',
            onPress: viewModel.navigateToPersonalloan,
          ),
          FilterContainerBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            btmimage: myIcons.ownerLoan,
            text: "propertyOwnerLoan",
            onPress: viewModel.navigateToOwnerloan,
          ),
          FilterContainerBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            btmimage: myIcons.balanceTrans,
            text: 'loanBalanceTransfer',
            onPress: viewModel.navigateToBlnstransfer,
          ),
          FilterContainerBtn(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            btmimage: myIcons.commericalLoan,
            text: 'commericalLoans',
            onPress: viewModel.navigateToCommerical,
          ),
        ],
      ),
    );
  }
}
