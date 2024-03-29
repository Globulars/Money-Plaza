import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../widgets/sliver_app_bar.dart';
import 'commeriacal_widgets/commerical_view1.dart';
import 'commeriacal_widgets/commerical_view2.dart';
import 'commeriacal_widgets/commerical_view3.dart';
import 'commerical_loan_viewmodel.dart';

class CommericalLoanView extends StackedView<CommericalLoanViewModel> {
  const CommericalLoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalLoanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Builder(builder: (context) {
        return Form(
          key: viewModel.formKey,
          child: Stack(
            children: [
              const BackgroundImage(),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: appBar(context),
                body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      mySliverAppBar(viewModel, width),
                    ];
                  },
                  body: const TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      SingleChildScrollView(child: CommTabBar1()),
                      SingleChildScrollView(child: CommTabBar2()),
                      SingleChildScrollView(child: CommTabBar3())
                    ],
                  ),
                ),
              ),
              bottomBar(
                Row(
                  children: [
                    viewModel.currentIndex == 0
                        ? ReturnButton(
                            imageLeft: myIcons.returnIcon1,
                            imgwidth: 12,
                            text: 'return',
                            height: 40,
                            width: 80,
                            onPress: viewModel.navigateToBackScreen,
                          )
                        : ReturnButton(
                            imageLeft: myIcons.previous,
                            imgwidth: 12,
                            text: "previous",
                            height: 40,
                            width: 90,
                            onPress: () {
                              var index = viewModel.currentIndex;
                              DefaultTabController.of(context)
                                  .animateTo(index - 1);
                              viewModel.currentIndex =
                                  viewModel.currentIndex - 1;
                              viewModel.setInitialIndex();
                            },
                          ),
                    horizontalSpaceTiny,
                    ReturnButton(
                      imageRight: myIcons.next,
                      imgwidth: 16,
                      text: 'next',
                      height: 40,
                      width: 80,
                      onPress: () {
                        var index = viewModel.currentIndex;
                        var isValid =
                            viewModel.formKey.currentState!.validate();
                        if (isValid) {
                          var length = DefaultTabController.of(context).length;
                          if (index < length - 1) {
                            viewModel.currentIndex = viewModel.currentIndex + 1;
                            DefaultTabController.of(context)
                                .animateTo(index + 1);
                          } else {
                            viewModel.navigateToApplyconfirm();
                          }
                          viewModel.setInitialIndex();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  @override
  CommericalLoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalLoanViewModel();
}
