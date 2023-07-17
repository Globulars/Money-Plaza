import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'calculator_widgets/btn_listview.dart';
import 'calculator_result_viewmodel.dart';
import 'calculator_widgets/calc_items.dart';
import 'calculator_widgets/calculator_card.dart';
import 'calculator_widgets/data_table.dart';

class CalculatorResultView extends StackedView<CalculatorResultViewModel> {
  const CalculatorResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalculatorResultViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BtnListView(),
                verticalSpaceTiny,
                CustomText(
                  text: 'Our Recommendation',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                verticalSpaceTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomText(
                    text:
                        '*This calculation is based on our experience for experience only.The final offer depends on the insltitution and the credit situation of borrower.',
                    color: Colors.black,
                    textAlign: TextAlign.center,
                    fontSize: 10,
                  ),
                ),
                const CalculatorCard(),
                verticalSpaceTiny,
                const CalculatorItems(),
                const CalDataTable(),
                verticalSpaceLarge
              ],
            ),
          ),
          bottomNavigationBar: Container(
              height: 60,
              width: width * 1,
              child: SizedBox(
                  child: Image.asset(
                myIcons.contacts,
              ))),
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
