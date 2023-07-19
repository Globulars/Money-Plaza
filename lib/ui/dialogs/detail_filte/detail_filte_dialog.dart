import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/result_card.dart';
import 'detail_filte_dialog_model.dart';

const double _graphicSize = 60;

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
                height: 40,
                color: Colors.white,
                width: width * 1,
                image: myIcons.search,
                text: 'Interest Calculator',
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
                    resultCard(context, detailPage: 0.17),
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
