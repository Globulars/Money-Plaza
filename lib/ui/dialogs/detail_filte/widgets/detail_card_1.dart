import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../services/Models/loan_card.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../detail_filte_dialog_model.dart';

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
              // Container(
              //   height: 50,
              //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //       color: lightGreenHeigh,
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(4), topRight: Radius.circular(4))),
              //   child: Row(
              //     children: [
              //       Image.asset(
              //         myIcons.appbarTitle,
              //       ),
              //     ],
              //   ),
              // ),
              CustomText(text: loanData.detail.toString()
                  // 'for3monthsSuccessfully'
                  ),
                   
              // WebViewHtml(url: loanData.detail.toString(),)
            ],
          ),
        ),
      ),
    );
  }
}
