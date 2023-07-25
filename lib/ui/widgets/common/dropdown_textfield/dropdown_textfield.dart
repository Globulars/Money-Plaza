// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import 'dropdown_textfield_model.dart';

// DropdownTextfield(
//   titleText: "Gender",
//   options: const ["Male", "Female"],
//   value: gender,
//   onChanged: (String? value) {
//     gender = value!;
//   },
// ),

class DropdownTextfield extends StackedView<DropdownTextfieldModel> {
  final String hintText;
  final List<String> options;
  String? value;
  String? titleText;
  double? height;
  double? margin;
  void Function(String?) onChanged;
  DropdownTextfield({
    super.key,
    this.hintText = '',
    required this.options,
    this.height,
    this.margin,
    this.value,
    this.titleText = "",
    required this.onChanged,
  });

  @override
  Widget builder(
    BuildContext context,
    DropdownTextfieldModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      titleText!=""?  Column(
          children: [
            Text(
              titleText.toString(),
              style: GoogleFonts.ibmPlexSans(
                        fontSize: 14, fontWeight: FontWeight.w500),
            ).tr(),
            verticalSpaceTiny,
          ],
        ):Container(),
        
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          width: double.infinity,
           height: height ?? 40,
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0),
                  labelText: hintText.tr(),
                  border: _setBorderStyle(),
                  enabledBorder: _setBorderStyle(),
                  focusedBorder: _setBorderStyle(),
                  disabledBorder: _setBorderStyle(),
                 
                ),
                isEmpty: value == null || value == '',
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconEnabledColor: Colors.black,
                    iconDisabledColor: Colors.black,
                    iconSize: 32,
                    value: value,
                    isDense: true,
                    onChanged: onChanged,
                    items: options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value.toString()).tr(),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  DropdownTextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      DropdownTextfieldModel();
  _setBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        5.00,
      ),
      borderSide:
          BorderSide(color: darkGreenLight.withOpacity(0.8), width: 1.0),
    );
  }
}
