import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../detail_filte_dialog_model.dart';

class Card1Table extends ViewModelWidget<DetailFilteDialogModel> {
  const Card1Table({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DetailFilteDialogModel viewModel,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
          columnSpacing: 3,
          dataRowMinHeight: 3,
          dataRowMaxHeight: 20,
          horizontalMargin: 0,
          columns: [
            DataColumn(
              label: SizedBox(
                  width: 40,
                  child: CustomText(
                    text: 'loanAmount',
                    textAlign: TextAlign.start,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: 60,
                  child: CustomText(
                    text: 'repaymentPeriod',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: 60,
                  child: CustomText(
                    text: 'weLendCashRebate',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: 60,
                  child: CustomText(
                    text: 'exclusiveRebate',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
            DataColumn(
              label: SizedBox(
                  width: 60,
                  child: CustomText(
                    text: 'extraRebate',
                    textAlign: TextAlign.center,
                    color: darkGreenHeigh,
                    fontSize: 10,
                  )),
            ),
          ],
          rows: [
            DataRow(cells: [
              DataCell(SizedBox(
                  width: 20,
                  child: CustomText(
                    text: '1',
                    textAlign: TextAlign.center,
                    fontSize: 10,
                  ))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$6.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$65.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$65.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$654.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
            ]),
            DataRow(cells: [
              DataCell(SizedBox(
                  width: 20,
                  child: CustomText(
                    text: '2',
                    textAlign: TextAlign.center,
                    fontSize: 10,
                  ))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                          text: "\$6.36.777",
                          textAlign: TextAlign.center,
                          fontSize: 8)))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$65.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$65.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
              DataCell(SizedBox(
                  width: 60,
                  child: Center(
                      child: CustomText(
                    text: "\$654.36.777",
                    textAlign: TextAlign.center,
                    fontSize: 8,
                  )))),
            ]),
          ]),
    );
  }
}
