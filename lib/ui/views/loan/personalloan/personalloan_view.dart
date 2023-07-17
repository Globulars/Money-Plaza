import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/views/loan/personalloan/personal_widgets/tabbarview3.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../widgets/app_bar.dart';
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
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
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
                                topRight:
                                    Radius.circular(10)), // Creates border
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
                    SingleChildScrollView(child: TabBarView1()),
                    TabBarView2(),
                    TabBarView3()
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
  PersonalloanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalloanViewModel();
}
