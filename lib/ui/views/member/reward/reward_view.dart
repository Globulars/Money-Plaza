import 'package:flutter/material.dart';
import 'package:money_plaza/services/Models/user_reward.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../reward_application/reward_application_viewmodel.dart';

class RewardView extends StackedView<RewardApplicationViewModel> {
  const RewardView({Key? key}) : super(key: key);
  @override
  void onViewModelReady(RewardApplicationViewModel viewModel) {
    viewModel.getUserRewardList();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    RewardApplicationViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
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
                width: width * 0.95,
                height: 50,
                text: "moneyPlazaReward",
                btmLeftRadius: 0,
                btmRightRadius: 0,
                fontSize: 16,
              ),
              const Divider(
                color: darkGreenHeigh,
                height: 1.0,
                thickness: 3,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        verticalSpaceMedium,
                        CustomText(text: "uploadApplicatioRecord"),
                        verticalSpace(35),
                        SubBar(
                          height: 50,
                          text: 'submitRewardClaim',
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          onPress: viewModel.navigateToRewardApplication,
                        ),
                        verticalSpaceSmall,
                        Card(
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 3,
                                  dataRowMinHeight: 3,
                                  dataRowMaxHeight: 20,
                                  horizontalMargin: 6,
                                  columns: [
                                    DataColumn(
                                      label: SizedBox(
                                          width: 70,
                                          child: CustomText(
                                            text: 'Institution',
                                            textAlign: TextAlign.start,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 70,
                                          child: CustomText(
                                            text: 'Type Of Product',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 130,
                                          child: CustomText(
                                            text: 'Reward detais',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 40,
                                          child: CustomText(
                                            text: 'Ref No:',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: 'Application Uploaded?',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: 'Date of Application',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: 'Application Result',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                  rows: List.generate(
                                    viewModel.userRewardList.length,
                                    (index) {
                                      UserReward data =
                                          viewModel.userRewardList[index];
                                      return DataRow(cells: [
                                        DataCell(SizedBox(
                                            width: 70,
                                            child: CustomText(
                                              text: "${data.companyName}",
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 70,
                                            child: CustomText(
                                              text: "${data.productType}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 130,
                                            child: CustomText(
                                              text: "${data.incentive}",
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 40,
                                            child: CustomText(
                                              text: "${data.referenceNumber}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(
                                          SizedBox(
                                            width: 60,
                                            child: CustomText(
                                              text: data.hasFile ?? false
                                                  ? "Yes"
                                                  : "No",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                        DataCell(SizedBox(
                                            width: 60,
                                            child: CustomText(
                                              text: "${data.createDate}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 60,
                                            child: CustomText(
                                              text: data.status == 0
                                                  ? "Pending"
                                                  : "Aproved",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                      ]);
                                    },
                                  ).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'return',
            height: 40,
            width: 80,
          ),
        ),
      ],
    );
  }

  @override
  RewardApplicationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RewardApplicationViewModel();
}
