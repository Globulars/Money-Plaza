import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:money_plaza/ui/widgets/loading.dart';
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
    return Stack(
      children: [
        Column(
          children: [
            verticalSpaceSmall,
            verticalSpaceTiny,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 41,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          left: BorderSide(
                              color: darkGreenLight.withOpacity(0.8), width: 1),
                          top: BorderSide(
                              color: darkGreenLight.withOpacity(0.8), width: 1),
                          bottom: BorderSide(
                              color: darkGreenLight.withOpacity(0.8),
                              width: 1)),
                    ),
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
                ),
                Expanded(
                  child: CustomTextField( number: false,
                  
                    hintText: "Phone No",
                    controller: viewModel.phoneNoCtrl,
                    hintStyle: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                          color: darkGreenLight.withOpacity(0.8), width: 1.0),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceTiny,
            CustomTextField( number: false,
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
        ),
        viewModel.isBusy ? Center(child: loading()) : Container(),
      ],
    );
  }
}
