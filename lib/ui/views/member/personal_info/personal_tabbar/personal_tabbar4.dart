import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/sub_bar.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personal_info_viewmodel.dart';

class PersonalTabBar4 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar4({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalInfoViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'loanStatus2',
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            verticalSpaceTiny,
            CustomText(
              text: 'noLoanRecord',
            ),
            verticalSpaceSmall,
            Card(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 3,
                      dataRowMinHeight: 3,
                      dataRowMaxHeight: 20,
                      horizontalMargin: 6,
                      columns: [
                        DataColumn(
                          label: SizedBox(
                              width: 40,
                              child: CustomText(
                                text: 'lender',
                                textAlign: TextAlign.start,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Type Of LOan',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Debt amount',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'total repayment period',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Repayment amount per period',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Remaining repayment period',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'APR',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'total interest',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Amount of existing debt',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Total prepaid interest',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Monthly interest',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'late payment feet',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Min Pay %',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                        DataColumn(
                          label: SizedBox(
                              width: 60,
                              child: CustomText(
                                text: 'Pay in dollar',
                                textAlign: TextAlign.center,
                                color: darkGreenHeigh,
                                fontSize: 10,
                              )),
                        ),
                      ],
                      rows: List.generate(
                        viewModel.userData!.loanInformations!.length,
                        (index) {
                          var data =
                              viewModel.userData!.loanInformations![index];
                          return DataRow(cells: [
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${data.lender}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                            DataCell(SizedBox(
                                width: 20,
                                child: CustomText(
                                  text: "${(index + 1)}",
                                  textAlign: TextAlign.center,
                                  fontSize: 10,
                                ))),
                          ]);
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),

            verticalSpaceMedium,
            SubBar(
              text: "addLoanRecord",
              height: 40,
              boxColor: darkGreenLight,
              btmRightRadius: 5,
              btmLeftRadius: 5,
              topLeftRadius: 5,
              topRightRadius: 5,
              width: width * 0.6,
              onPress: viewModel.navigateToLoanRecordView,
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
