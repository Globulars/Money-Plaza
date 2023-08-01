import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';

class ResetWithPhone extends StackedView<ResetPasswordDialogModel> {
  const ResetWithPhone({Key? key}) : super(key: key);

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
              width: width * 0.19,
              boxcolor: darkGreenLight,
              color: Colors.white,
              fontSize: 14,
            ),
            CustomTextField(
              width: width * 0.51,
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
