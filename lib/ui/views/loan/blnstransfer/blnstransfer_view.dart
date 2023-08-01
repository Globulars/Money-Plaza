import 'package:flutter/material.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar2.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar3.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../sliver_app_bar.dart';
import 'blnstransfer_viewmodel.dart';
import 'tranfer_loan_widget/transfer_tabbar1.dart';

class BlnstransferView extends StackedView<BlnstransferViewModel> {
  const BlnstransferView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BlnstransferViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
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
                    SingleChildScrollView(child: TransferTabBar1()),
                    SingleChildScrollView(child: TransferTabBar2()),
                    SingleChildScrollView(child: TransferTabBar3()),
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
                            viewModel.currentIndex = viewModel.currentIndex - 1;
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
                      var index = DefaultTabController.of(context).index;
                      var length = DefaultTabController.of(context).length;
                      if (index < length - 1) {
                        viewModel.currentIndex = viewModel.currentIndex + 1;
                        DefaultTabController.of(context).animateTo(index + 1);
                      } else {
                        viewModel.navigateToApplyconfirm();
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
    );
  }

  @override
  BlnstransferViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BlnstransferViewModel();
}
