import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/top_bar2.dart';
import 'compare_widgets/head_btm_text.dart';
import 'compare_widgets/prom_land.dart';
import 'loancompare_viewmodel.dart';

class LoancompareView extends StackedView<LoancompareViewModel> {
  const LoancompareView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoancompareViewModel viewModel,
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
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(() {}, () {}),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              topBar(context),
              verticalSpaceTiny,
              const PromiseLand(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        HeadBtmText(),
                      ],
                    ),
                  ),
                ),
              ),
              // PicContainer(),
              // ContainerListView(),
              // LoanCard(),
              verticalSpaceLarge
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
      ],
    );
  }

  @override
  LoancompareViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoancompareViewModel();
}
