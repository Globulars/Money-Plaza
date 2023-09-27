import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../services/Models/loan_card.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../loan_viewmodel.dart';
import '../widgets/filter_bottom_bar.dart';
import '../widgets/result_card.dart';
import 'calculator_widgets/calc_items.dart';
import 'calculator_widgets/data_table.dart';

class CalculatorResultView extends StackedView<LoanViewModel> {
  final String loanTenor, loanAmount;
  final int repayment;
  final List<LoanCard>? loanCard;
  const CalculatorResultView(this.loanTenor, this.loanAmount, this.repayment,
      {Key? key, this.loanCard})
      : super(key: key);
  @override
  void onViewModelReady(LoanViewModel viewModel) {
    viewModel.loanAmountCtrl.text = loanAmount;
    viewModel.repayment = repayment;
    viewModel.loneListCalculatorBody(loanTenor);
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: Stack(
            children: [
              Column(
                children: [
                  verticalSpace(70.0),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          verticalSpaceTiny,
                          CustomText(
                            text: 'ourRecommendation',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                          verticalSpaceTiny,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: CustomText(
                              text: 'calculationIsBased',
                              color: Colors.black,
                              textAlign: TextAlign.center,
                              fontSize: 10,
                            ),
                          ),
                          viewModel.loanCardList.isEmpty
                              ? viewModel.isBusy
                                  ? const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(
                                        color: darkGreenLight,
                                      ),
                                  )
                                  : const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("sorryNoProductsIsFound"),
                                  )
                              : ListView.builder(
                                  itemCount: viewModel.loanCardList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ResultCard(
                                        loanData:
                                            viewModel.loanCardList[index]);
                                  },
                                ),
                          verticalSpaceTiny,
                          const CalculatorItems(),
                          viewModel.paymentTable.schedules == null
                              ? viewModel.paymentTableMessage == ""
                                  ? const SizedBox()
                                  : Text(viewModel.paymentTableMessage)
                              : const CalDataTable(),
                          verticalSpaceLarge
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const FilterBottomBar(),
            ],
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'Back to list',
            height: 40,
            width: 100,
          ),
        ),
      ],
    );
  }

  @override
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
