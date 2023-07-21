import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/result_card.dart';
import '../../../../widgets/common/topbar_loan_result.dart';
import 'commerical_result_viewmodel.dart';

class CommericalResultView extends StackedView<CommericalResultViewModel> {
  const CommericalResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalResultViewModel viewModel,
    Widget? child,
  ) {
    // final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body: Column(
              children: [
                resultLoanTop(context),
                verticalSpaceSmall,
                Expanded(
                    child: SingleChildScrollView(
                        child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return resultCard(context);
                  },
                ))),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  CommericalResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalResultViewModel();
}
