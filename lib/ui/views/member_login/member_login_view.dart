import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import 'member_login_viewmodel.dart';

class MemberLoginView extends StackedView<MemberLoginViewModel> {
  const MemberLoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(() {}, () {}),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/screens/mainbg.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: TabBar(
                    unselectedLabelColor: Colors.red,
                    unselectedLabelStyle: TextStyle(backgroundColor: Colors.redAccent, color: Colors.red,decorationColor: Colors.red),
                    indicatorWeight: 0.1,
                    tabs: [
                      Tab(
                        height: 50,
                        icon: SubBar(
                          text: "Member Login",
                          fontWeight: FontWeight.bold,
                          image: myIcons.memberLogin,
                          height: 50,
                          divider: true,
                          btmLeftRadius: 0,
                          btmRightRadius: 0,
                        ),
                      ),
                      Tab(
                        height: 50,
                        icon: SubBar(
                          text: "Register",
                          fontWeight: FontWeight.bold,
                          image: myIcons.register,
                          height: 50,
                          divider: true,
                          btmLeftRadius: 0,
                          btmRightRadius: 0,
                        ),
                      ),
                    ],
                  ),
                  //title: const Text('Tabs Demo'),

                  body: const TabBarView(
                    children: [
                      Icon(Icons.directions_car),
                      Icon(Icons.directions_transit),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
