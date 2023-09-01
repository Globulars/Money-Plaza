import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
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
    return Form(
      key: viewModel.formKey,
      child: Column(
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
                            color: viewModel.phoneFieldEmpty
                                ? Colors.red
                                : darkGreenLight.withOpacity(0.8),
                            width:viewModel.phoneFieldEmpty?2: 1),
                        top: BorderSide(
                            color: viewModel.phoneFieldEmpty
                                ? Colors.red
                                : darkGreenLight.withOpacity(0.8),
                            width: viewModel.phoneFieldEmpty?2: 1),
                        bottom: BorderSide(
                            color: viewModel.phoneFieldEmpty
                                ? Colors.red
                                : darkGreenLight.withOpacity(0.8),
                            width: viewModel.phoneFieldEmpty?2: 1)),
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
                child: CustomTextField(
                  hintText: "Phone No",
                  controller: viewModel.passwordCtrl,
                  hintStyle: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(
                        color: darkGreenLight.withOpacity(0.8), width: 1.0),
                  ),
                  onChanged:viewModel.onChangeFunctionSetValue,
                ),
              ),
            ],
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
                  onPress: viewModel.sendSmsCode,
                  height: 40,
                  width: width * 0.22,
                  boxcolor: darkGreenLight,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              CustomTextField(
                width: width * 0.68,
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
            hintStyle: const TextStyle(),
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
              Checkbox(
                value: viewModel.receiveNews,
                onChanged: viewModel.setReceiveNews,
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
            text: "register",
            onPress: viewModel.signupByMobile,
            width: MediaQuery.of(context).size.width * 0.3,
            height: 40,
            fontSize: 16,
          ),
          verticalSpaceLarge
        ],
      ),
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
