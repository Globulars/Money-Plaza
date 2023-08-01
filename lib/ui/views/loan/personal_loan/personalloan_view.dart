// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/views/loan/personal_loan/personal_widgets/tabbarview3.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import 'personal_widgets/tabbarview2.dart';
import 'personal_widgets/tabbarview1.dart';
import 'personalloan_viewmodel.dart';

class PersonalloanView extends StackedView<PersonalloanViewModel> {
  const PersonalloanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalloanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Builder(// Add this
          builder: (context) {
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
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: appBar(context),
                body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        toolbarHeight: 0,
                        backgroundColor: lightGreenHeigh,
                        pinned: true,
                        floating: false,
                        bottom: PreferredSize(
                          preferredSize: Size(width, 50),
                          child: Column(
                            children: [
                              TabBar(
                                onTap: (index) => viewModel.indexing(index),
                                unselectedLabelColor: darkGreenHeigh,
                                controller: DefaultTabController.of(context),
                                labelColor: Colors.white,
                                labelStyle:
                                    GoogleFonts.ibmPlexSans(fontSize: 10),
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(
                                            10)), // Creates border
                                    color: darkGreenHeigh.withOpacity(0.8)),
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                tabs: [
                                  Tab(
                                    child: const Text(
                                      'earlyPaybackPenalty',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ).tr(),
                                  ),
                                  Tab(
                                    child: const Text(
                                      'sourceOfIncome',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ).tr(),
                                  ),
                                  Tab(
                                    child: const Text(
                                      'outstandingLoan',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ).tr(),
                                  ),
                                ],
                              ),
                              Divider(
                                color: darkGreenHeigh,
                                height: 1.0,
                                thickness: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ];
                  },
                  body: const TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      SingleChildScrollView(child: TabBarView1()),
                      SingleChildScrollView(child: TabBarView2()),
                      SingleChildScrollView(child: TabBarView3())
                    ],
                  ),
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
                    imgwidth: 12,
                    text: 'next',
                    height: 40,
                    width: 80,
                    onPress: () {
                      // if(viewModel.currentIndex  == 0){

                      // }
                      var index = viewModel.currentIndex;
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
  PersonalloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalloanViewModel();
}
