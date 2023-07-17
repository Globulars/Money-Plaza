import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar2.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/tranfer_loan_widget/transfer_tabbar3.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
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
                children: <Widget>[
                  SingleChildScrollView(child: TransferTabBar1()),
                  SingleChildScrollView(child: TransferTabBar2()),
                  SingleChildScrollView(child: TransferTabBar3()),
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
  BlnstransferViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BlnstransferViewModel();
}
