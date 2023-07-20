import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_with_email.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';

class ResetPassTab extends StackedView<ResetPasswordDialogModel> {
  const ResetPassTab({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: height - 300,
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
                    floating: true,
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
                            "Rest by Email",
                            style: GoogleFonts.ibmPlexSans(fontSize: 14),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Rest by Mobile",
                            style: GoogleFonts.ibmPlexSans(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: <Widget>[
                  ResetWithEmail(),
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
  ResetPasswordDialogModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordDialogModel();
}
