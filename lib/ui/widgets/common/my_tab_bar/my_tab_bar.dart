import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'my_tab_bar_model.dart';

class MyTabBar extends StackedView<MyTabBarModel> {
  const MyTabBar({super.key});

  @override
  Widget builder(
    BuildContext context,
    MyTabBarModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Tabs Demo'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.greenAccent),
                tabs: const [
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
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            // Icon(Icons.directions_car, size: 350),
            // Icon(Icons.directions_bike, size: 350),
            // Icon(Icons.directions_boat, size: 350),
          ],
        ),
      )
      ),
    );
  }

  @override
  MyTabBarModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyTabBarModel();
}
