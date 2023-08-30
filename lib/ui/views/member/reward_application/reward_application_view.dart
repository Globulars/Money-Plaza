// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/dropdown_textfield/model_dropdown.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'reward_application_viewmodel.dart';

class RewardApplicationView extends StackedView<RewardApplicationViewModel> {
  const RewardApplicationView({Key? key}) : super(key: key);
  @override
  void onViewModelReady(RewardApplicationViewModel viewModel) {
    viewModel.getCompaniesByType();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    RewardApplicationViewModel viewModel,
    Widget? child,
  ) {
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: viewModel.formKey,
      child: Stack(
        children: [
          const BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(context),
            body: Column(
              children: [
                SubBar(
                  width: width * 0.95,
                  height: 50,
                  text: "moneyPlazaReward",
                  btmLeftRadius: 0,
                  btmRightRadius: 0,
                  fontSize: 16,
                ),
                const Divider(
                  color: darkGreenHeigh,
                  height: 1.0,
                  thickness: 3,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
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
                            onChanged: viewModel.setTypeOfProduct,
                            options: viewModel.typeOfProductList,
                            value: viewModel.typeOfProduct,
                          ),
                          verticalSpaceTiny,
                          viewModel.institution != null
                              ? ModelDropdown(
                                  value: viewModel.institution,
                                  titleText: 'institution',
                                  onChanged: viewModel.setInstitution,
                                  options: viewModel.institutionList,
                                )
                              : DropdownTextfield(
                                  titleText: 'institution',
                                  onChanged: (String) {},
                                  options: [],
                                ),
                          verticalSpaceTiny,
                          viewModel.institution != null
                              ? ModelDropdown(
                                  titleText: 'rewardDetails',
                                  onChanged: viewModel.setRewardDetails,
                                  options: viewModel.rewardDetailsList,
                                  value: viewModel.rewardDetails,
                                )
                              : DropdownTextfield(
                                  titleText: 'rewardDetails',
                                  onChanged: (String) {},
                                  options: [],
                                ),
                          verticalSpaceTiny,
                          CustomTextField(
                            controller: viewModel.referenceNumberCtrl,
                            titleText: 'referenceNumber',
                          ),
                          verticalSpaceTiny,
                          Text(
                            "uploadApplication",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ).tr(),
                          verticalSpaceTiny,
                          ReturnButton(
                            text: "Upload File",
                            onPress: viewModel.uploadImageAndPost,
                            height: 40,
                          ),
                          verticalSpaceLarge
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                  image: myIcons.done,
                  imgwidth: 12,
                  text: 'submit',
                  height: 40,
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  RewardApplicationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardApplicationViewModel();
}
