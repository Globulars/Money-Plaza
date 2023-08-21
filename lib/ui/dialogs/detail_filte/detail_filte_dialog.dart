import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/dialogs/detail_filte/widgets/detail_card_1.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../services/Models/loan_card.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/result_card.dart';
import 'detail_filte_dialog_model.dart';
import 'widgets/detail_card_2.dart';
import 'widgets/detail_card_3.dart';

class DetailFilteDialog extends StackedView<DetailFilteDialogModel> {
  final DialogRequest request;

  final Function(DialogResponse) completer;

  const DetailFilteDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailFilteDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    LoanCard loanData = request.data;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              SubBar(
                height: 50,
                color: Colors.white,
                width: width * 1,
                image: myIcons.search,
                text: 'details',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                btmLeftRadius: 0,
                btmRightRadius: 0,
                imgwidth: 15,
                close: true,
              ),
              verticalSpaceTiny,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    resultCard(context, loanData, detailPage: 0.17),
                    DetailCard1(loanData: loanData),
                    // const DetailCard2(),
                    // const DetailCard3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DetailFilteDialogModel viewModelBuilder(BuildContext context) =>
      DetailFilteDialogModel();
}
