import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../widgets/filter_bottom_bar.dart';
import '../calculator_result_viewmodel.dart';

class BtnListView extends ViewModelWidget<CalculatorResultViewModel> {
  const BtnListView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CalculatorResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const FilterBottomBar(),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            horizontalSpaceSmall,
            Image.asset(
              myIcons.cilSortDecending,
              width: 25,
            ),
            horizontalSpaceTiny,
            SizedBox(
              height: 30.0,
              width: width * 0.84,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: darkGreenHeigh, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Center(
                            child: CustomText(
                          text: 'loanAmount',
                          color: darkGreenHeigh,
                          fontSize: 12,
                        )),
                      )),
                ),
              ),
            ),
          ],
        ),
        verticalSpaceTiny,
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomText(
              text: '88results',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 0,
          thickness: 1,
        ),
        verticalSpaceTiny,
      ],
    );
  }
}
