// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../../widgets/common/dropdown_textfield/model_dropdown.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../personal_info_viewmodel.dart';

class PersonalTabBar1 extends ViewModelWidget<PersonalInfoViewModel> {
  const PersonalTabBar1({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalInfoViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: viewModel.firstNameCtrl,
              titleText: 'firstName',
            ),
            verticalSpaceSmall,
            CustomTextField(
              controller: viewModel.lastNameCtrl,
              titleText: 'lastName',
            ),
            verticalSpaceSmall,
            CustomText(
              text: 'gender',
              fontWeight: FontWeight.w600,
            ),
            verticalSpaceTiny,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReturnButton(
                  height: 41.5,
                  text: 'm',
                  width: width * 0.43,
                  boxcolor:
                      viewModel.gender == 'm' ? darkGreenHeigh : Colors.white,
                  color:
                      viewModel.gender != "m" ? darkGreenHeigh : Colors.white,
                  onPress: () {
                    viewModel.setGender('m');
                  },
                ),
                ReturnButton(
                  height: 41.5,
                  text: 'f',
                  width: width * 0.43,
                  boxcolor:
                      viewModel.gender == "f" ? darkGreenHeigh : Colors.white,
                  color:
                      viewModel.gender != "f" ? darkGreenHeigh : Colors.white,
                  onPress: () {
                    viewModel.setGender('f');
                  },
                ),
              ],
            ),
            verticalSpaceSmall,
            DropdownTextfield(
              onTap: () {
                DatePicker.showDatePicker(context, showTitleActions: true,
                    onConfirm: (date) {
                  var dob = DateFormat('EEEE, MMM d, yyyy').format(date);
                  viewModel.setDob(dob.toString());
                }, currentTime: DateTime(0), locale: LocaleType.en);
              },
              onChanged: (String) {},
              options: [viewModel.dob],
              value: viewModel.dob,
              titleText: 'birthDate',
            ),
            verticalSpaceSmall,
            viewModel.countryList != null
                ? ModelDropdown(
                    onChanged: viewModel.setSelectCountry,
                    options: viewModel.countryDataList,
                    value: viewModel.countryList,
                    titleText: 'nationality',
                  )
                : DropdownTextfield(
                    onChanged: (String) {},
                    options: [],
                    titleText: 'nationality',
                  ),
            verticalSpaceSmall,
            DropdownTextfield(
              onChanged: viewModel.setDoYouKnow,
              options: viewModel.doYouKnowList,
              titleText: 'doyouknowMoneyPlaza',
              value: viewModel.doYouKnow,
            ),
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}
