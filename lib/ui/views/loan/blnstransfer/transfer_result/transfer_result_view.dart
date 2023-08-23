import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/loan_tags_list_view.dart';
import 'package:stacked/stacked.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/filter_bottom_bar.dart';
import '../../widgets/result_card.dart';
import 'transfer_result_viewmodel.dart';

class TransferResultView extends StackedView<TransferResultViewModel> {
  const TransferResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TransferResultViewModel viewModel,
    Widget? child,
  ) {
    // final width = MediaQuery.of(context).size.width;
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
  TransferResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransferResultViewModel();
}
