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
              ),
            ),
            bottomBar(
              Row(
                children: [
                  ReturnButton(
                    imageLeft: myIcons.returnIcon1,
                    imgwidth: 14,
                    fontSize: 18,
                    text: 'Retrue',
                    height: 40,
                    width: 80,
                  ),
                  horizontalSpaceTiny,
                  ReturnButton(
                    imageRight: myIcons.next,
                    imgwidth: 18,
                    fontSize: 18,
                    text: 'Next',
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