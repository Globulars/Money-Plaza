import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'morg_result_card.dart';
import 'morgages_result_viewmodel.dart';

class MorgagesResultView extends StackedView<MorgagesResultViewModel> {
  final String mortgagesPropertyValuation,
      mortgagesValueRatio,
      mortgagesTenor,
      mortgagesMonthlyIncome;
  final List mortgageList, typePropertyList, companyIds;
  const MorgagesResultView(
      this.mortgagesPropertyValuation,
      this.mortgagesValueRatio,
      this.mortgagesTenor,
      this.mortgagesMonthlyIncome,
      this.mortgageList,
      this.typePropertyList,
      this.companyIds,
      {Key? key})
      : super(key: key);
  @override
  void onViewModelReady(MorgagesResultViewModel viewModel) {
    viewModel.mortgagesCardData(
        mortgagesPropertyValuation,
        mortgagesValueRatio,
        mortgagesTenor,
        mortgagesMonthlyIncome,
        mortgageList,
        typePropertyList,
        companyIds);
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    MorgagesResultViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubBar(
                      width: width * 0.45,
                      height: 50,
                      btmLeftRadius: 0,
                      btmRightRadius: 0,
                      divider: true,
                      text: 'filter',
                      image: myIcons.setting,
                      imgwidth: 22,
                      onPress: viewModel.showMorgagesFilter,
                    ),
                    SubBar(
                      width: width * 0.45,
                      height: 50,
                      btmLeftRadius: 0,
                      btmRightRadius: 0,
                      divider: true,
                      text: 'selectall',
                      image: myIcons.compare1,
                      onPress: viewModel.setSelectAll,
                      imgwidth: 18,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: darkGreenHeigh,
                thickness: 4,
                height: 1,
              ),
              verticalSpaceSmall,
              viewModel.mortgagesCard.isNotEmpty
                  ? MorgagesResultCard(mortgagesCard: viewModel.mortgagesCard)
                  : Column(
                      children: [
                        SizedBox(height: height * 0.3),
                        viewModel.mortgagesCardMessage == ""
                            ? const CircularProgressIndicator()
                            : CustomText(text: "noDataFound")
                      ],
                    )
            ],
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
                image: myIcons.apply,
                imgwidth: 12,
                onPress: viewModel.navigateToSurveySplashView,
                text: 'apply',
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
  MorgagesResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesResultViewModel();
}
