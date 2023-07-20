import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar2.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar3.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
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
            Container(
              width: width * 1,
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(myIcons.backgroundimage),
                    fit: BoxFit.fill),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: appBar(),
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      toolbarHeight: 0,
                      backgroundColor: lightGreenHeigh,
                      pinned: true,
                      floating: false,
                      bottom: TabBar(
                        unselectedLabelColor: darkGreenHeigh,
                        labelColor: Colors.white,
                        labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                        indicator: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight:
                                    Radius.circular(10)), // Creates border
                            color: darkGreenHeigh),
                        tabs:  [
                          Tab(
                            child: const Text(
                              'earlyPaybackPenalty',
                              textAlign: TextAlign.center,
                            ).tr(),
                          ),
                          Tab(
                              child: const Text(
                            'sourceOfIncome',
                            textAlign: TextAlign.center,
                          ).tr(),),
                          Tab(
                              child: const Text(
                            'outstandingLoan',
                            textAlign: TextAlign.center,
                          ).tr(),),
                        ],
                      ),
                    ),
                  ];
                },
                body: const TabBarView(
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
                  DefaultTabController.of(context).index == 0
                      ? ReturnButton(
                          imageLeft: myIcons.returnIcon1,
                          imgwidth: 12,
                          text: 'return',
                          height: 40,
                          width: 80,
                          onPress: () {
                            log(DefaultTabController.of(context)
                                .index
                                .toString());
                          },
                        )
                      : ReturnButton(
                          imageLeft: myIcons.previous,
                          imgwidth: 12,
                          text: "previous",
                          height: 40,
                          width: 80,
                          onPress: () {
                            var index = DefaultTabController.of(context).index;
                            DefaultTabController.of(context)
                                .animateTo(index - 1);
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
