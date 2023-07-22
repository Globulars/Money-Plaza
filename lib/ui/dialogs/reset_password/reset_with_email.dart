import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
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
    return Column(
      children: [
        verticalSpaceSmall,
        CustomTextField(
          hintText: "email",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SubmitButton(
              text: "send",
              height: 40,
              width: width * 0.17,
              fontSize: 16,
            ),
            CustomTextField(
              width: width * 0.5,
              hintText: "verificationCode",
              hintStyle: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomTextField(
          hintText: "enterPassword",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        CustomTextField(
          hintText: "confirmPassword",
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
              boxColor: Colors.transparent,
            ),
            SubmitButton(
              height: 40,
              width: 80,
              text: "submit",
              fontSize: 16,
            ),
          ],
        ),
      ],
    );
  }

  @override
  ResetPasswordDialogModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordDialogModel();
}
