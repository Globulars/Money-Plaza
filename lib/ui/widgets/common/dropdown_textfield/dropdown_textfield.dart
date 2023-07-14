// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dropdown_textfield_model.dart';

class DropdownTextfield extends StackedView<DropdownTextfieldModel> {
  final String hintText;
  final List<String> options;
  String? value;
  void Function(String?) onChanged;
  DropdownTextfield({
    super.key,
    this.hintText = 'Please select an Option',
    this.options = const [],
    this.value,
    required this.onChanged,
  });

  @override
  Widget builder(
    BuildContext context,
    DropdownTextfieldModel viewModel,
    Widget? child,
  ) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            labelText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
          isEmpty: value == null || value == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isDense: true,
              onChanged: onChanged,
              items: options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  DropdownTextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      DropdownTextfieldModel();
}
