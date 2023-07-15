import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/common/icon_box_btn/icon_box_btn.dart';
import '../loan_viewmodel.dart';

class ContainerListView extends ViewModelWidget<LoanViewModel> {
  const ContainerListView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBoxBtn(
                  height: 80,
                  width: width * 0.24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  boxcolor: darkGreenHeigh,
                  topimage: myIcons.aiMatching,
                  text: 'A.I.Matching',
                ),
                IconBoxBtn(
                  height: 80,
                  width: width * 0.24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  boxcolor: darkGreenHeigh,
                  topimage: myIcons.filter,
                  text: 'Filter',
                ),
                IconBoxBtn(
                  height: 80,
                  width: width * 0.24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  boxcolor: darkGreenHeigh,
                  topimage: myIcons.calculator,
                  text: 'Calculator',
                ),
                IconBoxBtn(
                  height: 80,
                  width: width * 0.24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  boxcolor: darkGreenHeigh,
                  topimage: myIcons.compare1,
                  text: 'Compare',
                ),
              ],
            ),
            const Divider(
              color: darkGreenHeigh,
              height: 5.0,
              thickness: 8,
            ),
            // verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  myIcons.cilSortDecending,
                  width: 50,
                ),
                horizontalSpaceTiny,
                SizedBox(
                  height: 40.0,
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
                              border:
                                  Border.all(color: darkGreenHeigh, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Center(
                                child: CustomText(
                              text: 'Loan Amount',
                              color: darkGreenHeigh,
                            )),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            // verticalSpaceTiny,
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomText(
                  text: '88 Results',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            verticalSpaceTiny,
            const Divider(
              color: Colors.black,
              height: 2.0,
              thickness: 1,
            ),
            verticalSpaceMedium
          ],
        )
      ],
    );
  }
}
