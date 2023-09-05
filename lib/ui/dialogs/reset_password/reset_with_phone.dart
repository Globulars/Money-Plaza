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
    return Form(
       key: viewModel.formKey,
      child: Column(
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
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: 12.5,
                        ),
                        border: InputBorder.none,
                        hintText: 'Phone No',
                        hintStyle: TextStyle(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: ReturnButton(
                  text: "send",
                  onPress: viewModel.sendForgetPasswordCodeByMobile,
                  height: 40,
                  width: width * 0.19,
                  boxcolor: darkGreenLight,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              CustomTextField(
                width: width * 0.51,
                hintText: "verificationCode",
                controller: viewModel.verifyCode,
                hintStyle: const TextStyle(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          verticalSpaceTiny,
          CustomTextField(
            hintText: "enterPassword",
            controller: viewModel.passwordCtrl,
            hintStyle: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          verticalSpaceTiny,
          CustomTextField(
            hintText: "confirmPassword",
            controller: viewModel.confirmPasswordCtrl,
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
                onPress: viewModel.resetAll,
                boxColor: Colors.transparent,
              ),
              SubmitButton(
                height: 40,
                width: 80,
                text: "submit",
                onPress: viewModel.updatePasswordByMobileCode,
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  ResetPasswordDialogModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordDialogModel();
}
