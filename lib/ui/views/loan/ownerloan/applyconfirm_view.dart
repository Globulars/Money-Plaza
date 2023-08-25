// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'ownerloan_viewmodel.dart';

class OwnerApplyConfirmView extends StackedView<OwnerloanViewModel> {
  bool match;

  OwnerApplyConfirmView({
    super.key,
    this.match = false,
  });

  @override
  Widget builder(
    BuildContext context,
    OwnerloanViewModel viewModel,
    Widget? child,
  ) {
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
                        children: [
                          CustomText(text: 'enterFollowingInformation'),
                          verticalSpaceTiny,
                          CustomTextField(
                            titleText: 'fullName',
                            controller: viewModel.fullNameCtrl,
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            controller: viewModel.phoneNumberCtrl,
                            textInputType: TextInputType.number,
                            titleText: 'phoneNumber',
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            controller: viewModel.emailCtrl,
                            titleText: 'email',
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            controller: viewModel.hkidCtrl,
                            titleText: 'hkid',
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
                  imageLeft: match ? myIcons.previous : myIcons.returnIcon1,
                  imgwidth: 12,
                  text: match ? 'previous' : 'return',
                  height: 40,
                  width: 90,
                ),
                horizontalSpaceTiny,
                SubmitButton(
                  image: match ? myIcons.match : myIcons.done,
                  imgwidth: 16,
                  text: match ? 'match' : 'Done',
                  height: 40,
                  width: 80,
                  onPress: viewModel.submitSurveyForm,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  OwnerloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanViewModel();
}
