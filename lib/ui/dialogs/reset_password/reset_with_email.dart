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
            ReturnButton(
              text: "send",
              height:41.5,
              width: width * 0.19,
              boxcolor: darkGreenLight,
              color: Colors.white,
              fontSize: 14,             
            ),
            CustomTextField(
              width: width * 0.52,
              hintText: "verificationCode",
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "enterPassword",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
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
