import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../../../widgets/common/result_card.dart';
import 'calculator_widgets/btn_listview.dart';
import 'calculator_result_viewmodel.dart';
import 'calculator_widgets/calc_items.dart';
import 'calculator_widgets/data_table.dart';

class CalculatorResultView extends StackedView<CalculatorResultViewModel> {
  const CalculatorResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalculatorResultViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: Column(
            children: [
              const BtnListView(),
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
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return resultCard(context);
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
  CalculatorResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CalculatorResultViewModel();
}
