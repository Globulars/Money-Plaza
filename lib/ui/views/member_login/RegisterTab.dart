// ignore_for_file: file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/views/member_login/signup_with_email.dart';
import 'package:money_plaza/ui/views/member_login/signup_with_phone.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import 'member_login_viewmodel.dart';

class RegisterTab extends ViewModelWidget<MemberLoginViewModel> {
  const RegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    MemberLoginViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: SizedBox(
        height: height,
        width: width,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(height),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TabBar(
                unselectedLabelColor: kcPureBlack,
                labelColor: kcPureWhite,
                labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
                indicator: const BoxDecoration(
                    // Creates border
                    color: darkGreenHeigh),
                tabs: [
                  Tab(
                    child: Text(
                      "signUpByEmail",
                      style: GoogleFonts.ibmPlexSans(fontSize: 16),
                    ).tr(),
                  ),
                  Tab(
                    child: Text(
                      "signUpByMobile",
                      style: GoogleFonts.ibmPlexSans(fontSize: 16),
                    ).tr(),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: const TabBarView(
            children: <Widget>[
              SingleChildScrollView(child: SignUpWithEmail()),
              SingleChildScrollView(child: SignUpWithPhone()),
            ],
          ),
        ),
      ),
    );
  }
}
