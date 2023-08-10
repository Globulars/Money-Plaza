// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

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

class SignUpWithEmail extends ViewModelWidget<MemberLoginViewModel> {
  const SignUpWithEmail({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    MemberLoginViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        verticalSpaceSmall,
        verticalSpaceTiny,
        CustomTextField(
          hintText: "email",
          controller: viewModel.emailCtrl,
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
              onPress: viewModel.sendEmailCode,
              height: 40,
              width: width * 0.22,
              boxcolor: darkGreenLight,
              color: Colors.white,
              fontSize: 14,
            ),
            CustomTextField(
              width: width * 0.68,
              hintText: "verificationCode",
              controller: viewModel.verifyCode,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "enterPassword",
          controller: viewModel.passwordCtrl,
          textAlign: TextAlign.center,
        ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "confirmPassword",
          controller: viewModel.confirmPasswordCtrl,
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
              controller: viewModel.firstNameCtrl,
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
            CustomTextField(
              width: width * 0.44,
              hintText: "lastName",
              controller: viewModel.lastNameCtrl,
              hintStyle: const TextStyle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        verticalSpaceSmall,
        DropdownTextfield(
            height: 40,
            options: viewModel.interestProductsList,
            value: viewModel.interestProducts,
            onChanged: viewModel.setInterestProducts),
        verticalSpaceSmall,
        DropdownTextfield(
            height: 40,
            options: viewModel.knownChannelList,
            value: viewModel.knownChannel,
            onChanged: viewModel.setKnownChannel),
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
          onPress: viewModel.signupByEmail,
          fontSize: 16,
        ),
        verticalSpaceLarge
      ],
    );
  }
}
