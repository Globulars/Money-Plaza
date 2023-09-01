import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/views/loan/loan_viewmodel.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';

class Card3Table extends ViewModelWidget<LoanViewModel> {
  const Card3Table({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
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
