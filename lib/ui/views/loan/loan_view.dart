import 'package:flutter/material.dart';
import 'package:money_plaza/ui/views/loan/screen1widgets/loan_card.dart';
import 'package:money_plaza/ui/views/loan/screen1widgets/pic_container.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_icons.dart';
import '../../widgets/app_bar.dart';
import 'loan_viewmodel.dart';
import 'screen1widgets/horizental_view.dart';

class LoanView extends StackedView<LoanViewModel> {
  const LoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(() {}, () {}),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               PicContainer(),
               ContainerListView(),
               LoanCard(),
              ],
            ),
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
