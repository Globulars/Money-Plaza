import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../common/app_colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/common/background_image.dart';
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
    return Stack(
      children: [
        const BackgroundImage(),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(() {}, () {}),
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
                              topRight: Radius.circular(10)), // Creates border
                          color: darkGreenHeigh),
                      tabs: const [
                        Tab(
                          child: Text(
                            '1)Early Payback Penalty',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Tab(
                            child: Text(
                          '2)Source of \nincome',
                          textAlign: TextAlign.center,
                        )),
                        Tab(
                            child: Text(
                          '3)Outstanding \nLoan',
                          textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: <Widget>[
                  SingleChildScrollView(child: OwnerTabBar1()),
                  SingleChildScrollView(child: OwnerTabBar2()),
                  SingleChildScrollView(child: OwnerTabBar3())
                ],
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
      ],
    );
  }

  @override
  OwnerloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanViewModel();
}
