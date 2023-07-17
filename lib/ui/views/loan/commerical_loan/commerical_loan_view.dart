import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import 'commeriacal_widgets/commerical_view1.dart';
import 'commeriacal_widgets/commerical_view2.dart';
import 'commeriacal_widgets/commerical_view3.dart';
import 'commerical_loan_viewmodel.dart';

class CommericalLoanView extends StackedView<CommericalLoanViewModel> {
  const CommericalLoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalLoanViewModel viewModel,
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
                children: <Widget>[CommTabBar1(), CommTabBar2(), CommTabBar3()],
              ),
            ),
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 18,
                fontSize: 18,
                text: 'Retrue',
                height: 40,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  CommericalLoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalLoanViewModel();
}
