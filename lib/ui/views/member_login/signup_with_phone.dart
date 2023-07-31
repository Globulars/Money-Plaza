import 'package:country_code_picker/country_code_picker.dart';
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

class SignUpWithPhone extends StackedView<MemberLoginViewModel> {
  const SignUpWithPhone({Key? key}) : super(key: key);

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
                width: width * 0.1,
                child: const CountryCodePicker(
                  padding: EdgeInsets.all(0),
                  onChanged: print,
                  showFlag: false,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IT',
                  favorite: ['+39', 'FR'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
              ),
              VerticalDivider(color: darkGreenLight.withOpacity(0.8)),
              Expanded(
                child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(bottom: 12.5, right: width * 0.15),
                      border: InputBorder.none,
                      hintText: 'Phone No',
                      hintStyle: const TextStyle(
                        // color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),
              ),
            ],
          ),
        ),
        verticalSpaceTiny,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ReturnButton(
              text: "send",
              height: 41.5,
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
            height: 44,
            options: viewModel.registerDropDown,
            value: viewModel.registerDropdown,
            onChanged: (onChanged) {}),
        verticalSpaceSmall,
        DropdownTextfield(
          height: 44,
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