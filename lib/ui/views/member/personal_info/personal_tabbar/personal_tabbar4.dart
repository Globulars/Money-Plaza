import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/sub_bar.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personal_info_viewmodel.dart';

class PersonalTabBar4 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar4({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalInfoViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'loanStatus2',
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            verticalSpaceTiny,
            CustomText(
              text: 'noLoanRecord',
            ),
            verticalSpaceSmall,
            SizedBox(
              height: 100,
              child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 10,
               shrinkWrap: true,
                itemBuilder:  (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: width * 0.43,
                      child:   Column(
                    children: [
                      Container(
                         height: 60,
                        width: width * 0.43,
                        decoration: const BoxDecoration(
                            color: lightGreenHeigh,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Center(
                            child: CustomText(
                          text: 'totalMonthlyAmount',
                          textAlign: TextAlign.center,
                          fontSize: 12,
                        )),
                      ),
                      Container(
                        width: width * 0.44,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Center(child: CustomText(text: '\$0')),
                        ),
                      ),
                    ],
                                  ),
                    ),
                  );
                }
              ),
            ),
            
            verticalSpaceMedium,
            SubBar(
              text: "addLoanRecord",
              height: 40,
              boxColor: darkGreenLight,
              btmRightRadius: 5,
              btmLeftRadius: 5,
              topLeftRadius: 5,
              topRightRadius: 5,
              width: width * 0.6,
              onPress: viewModel.navigateToLoanRecordView,
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
