import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/widgets/app_bar.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'auth_tab_viewmodel.dart';

class AuthTabView extends StackedView<AuthTabViewModel> {
  const AuthTabView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthTabViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: appBar(() {}, () {}),
          body: CustomScrollView(
            // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            slivers: <Widget>[
              SliverAppBar(
                // title: Image.asset(
                //   myIcons.appbarTitle,
                // ),
                // centerTitle: true,
                // actions: <Widget>[
                //   IconButton(
                //     icon: Image.asset(myIcons.appbarSetting),
                //     tooltip: 'Setting Icon',
                //     onPressed: () {},
                //   ), //IconButton
                // ], //<Widget>[]
                // backgroundColor: Colors.transparent,
                // elevation: 0.0,
                // leading: IconButton(
                //   icon: Image.asset(myIcons.appbarHome),
                //   tooltip: 'Menu Icon',
                //   onPressed: () {},
                // ),
                // pinned: true,
                // floating: true,
                flexibleSpace: TabBar(
                  // isScrollable: true,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Creates border
                      color: darkGreenHeigh),
                  unselectedLabelColor: darkGreenHeigh,
                  tabs: [
                    Tab(
                        child: Row(
                      children: [
                        Image.asset(myIcons.memberLogin),
                        const Text('Member Login'),
                      ],
                    )),
                    Tab(
                        child: Row(
                      children: [
                        Image.asset(myIcons.memberLogin),
                        const Text('Register'),
                      ],
                    )),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return const TabBarView(
                    children: <Widget>[
                      Icon(Icons.flight, size: 350),
                      Icon(Icons.directions_transit, size: 350),
                    ],
                  );
                }),
              ),
            ],
          )),
    );
  }

  @override
  AuthTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AuthTabViewModel();
}
