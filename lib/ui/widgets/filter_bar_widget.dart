// ignore_for_file: unused_element
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../common/ui_helpers.dart';
import '../views/loan/loan_viewmodel.dart';
import 'common/icon_box_btn/icon_box_btn.dart';
import 'package:stacked/stacked.dart';

class FilterBarWidget extends ViewModelWidget<LoanViewModel> {
  const FilterBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return viewModel.loanCardList.isEmpty
        ? Column(
            children: [
              SizedBox(
                height: height * 0.2,
                width: width * 1,
              ),
              const CircularProgressIndicator(),
            ],
          )
        : ListView.builder(
            itemCount: viewModel.loanCardList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconBoxBtn(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        topimage: myIcons.personalLoans,
                        text: 'personalLoans',
                        onPress: viewModel.navigateToPersonalloan,
                      ),
                      horizontalSpaceTiny,
                      IconBoxBtn(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        topimage: myIcons.ownerLoan,
                        text: "propertyOwnerLoan",
                        onPress: viewModel.navigateToOwnerloan,
                      ),
                    ],
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconBoxBtn(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        topimage: myIcons.balanceTrans,
                        text: 'loanBalanceTransfer',
                        onPress: viewModel.navigateToBlnstransfer,
                      ),
                      horizontalSpaceTiny,
                      IconBoxBtn(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        topimage: myIcons.commericalLoan,
                        text: 'commericalLoans',
                        onPress: viewModel.navigateToCommerical,
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                ],
              );
            },
          );
  }
}
