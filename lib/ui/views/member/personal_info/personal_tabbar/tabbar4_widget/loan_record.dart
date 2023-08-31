import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../widgets/app_bar.dart';
import '../../../../../widgets/bottom_bar.dart';
import '../../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../personal_info_viewmodel.dart';

class LoanRecordView extends StackedView<PersonalInfoViewModel> {
  const LoanRecordView({Key? key}) : super(key: key);
  // @override
  // void onViewModelReady(PersonalInfoViewModel viewModel) {
  //   viewModel.countryNameListData();
  //   super.onViewModelReady(viewModel);
  // }

  @override
  Widget builder(
    BuildContext context,
    PersonalInfoViewModel viewModel,
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
                    image: AssetImage(myIcons.backgroundimage),
                    fit: BoxFit.fill),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: appBar(context),
                body: Column(
                  children: [

                  ],
                )
              ),
            ),
            bottomBar(
              Row(
                children: [
                  ReturnButton(
                    imageLeft: myIcons.returnIcon1,
                    imgwidth: 12,
                    text: 'return',
                    height: 40,
                    width: 80,
                  ),
                  horizontalSpaceTiny,
                  SubmitButton(
                    image: myIcons.done,
                    imgwidth: 16,
                    text: 'Save',
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
  PersonalInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalInfoViewModel();
}