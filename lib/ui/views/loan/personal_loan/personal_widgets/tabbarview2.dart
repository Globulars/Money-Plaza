import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../personalloan_viewmodel.dart';

class TabBarView2 extends ViewModelWidget<PersonalloanViewModel> {
  const TabBarView2({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalloanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'hk',
            titleText: 'Monthly Income',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Type of Income',
          ),
          verticalSpaceSmall,
          DropdownTextfield(
            onChanged: (String) {},
            options: [],
            titleText: 'Proof of Income',
          ),
        ],
      ),
    );
  }
}
