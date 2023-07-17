import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'member_login_viewmodel.dart';

class SignUpWithEmail extends StackedView<MemberLoginViewModel> {
  const SignUpWithEmail({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomTextField(
          hintText: "Email",
          hintStyle: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SubmitButton(
              text: "Send",
              height: 40,
              width: width * 0.2,
            ),
            CustomTextField(
              width: width * 0.64,
              hintText: "Verification Code",
              hintStyle: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomTextField(
          hintText: "Enter Password (8-15 digits)",
          hintStyle: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        CustomTextField(
          hintText: "Confirm Password",
          hintStyle: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(
              width: width * 0.42,
              hintText: "First Name",
              hintStyle: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            CustomTextField(
              width: width * 0.42,
              hintText: "Last Name",
              hintStyle: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        verticalSpaceSmall,
        Row(
          children: [
            Image.asset(
              myIcons.charmSquareTick,
              height: 30,
              width: 30,
            ),
            horizontalSpaceTiny,
            Container(
              width: width * 0.75,
              child: CustomText(
                text:
                    "Subscribe to get latest exclusive offer and financial information",
                color: kcDarkGreyColor,
                fontSize: 16,
              ),
            ),
          ],
        ),

        verticalSpaceSmall,
        SubmitButton(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.3,
          text: "Register",
        ),
      ],
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
