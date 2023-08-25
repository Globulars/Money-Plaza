import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../widgets/sliver_app_bar.dart';
import 'ownerloan_viewmodel.dart';
import 'ownerloan_widgets/owner_tab_bar1.dart';
import 'ownerloan_widgets/owner_tab_bar2.dart';
import 'ownerloan_widgets/owner_tab_tab3.dart';

class OwnerloanView extends StackedView<OwnerloanViewModel> {
  const OwnerloanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OwnerloanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Form(
      key: viewModel.formKey,
      child: DefaultTabController(
        length: 3,
        child: Builder(builder: (context) {
          return Stack(
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
                      SingleChildScrollView(child: OwnerTabBar1()),
                      SingleChildScrollView(child: OwnerTabBar2()),
                      SingleChildScrollView(child: OwnerTabBar3())
                    ],
                  ),
                ),
              ),
              bottomBar(
                Row(
                  children: [
                    DefaultTabController.of(context).index == 0
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
                        var length = DefaultTabController.of(context).length;
                        if (index < length - 1) {
                          viewModel.currentIndex = viewModel.currentIndex + 1;
                          DefaultTabController.of(context).animateTo(index + 1);
                        } else {
                          viewModel.navigateToOwnerApplyConfirmView();
                        }
                        viewModel.setInitialIndex();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  @override
  OwnerloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanViewModel();
}
