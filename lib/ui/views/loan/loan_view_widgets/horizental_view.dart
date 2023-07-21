import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/top_bar2/top_bar2_view.dart';
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
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      
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
        // verticalSpaceTiny,
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
