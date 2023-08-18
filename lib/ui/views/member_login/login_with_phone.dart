import 'package:easy_localization/easy_localization.dart';
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

class LoginWithPhone extends ViewModelWidget<MemberLoginViewModel> {
  const LoginWithPhone({Key? key}) : super(key: key);
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
        Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: darkGreenLight.withOpacity(0.8), width: 1),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.14,
                child: CountryCodePicker(
                  padding: const EdgeInsets.all(0),
                  onChanged: viewModel.setCountryCode,
                  showFlag: false,
                  initialSelection: 'IT',
                  favorite: const ['+39', 'FR'],
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
              ),
              VerticalDivider(color: darkGreenLight.withOpacity(0.8)),
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: viewModel.phoneNoCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: 12.5, right: width * 0.15),
                    border: InputBorder.none,
                    hintText: 'Phone No',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'validation'.tr();
                  //   }
                  //   return null;
                  // },
                ),
              ),
            ],
          ),
        ),
        verticalSpaceTiny,
        CustomTextField(
          hintText: "password",
          controller: viewModel.passwordCtrl,
          hintStyle: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
        verticalSpaceMedium,
        SubmitButton(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.3,
          text: "login",
          fontSize: 16,
          onPress: () {
            viewModel.login("mobile");
          },
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
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
