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
                          controller: DefaultTabController.of(context),
                          labelColor: Colors.white,
                          labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                          indicator: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight:
                                      Radius.circular(10)), // Creates border
                              color: darkGreenHeigh),
                          tabs: const [
                            Tab(
                              child: Text(
                                'Private\nInfo',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Tab(
                                child: Text(
                              'Contact\nInfo',
                              textAlign: TextAlign.center,
                            )),
                            Tab(
                                child: Text(
                              'Interested\nproducts',
                              textAlign: TextAlign.center,
                            )),
                            Tab(
                                child: Text(
                              'Loan\nStatus',
                              textAlign: TextAlign.center,
                            )),
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
                      // TabBarView2(),
                      // TabBarView3()
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
                    text: 'Return',
                    height: 40,
                    width: 80,
                  ),
                  horizontalSpaceTiny,
                  ReturnButton(
                    imageRight: myIcons.next,
                    imgwidth: 16,
                    // index==
                    text: 'Next',
                    height: 40,
                    width: 80,
                    onPress: () {
                      var index = DefaultTabController.of(context).index;
                      var length = DefaultTabController.of(context).length;
//                       if(index==1){
//  imagel: myIcons.next;
//                       }else{}
                      if (index < length - 1) {
                        DefaultTabController.of(context).animateTo(index + 1);
                      } else {
                        // viewModel.navigateToApplyconfirm();
                      }
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
  PersonalInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalInfoViewModel();
}
