import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/result_card.dart';
import '../../../../widgets/loan_tags_list_view.dart';
import '../../../../widgets/top_bar2/top_bar2_view.dart';
import 'ploanreslut_viewmodel.dart';

class PloanreslutView extends StackedView<PloanreslutViewModel> {
  const PloanreslutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PloanreslutViewModel viewModel,
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
              Column(
                children: [
                  verticalSpace(70),
                  const LoanTagsListView(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(bottom: 60),
                      itemBuilder: (BuildContext context, int index) {
                        return ResultCard(loanData: LoanCard() );
                      },
                    ),
                  ),
                  // verticalSpaceLarge,
                ],
              ),
              const TopBar2View(),
            ],
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'backToList',
            height: 40,
            width: 120,
          ),
        ),
      ],
    );
  }

  @override
  PloanreslutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PloanreslutViewModel();
}
