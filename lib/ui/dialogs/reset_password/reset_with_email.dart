import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
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
        CustomTextField(
          hintText: "Email",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SubmitButton(
              text: "Send",
              height: 40,
              width: width * 0.2,
              fontSize: 16,
            ),
            CustomTextField(
              width: width * 0.53,
              hintText: "Verification Code",
              hintStyle: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomTextField(
          hintText: "Enter Password (8-15 digits)",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        CustomTextField(
          hintText: "Confirm Password",
          hintStyle: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  myIcons.iconPowerReset,
                  height: 25,
                  width: 25,
                ),
                horizontalSpaceTiny,
                CustomText(
                  text: "Reset All",
                  color: darkGreenLight,
                  fontSize: 20,
                )
              ],
            ),
            SubmitButton(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.3,
              text: "Submit",
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
