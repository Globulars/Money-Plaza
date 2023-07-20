import 'package:easy_localization/easy_localization.dart';
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
          height: height * 0.38,
          width: width,
          child: Scaffold(
            appBar: TabBar(
              unselectedLabelColor: kcPureBlack,
              labelColor: kcPureWhite,
              labelStyle: GoogleFonts.ibmPlexSans(fontSize: 10),
              indicator: const BoxDecoration(
                  // Creates border
                  color: darkGreenHeigh),
              tabs: [
                Tab(
                  child: Text(
                    "resetByEmail",
                    style: GoogleFonts.ibmPlexSans(fontSize: 14),
                  ).tr(),
                ),
                Tab(
                  child: Text(
                    "resetByMobile",
                    style: GoogleFonts.ibmPlexSans(fontSize: 14),
                  ).tr(),
                ),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                const ResetWithEmail(),
                const Text("registerWithMobile").tr(),
              ],
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
