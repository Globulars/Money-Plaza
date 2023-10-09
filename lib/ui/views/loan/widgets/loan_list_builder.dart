import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../../services/Models/loan_card.dart';
import 'result_card.dart';
import '../loan_viewmodel.dart';

class LoanListView extends ViewModelWidget<LoanViewModel> {
  final List<LoanCard>? loanCard;
  final double height;
  final LoanViewModel viewModel = LoanViewModel();
  LoanListView({Key? key, this.loanCard, required this.height})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return viewModel.loanCardList.isEmpty
        ? viewModel.loanCardListMessage != ""
            ? Text(viewModel.loanCardListMessage)
            : Column(
                children: [
                  SizedBox(
                    height: height * 0.2,
                    width: width * 1,
                  ),
                  const CircularProgressIndicator(
                    color: darkGreenLight,
                  ),
                ],
              )
        : SizedBox(
            height: height,
            child: SingleChildScrollView(
              child: ListView.builder(
                itemCount: viewModel.loanCardList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ResultCard(loanData: viewModel.loanCardList[index]);
                },
              ),
            ),
          );
  }
}
