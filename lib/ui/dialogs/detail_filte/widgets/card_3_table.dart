import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../detail_filte_dialog_model.dart';

class Card3Table extends ViewModelWidget<DetailFilteDialogModel> {
  const Card3Table({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DetailFilteDialogModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
          columnSpacing: 3,
          dataRowMinHeight: 3,
          dataRowMaxHeight: 20,
          horizontalMargin: 0,
          columns: [
            // Set the name of the column
            DataColumn(
              label: SizedBox(
                  width: width * 0.27,
                  child: CustomText(
                    text: 'loanAmount',
                    textAlign: TextAlign.start,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: width * 0.27,
                  // height: 200,

                  child: CustomText(
                    text: 'repaymentPeriod2',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: width * 0.27,
                  child: CustomText(
                    text: 'cashRebate',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
          ],
          rows: [
            // Set the values to the columns
            DataRow(cells: [
              DataCell(SizedBox(
                  width: width * 0.27,
                  child: CustomText(
                    text: '1',
                    textAlign: TextAlign.center,
                    fontSize: 10,
                  ))),
              DataCell(SizedBox(
                  width: width * 0.27,
                  child: Center(
                      child: CustomText(
                    text: "\$6.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: width * 0.27,
                  child: Center(
                      child: CustomText(
                    text: "\$65.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
            ]),
          ]),
    );
  }
}
