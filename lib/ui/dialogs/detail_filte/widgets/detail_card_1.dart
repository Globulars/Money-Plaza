import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../services/Models/loan_card.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../detail_filte_dialog_model.dart';
import 'card_1_table.dart';

class DetailCard1 extends ViewModelWidget<DetailFilteDialogModel> {
  final LoanCard loanData;
  const DetailCard1({Key? key, required this.loanData}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DetailFilteDialogModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
          child: Column(
            children: [            
              // CustomText(text: loanData.detail.toString()
              //     // 'for3monthsSuccessfully'
              //     ),
                   
              WebViewHtml(url: loanData.detail.toString(),)
            ],
          ),
        ),
      ),
    );
  }
}
