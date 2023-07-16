import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/app_bar.dart';
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
          length: 2,
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: appBar(() {}, () {}),
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      // collapsedHeight: 0,
                      toolbarHeight: 0,
                      backgroundColor: Colors.transparent,
                      pinned: true,
                      floating: false,
                      bottom: TabBar(
                        dividerColor: Colors.black,
                        isScrollable: true,
                        unselectedLabelColor: darkGreenLight,
                        indicatorSize: TabBarIndicatorSize.tab,
                        padding: EdgeInsets.all(0),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight:
                                    Radius.circular(10)), // Creates border
                            color: darkGreenHeigh),
                        tabs: [
                          Tab(child: Text('Flight')),
                          Tab(child: Text('Train')),
                          // Tab(child: Text('Car')),
                          // Tab(child: Text('Cycle')),
                          // Tab(child: Text('Boat')),
                        ],
                      ),
                    ),
                  ];
                },
                body: const TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.flight, size: 350),
                          Icon(Icons.flight, size: 350),
                        ],
                      ),
                    ),
                    Icon(Icons.directions_transit, size: 350),
                    // Icon(Icons.directions_car, size: 350),
                    // Icon(Icons.directions_bike, size: 350),
                    // Icon(Icons.directions_boat, size: 350),
                  ],
                ),
              )
              // bottomNavigationBar: Container(
              //     height: 60,
              //     width: width * 1,
              //     child: SizedBox(
              //         child: Image.asset(
              //       myIcons.contacts,
              //     ))),
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
