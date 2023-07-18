// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'reward_application_viewmodel.dart';

class RewardApplicationView extends StackedView<RewardApplicationViewModel> {
  const RewardApplicationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RewardApplicationViewModel viewModel,
    Widget? child,
  ) {
    var width = MediaQuery.of(context).size.width;
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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "enterFollowingInformation",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  verticalSpaceTiny,
                  DropdownTextfield(
                    titleText: 'typeOfProduct',
                    onChanged: (String) {},
                    options: [],
                  ),
                  verticalSpaceTiny,
                  DropdownTextfield(
                    titleText: 'institution',
                    onChanged: (String) {},
                    options: [],
                  ),
                  verticalSpaceTiny,
                  DropdownTextfield(
                    titleText: 'rewardDetails',
                    onChanged: (String) {},
                    options: [],
                  ),
                  verticalSpaceTiny,
                  CustomTextField(
                    titleText: 'referenceNumber',
                  ),
                  verticalSpaceTiny,
                  ReturnButton(
                    imgwidth: 12,
                    text: 'upload',
                    height: 40,
                    width: width * 0.9,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'return',
                height: 40,
                width: 80,
              ),
              horizontalSpaceTiny,
              SubmitButton(
                image: myIcons.search,
                imgwidth: 12,
                // onPress: viewModel.navigateToCreditCardResult,
                text: 'search',
                height: 40,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  RewardApplicationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardApplicationViewModel();
}
