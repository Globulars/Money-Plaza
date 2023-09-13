import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'change_password_viewmodel.dart';

class ChangePasswordView extends StackedView<ChangePasswordViewModel> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChangePasswordViewModel viewModel,
    Widget? child,
  ) {
    // var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: const Color.fromARGB(0, 92, 53, 53),
          appBar: appBar(context),
          body: Form(
            key: viewModel.formKey,
            child: Column(
              children: [
                SubBar(
                  btmLeftRadius: 0,
                  btmRightRadius: 0,
                  image: myIcons.setting,
                  text: 'changePassword',
                  fontSize: 18,
                  divider: true,
                  // onPress: viewModel.showCreditFilter,
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
                          CustomTextField( number: false,
                            controller: viewModel.currentPasswordCtrl,
                            titleText: 'enterCurrentPassword',
                          ),
                          verticalSpaceTiny,
                          CustomTextField( number: false,
                            controller: viewModel.newPasswordCtrl,
                            titleText: 'enterNewPassword',
                          ),
                          verticalSpaceTiny,
                          CustomTextField( number: false,
                            controller: viewModel.confirmNewPasswordCtrl,
                            titleText: 'confirmNewPassword',
                          ),
                          verticalSpaceTiny,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                onPress: viewModel.changePassword,
                image: myIcons.save,
                imgwidth: 12,
                text: 'save',
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
  ChangePasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChangePasswordViewModel();
}
