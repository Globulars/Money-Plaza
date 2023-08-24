import '../../loan_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/schedule_loan.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import 'package:easy_localization/easy_localization.dart';

class ScheduleLoanBuilder extends ViewModelWidget<LoanViewModel> {
  final String amount, numOfMonths;
  final double interestRate;
  const ScheduleLoanBuilder(
      {required this.amount,
      required this.numOfMonths,
      required this.interestRate,
      Key? key})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width * 0.42,
        child: FutureBuilder<ScheduleLoan>(
          future: viewModel.scheduleByPLoanForRepayment(
              amount, numOfMonths, interestRate),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.hasData) {
                List<Schedules>? data = snapshot.data!.schedules;
                return CustomText(
                  text: "firstMonth".tr(args: [
                    data![0].paymentAmount.toString(),
                    data[1].paymentAmount.toString(),
                    data.last.paymentAmount.toString(),
                  ]),
                  textAlign: TextAlign.center,
                );
              }
            }
            return Container();
          },
        ));
  }
}
