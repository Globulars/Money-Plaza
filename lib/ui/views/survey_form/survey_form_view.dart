// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import '../../widgets/common/icon_box_btn/text.dart';
import 'survey_form_viewmodel.dart';

class SurveyFormView
    extends StackedView<SurveyFormViewModel> {
  final String organization;
  const SurveyFormView({Key? key, required this.organization})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SurveyFormViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
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
              Form(
                key: viewModel.formKey,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          CustomText(text: 'enterFollowingInformation.'),
                          verticalSpaceTiny,
                          CustomTextField(
                            titleText: 'email',
                            controller: viewModel.emailCtrl,
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            titleText: 'fullName',
                            controller: viewModel.nameCtrl,
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            titleText: 'referenceNumber',
                            controller: viewModel.refeNoCtrl,
                          ),
                          verticalSpaceTiny,
                          DropdownTextfield(
                            titleText: 'contactMethod',
                            value: organization,
                            onChanged: (String) {},
                            options: [organization],
                          ),
                          verticalSpaceTiny,
                          CustomTextField(
                            titleText: 'contactNo',
                            controller: viewModel.contactNoCtrl,
                          ),
                        ],
                      ),
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
                width: 80,
              ),
              horizontalSpaceTiny,
              SubmitButton(
                image: myIcons.done,
                imgwidth: 18,
                onPress: () {
                  viewModel.submitSurveyForm(organization);
                },
                text: 'done',
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
  SurveyFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SurveyFormViewModel();
}
