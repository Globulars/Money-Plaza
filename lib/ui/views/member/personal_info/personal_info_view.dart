import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/views/member/personal_info/personal_tabbar/personal_tabbar1.dart';
import 'package:money_plaza/ui/views/member/personal_info/personal_tabbar/personal_tabbar2.dart';
import 'package:money_plaza/ui/views/member/personal_info/personal_tabbar/personal_tabbar3.dart';
import 'package:money_plaza/ui/views/member/personal_info/personal_tabbar/personal_tabbar4.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/submit_button.dart';
import 'personal_info_viewmodel.dart';

class PersonalInfoView extends StackedView<PersonalInfoViewModel> {
  const PersonalInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalInfoViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
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
                        bottom: TabBar(
                          unselectedLabelColor: darkGreenHeigh,
                          controller: DefaultTabController.of(context),
                          labelColor: Colors.white,
                          labelStyle: GoogleFonts.ibmPlexSans(
                              fontSize: 11, fontWeight: FontWeight.w600),
                          indicator: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight:
                                      Radius.circular(10)), // Creates border
                              color: darkGreenHeigh),
                          tabs: [
                            Tab(
                              child: const Text(
                                'privateInfo',
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                            Tab(
                              child: const Text(
                                'contactInfo',
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                            Tab(
                              child: const Text(
                                'interestedProducts',
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                            Tab(
                              child: const Text(
                                'loanStatus',
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                  body: const TabBarView(
                    children: <Widget>[
                      PersonalTabBar1(),
                      PersonalTabBar2(),
                      PersonalTabBar3(),
                      PersonalTabBar4(),
                    ],
                  ),
                ),
              ),
            ),
            bottomBar(
              Row(
                children: [
                  ReturnButton(
                    imageLeft: myIcons.returnIcon1,
                    imgwidth: 12,
                    text: 'return',
                    height: 40,
                    width: 80,
                  ),
                  horizontalSpaceTiny,
                  SubmitButton(
                    image: myIcons.done,
                    imgwidth: 16,
                    text: 'Save',
                    height: 40,
                    width: 80,
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
  PersonalInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalInfoViewModel();
}
