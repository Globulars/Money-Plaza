// ignore_for_file: file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/member_login/login_with_email.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import 'login_with_phone.dart';
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
        child: SizedBox(
          height: height,
          width: width,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(height),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: TabBar(
                  unselectedLabelColor: darkGreenHeigh,
                  labelColor: Colors.white,
                  labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                  indicator: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)), // Creates border
                      color: darkGreenHeigh),
                  tabs: [
                    Tab(
                      child: Text(
                        "loginWithEmail",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ).tr(),
                    ),
                    Tab(
                      child: Text(
                        "loginWithMobile",
                        style: GoogleFonts.ibmPlexSans(fontSize: 16),
                      ).tr(),
                    ),
                  ],
                ),
              ),
            ),
            body: const TabBarView(
              children: <Widget>[
                SingleChildScrollView(child: LoginWithEmail()),
                SingleChildScrollView(child: LoginWithPhone()),
              ],
            ),
          ),
        ));
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
