import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../widgets/common/icon_box_btn/text.dart';
import '../../../../../widgets/top_bar2.dart';
import '../ploanreslut_viewmodel.dart';

class TopWidget extends ViewModelWidget<PloanreslutViewModel> {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PloanreslutViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
         
          children: [
            topBar(context),
            const Divider(
              color: darkGreenHeigh,
              height: 1.0,
              thickness: 1,
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
          ],
        )
      ],
    );
  }
}
