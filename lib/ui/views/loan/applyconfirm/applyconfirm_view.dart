import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import 'applyconfirm_viewmodel.dart';

class ApplyconfirmView extends StackedView<ApplyconfirmViewModel> {
  const ApplyconfirmView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ApplyconfirmViewModel viewModel,
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
          appBar: appBar(() {}, () {}),
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
                          titleText: 'Full Name',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'Phone Number',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'Email',
                        ),
                        verticalSpaceTiny,
                        CustomTextField(
                          titleText: 'HKID',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceLarge
            ],
          ),
          // bottomNavigationBar: Container(
          //     height: 60,
          //     width: width * 1,
          //     child: SizedBox(
          //         child: Image.asset(
          //       myIcons.contacts,
          //     ))),
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
