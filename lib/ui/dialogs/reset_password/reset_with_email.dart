import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';

class ResetWithEmail extends StackedView<ResetPasswordDialogModel> {
  const ResetWithEmail({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Form(
       key: viewModel.formKey,
      child: Column(
        children: [
          verticalSpaceSmall,
          CustomTextField(
            hintText: "email",
            controller: viewModel.emailCtrl,
            hintStyle: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: ReturnButton(
                  text: "send",
                  onPress: viewModel.sendForgetPasswordCodeByEmail,
                  height: 40,
                  width: width * 0.19,
                  boxcolor: darkGreenLight,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              CustomTextField(
                width: width * 0.51,
                controller: viewModel.verifyCode,
                hintText: "verificationCode",
                hintStyle: const TextStyle(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          verticalSpaceTiny,
          CustomTextField(
            hintText: "enterPassword",
            controller: viewModel.passwordCtrl,
            hintStyle: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          verticalSpaceTiny,
          CustomTextField(
            hintText: "confirmPassword",
            controller: viewModel.confirmPasswordCtrl,
            hintStyle: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          verticalSpaceSmall,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubmitButton(
                color: darkGreenHeigh,
                image: myIcons.iconPowerReset,
                imgwidth: 16,
                text: "resetAll",
                onPress: viewModel.resetAll,
                boxColor: Colors.transparent,
              ),
              SubmitButton(
                height: 40,
                width: 80,
                onPress: viewModel.updatePasswordByEmailCode,
                text: "submit",
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  ResetPasswordDialogModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordDialogModel();
}
