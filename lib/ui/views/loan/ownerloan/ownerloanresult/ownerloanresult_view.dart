import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../loan_viewmodel.dart';
import '../../widgets/loan_list_builder.dart';
import '../../widgets/loan_tags_list_view.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../widgets/filter_bottom_bar.dart';

class OwnerloanresultView extends StackedView<LoanViewModel> {
  final Map<String, dynamic> body;
  const OwnerloanresultView(this.body, {Key? key}) : super(key: key);
  @override
  void onViewModelReady(LoanViewModel viewModel) {
    viewModel.setloneMachBody(body);
    viewModel.getLoanTags();
    viewModel.loanMatch();
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
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(70),
                    const LoanTagsListView(),
                    LoanListView(),
                    verticalSpaceLarge,
                  ],
                ),
              ),
              const FilterBottomBar(),
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
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
