import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_icons.dart';
import '../../widgets/app_bar.dart';
import 'loan_viewmodel.dart';

class LoanView extends StackedView<LoanViewModel> {
  const LoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
          Container(
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*1,
            decoration:  const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
            ),
            ),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar((){},(){}),
          body: Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            height: 40,
            width: 50,
            color: Colors.black,
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
