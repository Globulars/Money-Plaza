import '../../common/app_url.dart';
import 'loan_viewmodel.dart';
import '../../widgets/app_bar.dart';
import '../../common/app_icons.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import '../../widgets/bottom_bar.dart';
import 'widgets/filter_bottom_bar.dart';
import 'widgets/loan_list_builder.dart';
import 'widgets/loan_tags_list_view.dart';
import '../../../services/Models/loan_card.dart';
import '../../widgets/common/background_image.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/top_banner.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import 'widgets/short_filter_bar.dart';

class LoanView extends StackedView<LoanViewModel> {
  final List<LoanCard>? loanCard;
  final LoanViewModel viewModel = LoanViewModel();
  LoanView({Key? key, this.loanCard}) : super(key: key);
  @override
  void onViewModelReady(LoanViewModel viewModel) {
    viewModel.getLoanTags();
    viewModel.loneListBody();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopBanner(url: "${ApiUrl().bannersByType}loan"),
                verticalSpaceMedium,
                const ShortFilterBarWidget(),
                verticalSpaceTiny,
                verticalSpaceSmall,
                Stack(
                  children: [
                    Column(
                      children: [
                        verticalSpace(70.0),
                        const LoanTagsListView(),
                        LoanListView(
                          height: MediaQuery.of(context).size.height * 0.54,
                        )
                      ],
                    ),
                    const FilterBottomBar(),
                  ],
                ),
                verticalSpaceLarge
              ],
            ),
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
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
