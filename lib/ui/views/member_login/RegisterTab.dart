import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/member_login/signup_with_email.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'member_login_viewmodel.dart';

class RegisterTab extends StackedView<MemberLoginViewModel> {
  const RegisterTab({Key? key}) : super(key: key);

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
      child: SizedBox(
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
                  pinned: false,
                  floating: false,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  bottom: TabBar(
                    unselectedLabelColor: kcPureBlack,
                    labelColor: kcPureWhite,
                    labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                    indicator: const BoxDecoration(
                        // Creates border
                        color: darkGreenHeigh),
                    tabs: [
                      Tab(
                        child: Text(
                          "Login with Email",
                          style: GoogleFonts.ibmPlexSans(fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Login with Mobile",
                          style: GoogleFonts.ibmPlexSans(fontSize: 16),
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
                  SignUpWithEmail(),
                  Text("Register With Mobile Container"),
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
