import '../../loan_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/schedule_loan.dart';
import '../../../../widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';

class ScheduleLoanBuilder extends ViewModelWidget<LoanViewModel> {
  const ScheduleLoanBuilder({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Row(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.compareData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.48,
                    child: FutureBuilder<ScheduleLoan>(
                      future: viewModel.scheduleByPLoanForRepayment(
                          "${viewModel.compareData[index].minIncome}",
                          "${viewModel.compareData[index].minTenor}",
                          viewModel.compareData[index].interestRate ?? 0.0),
                      builder: (ctx, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text(snapshot.error.toString()),
                            );
                          } else if (snapshot.hasData) {
                            List<Schedules>? data = snapshot.data!.schedules;
                            return data != null
                                ? CustomText(
                                    text: "firstMonth".tr(args: [
                                      // ignore: prefer_is_empty
                                      data.length >= 1
                                          ? data[0].paymentAmount.toString()
                                          : "N/A",
                                      data.length >= 2
                                          ? data[1].paymentAmount.toString()
                                          : "N/A",
                                      data.last.paymentAmount.toString(),
                                    ]),
                                    textAlign: TextAlign.center,
                                  )
                                : const Center(child: Text("N/A"));
                          }
                        }
                        return Container();
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
