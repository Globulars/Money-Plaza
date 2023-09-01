import 'package:flutter/material.dart';
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
                                          width: 40,
                                          child: CustomText(
                                            text: 'Institution',
                                            textAlign: TextAlign.start,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: 'Type Of Product',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: 'Reward detais',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
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
                                    DataColumn(
                                      label: SizedBox(
                                          width: 60,
                                          child: CustomText(
                                            text: '',
                                            textAlign: TextAlign.center,
                                            color: darkGreenHeigh,
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                  rows: List.generate(
                                    viewModel.rewardDetailsList.length,
                                    (index) {
                                      var data =
                                          viewModel.rewardDetailsList[index];
                                      return DataRow(cells: [
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        DataCell(SizedBox(
                                            width: 20,
                                            child: CustomText(
                                              text: "${(index + 1)}",
                                              textAlign: TextAlign.center,
                                              fontSize: 10,
                                            ))),
                                        //  DataCell(SizedBox(
                                        //  width: 20,
                                        //  child: CustomText(
                                        //    text: "${(index + 1)}",
                                        //    textAlign: TextAlign.center,
                                        //    fontSize: 10,
                                        //  ))),
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
