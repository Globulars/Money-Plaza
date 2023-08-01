import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../../widgets/common/icon_box_btn/text.dart';
import '../calculator_result_viewmodel.dart';

class CalDataTable extends ViewModelWidget<CalculatorResultViewModel> {
  const CalDataTable({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CalculatorResultViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Column(
          children: [
            Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: lightGreenHeigh,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4))),
                child: CustomText(
                  text: 'paymentTable',
                  textAlign: TextAlign.center,
                )),
            SingleChildScrollView(
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
                            text: 'period',
                            textAlign: TextAlign.start,
                            color: darkGreenHeigh,
                            fontSize: 10,
                          )),
                    ),
                    DataColumn(
                      label: SizedBox(
                          width: 60,
                          child: CustomText(
                            text: 'monthlyRepaymentnAmount',
                            textAlign: TextAlign.center,
                            color: darkGreenHeigh,
                            fontSize: 10,
                          )),
                    ),
                    DataColumn(
                      label: SizedBox(
                          width: 60,
                          child: CustomText(
                            text: 'interestAmount',
                            textAlign: TextAlign.center,
                            color: darkGreenHeigh,
                            fontSize: 10,
                          )),
                    ),
                    DataColumn(
                      label: SizedBox(
                          width: 60,
                          child: CustomText(
                            text: 'principalAmount',
                            textAlign: TextAlign.center,
                            color: darkGreenHeigh,
                            fontSize: 10,
                          )),
                    ),
                    DataColumn(
                      label: SizedBox(
                          width: 60,
                          child: CustomText(
                            text: 'remainingAmount',
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
            ),
          ],
        ),
      ),
    );
  }
}
