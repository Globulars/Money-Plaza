import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/custom_text_field/custom_text_field.dart';
import 'package:money_plaza/ui/widgets/common/dropdown_textfield/model_dropdown.dart';
import 'package:stacked/stacked.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../widgets/app_bar.dart';
import '../../../../../widgets/bottom_bar.dart';
import '../../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../../../../../widgets/common/icon_box_btn/text.dart';
import '../../personal_info_viewmodel.dart';

class LoanRecordView extends StackedView<PersonalInfoViewModel> {
  const LoanRecordView({Key? key}) : super(key: key);
  @override
  void onViewModelReady(PersonalInfoViewModel viewModel) {
    viewModel.loanRecordListData();
    super.onViewModelReady(viewModel);
  }

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
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(context),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Loan Record',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    verticalSpaceSmall,
                    ModelDropdown(
                      onChanged: viewModel.setLoanRecord,
                      options: viewModel.loanRecordDataList,
                      value: viewModel.loanRecordList,
                      titleText: 'Type of Loan*',
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.lenderCtrl,
                      titleText: 'Lender*',
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.outstandingCtrl,
                      titleText: 'Outstanding*',
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.loanRecordList!.code == "PLoan" ||
                              viewModel.loanRecordList!.code ==
                                  "PrepaidInterest" ||
                              viewModel.loanRecordList!.code == "InterestOnly"
                          ? viewModel.tenorCtrl
                          : viewModel.monthlyInterestCtrl,
                      titleText: viewModel.loanRecordList!.code == "PLoan" ||
                              viewModel.loanRecordList!.code ==
                                  "PrepaidInterest" ||
                              viewModel.loanRecordList!.code == "InterestOnly"
                          ? 'Tenor*'
                          : "Monthly Interest",
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.remainingTenorCtrl,
                      titleText: 'Remaining Tenor*',
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.monthlyRepaymentCtrl,
                      titleText: 'Monthly Repayment*',
                    ),
                    // verticalSpaceTiny,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     ReturnButton(
                    //       height: 41.5,
                    //       text: 'm',
                    //       width: width * 0.43,
                    //       boxcolor:
                    //           viewModel.gender == 'm' ? darkGreenHeigh : Colors.white,
                    //       color:
                    //           viewModel.gender != "m" ? darkGreenHeigh : Colors.white,
                    //       onPress: () {
                    //         viewModel.setGender('m');
                    //       },
                    //     ),
                    //     ReturnButton(
                    //       height: 41.5,
                    //       text: 'f',
                    //       width: width * 0.43,
                    //       boxcolor:
                    //           viewModel.gender == "f" ? darkGreenHeigh : Colors.white,
                    //       color:
                    //           viewModel.gender != "f" ? darkGreenHeigh : Colors.white,
                    //       onPress: () {
                    //         viewModel.setGender('f');
                    //       },
                    //     ),
                    //   ],
                    // ),
                    verticalSpaceSmall,

                    verticalSpaceLarge
                  ],
                ),
              ),
            ),
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
                text: 'Submit',
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