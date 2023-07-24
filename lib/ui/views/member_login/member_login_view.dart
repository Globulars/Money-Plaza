import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
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
        const BackgroundImage(),
        DefaultTabController(
          length: 2,
          child: SizedBox(
            height: height,
            width: width,
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
                        onTap: viewModel.setChangeTab,
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
                                    color: viewModel.changeTab == 0
                                        ? Colors.white
                                        : darkGreenHeigh,
                                  ),
                                ),
                                Text(
                                  'memberLogin',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ibmPlexSans(fontSize: 16),
                                ).tr(),
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
                                      color: viewModel.changeTab == 1
                                          ? Colors.white
                                          : darkGreenHeigh,
                                    ),
                                  ),
                                  Text(
                                    'register',
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.ibmPlexSans(fontSize: 16),
                                  ).tr(),
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
                      SingleChildScrollView(child: MemberLoginTab()),
                      SingleChildScrollView(child: RegisterTab()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomBar(Container()),
      ],
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
