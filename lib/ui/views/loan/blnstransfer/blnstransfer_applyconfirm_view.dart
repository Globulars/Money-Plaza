// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/blnstransfer_viewmodel.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';

class BlnstransferloanApplyConfirmView
    extends StackedView<BlnstransferViewModel> {
  bool match;
  final Map<String, dynamic> machBody;
  final List survayBody;
  BlnstransferloanApplyConfirmView(this.machBody, this.survayBody,
      {super.key, this.match = false});

  @override
  Widget builder(
    BuildContext context,
    BlnstransferViewModel viewModel,
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
                  imageLeft: match ? myIcons.returnIcon1 : myIcons.previous,
                  imgwidth: 12,
                  text: match ? 'return' : 'previous',
                  height: 40,
                  width: 90,
                ),
                horizontalSpaceTiny,
                SubmitButton(
                  image: match ? myIcons.done : myIcons.match,
                  imgwidth: 16,
                  text: match ? 'done' : 'match',
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
  BlnstransferViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BlnstransferViewModel();
}
