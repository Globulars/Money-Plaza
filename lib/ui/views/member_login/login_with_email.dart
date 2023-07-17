import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'member_login_viewmodel.dart';

class LoginWithEmail extends StackedView<MemberLoginViewModel> {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        CustomTextField(
          hintText: "Email",
          hintStyle: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        CustomTextField(
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        verticalSpaceSmall,
        SubmitButton(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.3,
          text: "Login",
        ),
        verticalSpaceMedium,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              myIcons.logoGoogle,
              width: 50,
              height: 50,
            ),
            horizontalSpaceMedium,
            Image.asset(
              myIcons.facebookLogo,
              width: 50,
              height: 50,
            ),
          ],
        ),
        verticalSpaceSmall,
        GestureDetector(
          onTap: viewModel.showResetPassword,
          child: CustomText(
            text: "Forget Password?",
            color: kcDarkGreyColor,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
