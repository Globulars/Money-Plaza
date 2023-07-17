import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/member_login/login_with_email.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'member_login_viewmodel.dart';

class MemberLoginTab extends StackedView<MemberLoginViewModel> {
  const MemberLoginTab({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Container(
        height: height,
        width: width,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 0,
                  backgroundColor: Colors.transparent,
                  pinned: true,
                  floating: false,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  bottom: TabBar(
                    //unselectedLabelColor: Colors.orange,
                    //labelColor: Colors.red,
                    labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                    indicator: const BoxDecoration(
                        // Creates border
                        color: darkGreenHeigh),
                    tabs: [
                      Tab(
                        child: CustomText(
                          text: "Login with Email",
                          fontSize: 16,
                        ),
                      ),
                      Tab(
                        child: CustomText(
                          text: "Login with Mobile",
                          fontSize: 16,
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
                  LoginWithEmail(),
                  Text("Member Login With Mobile Container"),
                ],
              ),
            ),
          ),
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
