import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
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
            CustomTextField(
              titleText: 'Loan Status',
              hintText: 'No Loan record, please add here',
            ),
            verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(
              children: [
                 Container(
            height: 60,
            width: width*0.43,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10))),
            child: Center(
                child: CustomText(
              text: 'Total Monthly \nRepayment Amount',textAlign: TextAlign.center,fontSize: 12,
            )),
          ),
          Container(
          
            width: width*0.44,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric( vertical: 3),
              child: 
                  Center(child: CustomText(text: '\$0')),
                 
               
            ),
          ),
              ],
             ),
             Column(
              children: [
                 Container(
            height: 60,
            width: width*0.43,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10))),
            child: Center(
                child: CustomText(
              text: 'Total Outstanding \nDebts',textAlign: TextAlign.center,fontSize: 12,
            )),
          ),
          Container(
          
            width: width*0.44,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric( vertical: 3),
              child: 
                  Center(child: CustomText(text: '\$0')),
                 
               
            ),
          ),
              ],
             )
            ],
          ),
           
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}






























