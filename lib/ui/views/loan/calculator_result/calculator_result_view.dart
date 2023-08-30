import 'package:flutter/material.dart';
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
import '../widgets/loan_tags_list_view.dart';
import '../widgets/result_card.dart';
import 'calculator_widgets/calc_items.dart';
import 'calculator_widgets/data_table.dart';

class CalculatorResultView extends StackedView<LoanViewModel> {
  final String monthlyPayment, interest, loanAmount;

  final List<LoanCard>? loanCard;
  const CalculatorResultView(
      this.monthlyPayment, this.loanAmount, this.interest,
      {Key? key, this.loanCard})
      : super(key: key);
  @override
  void onViewModelReady(LoanViewModel viewModel) {
    viewModel.monthlyPaymentCtrl.text = monthlyPayment;
    viewModel.interestCtrl.text = interest;
    viewModel.loanAmountCtrl.text = loanAmount;
    viewModel.getLoanTags();
    viewModel.loanListData();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                  const LoanTagsListView(),
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
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.2,
                                      width: width * 1,
                                    ),
                                    const CircularProgressIndicator(),
                                  ],
                                )
                              : ListView.builder(
                                  itemCount: viewModel.loanCardList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return ResultCard(
                                        loanData: viewModel.loanCardList[index]);
                                  },
                                ),
                          verticalSpaceTiny,
                          const CalculatorItems(),
                          const CalDataTable(),
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
