import 'package:money_plaza/ui/views/loan/loan_viewmodel.dart';
import '../../../../services/Models/loan_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'card_1_table.dart';

class DetailCard1 extends ViewModelWidget<LoanViewModel> {
  final LoanCard loanData;
  const DetailCard1({Key? key, required this.loanData}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
          child: Column(
            children: [
              WebViewHtml(
                url: loanData.detail.toString(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
