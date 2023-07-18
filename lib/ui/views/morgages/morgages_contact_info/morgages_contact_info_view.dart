import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'morgages_contact_info_viewmodel.dart';

class MorgagesContactInfoView
    extends StackedView<MorgagesContactInfoViewModel> {
  const MorgagesContactInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesContactInfoViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubBar(
                divider: true,
                image: myIcons.contactInfo,
                text: 'Contact Information',
                height: 50,
                scale: 1.4,
              ),
              verticalSpaceSmall,
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CustomText(
                            text: 'Please enter the following information.'),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'Email',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'Full Name',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'Reference Number (if any)',
                        ),
                        verticalSpaceTiny,
                        DropdownTextfield(
                          titleText: 'Contact Method',
                          onChanged: (String) {},
                          options: [],
                        ),
                        CustomTextField(),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceLarge
            ],
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'Return',
                height: 40,
                width: 80,
              ),
              horizontalSpaceTiny,
              SubmitButton(
                image: myIcons.done,
                imgwidth: 18,
                onPress: viewModel.navigateToMorgagesResult,
                text: 'Done',
                height: 40,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  MorgagesContactInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesContactInfoViewModel();
}
