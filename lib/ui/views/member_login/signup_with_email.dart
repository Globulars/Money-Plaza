import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
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
        verticalSpaceSmall,
        verticalSpaceTiny,
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
              width: width * 0.22,
              boxcolor: darkGreenLight,
              color: Colors.white,
              fontSize: 14,             
            ),
            CustomTextField(
              width: width * 0.68,
              hintText: "verificationCode",
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
         verticalSpaceTiny,
        CustomTextField(
          hintText: "enterPassword",
          hintStyle: const TextStyle(),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "confirmPassword",
          hintStyle: const TextStyle(),
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(
              width: width * 0.44,
              hintText: "firstName",
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
            CustomTextField(
              width: width * 0.44,
              hintText: "lastName",
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
         verticalSpaceSmall,
        DropdownTextfield(
            options: viewModel.registerDropDown,
            value: viewModel.registerDropdown,
            onChanged: (onChanged) {

            }),
             verticalSpaceSmall,
           
        DropdownTextfield(
                onChanged: (String) {},
                options: [],
             
              ),
        verticalSpaceSmall,
         verticalSpaceSmall,
        Row(
          children: [
            Image.asset(
              myIcons.charmSquareTick,
              height: 25,
              width: 25,
            ),
            horizontalSpaceSmall,
            SizedBox(
              width: width * 0.75,
              child: CustomText(
                text: "subscribeGetLatest",
                color: kcDarkGreyColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
        verticalSpaceSmall,
         verticalSpaceSmall,
        SubmitButton(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.3,
          text: "register",
          fontSize: 16,
        ),
        verticalSpaceLarge
      ],
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
