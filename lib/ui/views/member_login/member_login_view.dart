import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../widgets/app_bar.dart';
import 'RegisterTab.dart';
import 'memberLoginTab.dart';
import 'member_login_viewmodel.dart';

class MemberLoginView extends StackedView<MemberLoginViewModel> {
  const MemberLoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        DefaultTabController(
          length: 2,
          child: Container(
            height: height,
            width: width,
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
                        labelColor: Colors.white,
                        labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                        indicator: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight:
                                    Radius.circular(10)), // Creates border
                            color: darkGreenHeigh),
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Image.asset(
                                    myIcons.memberLogin,
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                CustomText(
                                  text: "Member Login",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                          Tab(
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Image.asset(
                                      myIcons.register,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  CustomText(
                                    text: "Register",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TabBarView(
                    children: <Widget>[
                      MemberLoginTab(),
                      RegisterTab(),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Container(
                  height: 60,
                  width: width * 1,
                  child: SizedBox(
                      child: Image.asset(
                    myIcons.contacts,
                  ))),
            ),
          ),
        ),
      ],
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
