import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
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
        ),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body:  Column(
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
            // bottomNavigationBar: Container(
            //     height: 60,
            //     width: width * 1,
            //     child: SizedBox(
            //         child: Image.asset(
            //       myIcons.contacts,
            //     ))),
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
