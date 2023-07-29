import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'member_login_viewmodel.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginWithPhone extends StackedView<MemberLoginViewModel> {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        verticalSpaceSmall,
        verticalSpaceTiny,
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
           border: Border.all(color: darkGreenLight.withOpacity(0.8),width: 1),
           borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            children: [
                SizedBox(width: 40,child: TextField(
                  decoration: InputDecoration(border: InputBorder.none)
                ),),
                horizontalSpaceTiny,
                 Expanded(child: TextField(
                                  decoration: InputDecoration(border: InputBorder.none)
        
                 ),),
            ],
          ),
        ),




        // CustomTextField(
        //   textInputType: TextInputType.number,
        //   hintText: "phone No",
        //   hintStyle: const TextStyle(fontSize: 14),
        //   textAlign: TextAlign.center,
        // ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "password",
          hintStyle: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        verticalSpaceMedium,
        SubmitButton(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.3,
          text: "login",
          fontSize: 16,
          onPress: viewModel.navigateToMemberSetting,
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
        verticalSpaceMedium,
        GestureDetector(
          onTap: viewModel.showResetPassword,
          child: CustomText(
            text: "forgetPassword?",
            color: kcDarkGreyColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
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