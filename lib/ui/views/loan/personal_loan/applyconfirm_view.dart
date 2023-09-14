// ignore_for_file: must_be_immutable, unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'personalloan_viewmodel.dart';

class PersonalloanApplyConfirmView extends StackedView<PersonalloanViewModel> {
  final Map<String, dynamic> machBody;
  final List survayBody;
  const PersonalloanApplyConfirmView(this.machBody, this.survayBody,
      {super.key});

  @override
  Widget builder(
    BuildContext context,
    PersonalloanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;

    return Form(
      key: viewModel.formKey,
      child: Stack(
        children: [
          const BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(context),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SubBar(
                  divider: true,
                  image: myIcons.contactInfo,
                  text: 'contactInformation',
                  height: 50,
                  scale: 1.4,
                  btmLeftRadius: 0,
                  btmRightRadius: 0,
                ),
                verticalSpaceSmall,
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'enterFollowingInformation'),
                          verticalSpaceTiny,
                          CustomTextField(
                            number: false,
                            titleText: 'fullName',
                            controller: viewModel.fullNameCtrl,
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            number: false,
                            controller: viewModel.phoneNumberCtrl,
                            textInputType: TextInputType.number,
                            titleText: 'phoneNumber',
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            number: false,
                            controller: viewModel.emailCtrl,
                            titleText: 'email',
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            number: false,
                            controller: viewModel.hkidCtrl,
                            titleText: 'hkid',
                          ),
                          verticalSpaceTiny,
                          CustomText(
                            text: 'areyouBorninHongKong',
                            fontWeight: FontWeight.w600,
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReturnButton(
                                height: 40,
                                text: 'yes',
                                width: width * 0.43,
                                boxcolor: viewModel.bornInHK == "yes"
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.bornInHK != "yes"
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setbornInHK("yes");
                                },
                              ),
                              ReturnButton(
                                height: 40,
                                text: 'no',
                                width: width * 0.43,
                                boxcolor: viewModel.bornInHK == "no"
                                    ? darkGreenHeigh
                                    : Colors.white,
                                color: viewModel.bornInHK != "no"
                                    ? darkGreenHeigh
                                    : Colors.white,
                                onPress: () {
                                  viewModel.setbornInHK("no");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                verticalSpaceLarge
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
                  width: 90,
                ),
                horizontalSpaceTiny,
                SubmitButton(
                  image: myIcons.done,
                  imgwidth: 16,
                  text: 'Done',
                  height: 40,
                  width: 80,
                  onPress: () {
                    viewModel.submitSurveyForm(machBody, survayBody);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  PersonalloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalloanViewModel();
}
