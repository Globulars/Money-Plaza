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
    viewModel.getUserData();
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
                      text: 'loanRecord',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    verticalSpaceSmall,
                    ModelDropdown(
                      onChanged: viewModel.setLoanRecord,
                      options: viewModel.loanRecordDataList,
                      value: viewModel.loanRecordList,
                      titleText: 'typeofLoan',
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.lenderCtrl,
                      titleText: "lender",
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.outstandingCtrl,
                      titleText: 'outstanding',
                      hintText: 'hk',
                    ),
                    verticalSpaceTiny,
                    viewModel.loanRecordList?.code == "PrepaidInterest"
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpaceTiny,
                              CustomText(
                                  text: "tenorUnit",
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              verticalSpaceTiny,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReturnButton(
                                    height: 41.5,
                                    text: 'daily',
                                    width: width * 0.43,
                                    boxcolor: viewModel.tenorUnit == 'daily'
                                        ? darkGreenHeigh
                                        : Colors.white,
                                    color: viewModel.tenorUnit != "daily"
                                        ? darkGreenHeigh
                                        : Colors.white,
                                    onPress: () {
                                      viewModel.setTenorUnit('daily');
                                    },
                                  ),
                                  ReturnButton(
                                    height: 41.5,
                                    text: 'monthly',
                                    width: width * 0.43,
                                    boxcolor: viewModel.tenorUnit == "monthly"
                                        ? darkGreenHeigh
                                        : Colors.white,
                                    color: viewModel.tenorUnit != "monthly"
                                        ? darkGreenHeigh
                                        : Colors.white,
                                    onPress: () {
                                      viewModel.setTenorUnit('monthly');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Container(),
                    verticalSpaceTiny,
                    CustomTextField(
                      controller: viewModel.loanRecordList?.code == "PLoan" ||
                              viewModel.loanRecordList?.code ==
                                  "PrepaidInterest" ||
                              viewModel.loanRecordList?.code == "InterestOnly"
                          ? viewModel.tenorCtrl
                          : viewModel.monthlyInterestCtrl,
                      titleText: viewModel.loanRecordList?.code == "PLoan" ||
                              viewModel.loanRecordList?.code ==
                                  "PrepaidInterest" ||
                              viewModel.loanRecordList?.code == "InterestOnly"
                          ? 'tenor2'
                          : "Monthly Interest *",
                    ),
                    verticalSpaceTiny,
                    CustomTextField(
                        controller: viewModel.loanRecordList?.code == "PLoan" ||
                                viewModel.loanRecordList?.code == "InterestOnly"
                            ? viewModel.remainingTenorCtrl
                            : viewModel.loanRecordList?.code == "MinPay"
                                ? viewModel.penaltyCtrl
                                : viewModel.totalPrepaidInterestCtrl,
                        titleText: viewModel.loanRecordList?.code == "PLoan" ||
                                viewModel.loanRecordList?.code == "InterestOnly"
                            ? 'remainingTenor'
                            : viewModel.loanRecordList?.code == "MinPay"
                                ? "penalty"
                                : "totalPrepaidInterest"),
                    verticalSpaceTiny,
                    viewModel.loanRecordList?.code == "PLoan" ||
                            viewModel.loanRecordList?.code == "InterestOnly" ||
                            viewModel.loanRecordList?.code == "MinPay"
                        ? CustomTextField(
                            hintText: 'hk',
                            controller: viewModel.loanRecordList?.code ==
                                        "PLoan" ||
                                    viewModel.loanRecordList?.code ==
                                        "InterestOnly"
                                ? viewModel.monthlyRepaymentCtrl
                                : viewModel.loanRecordList?.code == "MinPay"
                                    ? viewModel.minPayCtrl
                                    : viewModel.totalPrepaidInterestCtrl,
                            titleText:
                                viewModel.loanRecordList?.code == "PLoan" ||
                                        viewModel.loanRecordList?.code ==
                                            "InterestOnly"
                                    ? 'monthlyRepayment2'
                                    : viewModel.loanRecordList?.code == "MinPay"
                                        ? "minpay"
                                        : "totalPrepaidInterest")
                        : Container(),
                    verticalSpaceTiny,
                    viewModel.loanRecordList?.code == "MinPay"
                        ? CustomTextField(
                            controller: viewModel.minPayInDollarCtrl,
                            titleText: 'minPayinDollar',
                            hintText: 'hk',
                          )
                        : Container(),
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
