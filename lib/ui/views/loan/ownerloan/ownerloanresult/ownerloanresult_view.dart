import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/result_card.dart';
import '../../widgets/loan_tags_list_view.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../widgets/filter_bottom_bar.dart';
import 'ownerloanresult_viewmodel.dart';

class OwnerloanresultView extends StackedView<OwnerloanresultViewModel> {
  const OwnerloanresultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OwnerloanresultViewModel viewModel,
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
                      itemBuilder: (BuildContext context, int index) {
                        return ResultCard(loanData: LoanCard());
                      },
                    ),
                  ),
                  verticalSpaceLarge,
                ],
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
  OwnerloanresultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanresultViewModel();
}
