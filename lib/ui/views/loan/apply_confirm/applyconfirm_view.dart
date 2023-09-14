// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/return_button.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'applyconfirm_viewmodel.dart';

class ApplyconfirmView extends StackedView<ApplyconfirmViewModel> {
  bool match;

  ApplyconfirmView({
    super.key,
    this.match = false,
  });

  @override
  Widget builder(
    BuildContext context,
    ApplyconfirmViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubBar(
                divider: true,
                image: myIcons.contactInfo,
                text: 'contactInformation',
                height: 50,
                scale: 1.4,
                btmLeftRadius: 0,
                btmRightRadius: 0,
              ),
              verticalSpaceSmall,
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CustomText(text: 'enterFollowingInformation'),
                        verticalSpaceTiny,
                        CustomTextField(
                          number: false,
                          titleText: 'fullName',
                          controller: viewModel.fullNameCtrl,
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          number: false,
                          controller: viewModel.phoneNumberCtrl,
                          textInputType: TextInputType.number,
                          titleText: 'phoneNumber',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          number: false,
                          controller: viewModel.emailCtrl,
                          titleText: 'email',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          number: false,
                          controller: viewModel.hkidCtrl,
                          titleText: 'hkid',
                        ),
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
                imageLeft: match ? myIcons.previous : myIcons.returnIcon1,
                imgwidth: 12,
                text: match ? 'previous' : 'return',
                height: 40,
                width: 90,
              ),
              horizontalSpaceTiny,
              SubmitButton(
                image: match ? myIcons.match : myIcons.done,
                imgwidth: 16,
                text: match ? 'match' : 'done',
                height: 40,
                width: 80,
                onPress: viewModel.navigateToPloanreslut,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  ApplyconfirmViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ApplyconfirmViewModel();
}
