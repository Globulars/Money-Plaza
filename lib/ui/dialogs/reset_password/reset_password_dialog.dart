import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import 'ResetPassTab.dart';
import 'reset_password_dialog_model.dart';

class ResetPasswordDialog extends StackedView<ResetPasswordDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ResetPasswordDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Dialog(
        insetPadding:
          const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          SubBar(
              height: 50,
              color: Colors.white,
              width: width * 1,
              image: myIcons.filter,
              text: 'resetPassword',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              topimage: myIcons.cancel,
              close: true,
            ),
          const ResetPassTab(),
        ],
      ),
    );
  }

  @override
  ResetPasswordDialogModel viewModelBuilder(BuildContext context) =>
      ResetPasswordDialogModel();
}


//  SubBar(
//               height: 50,
//               color: Colors.white,
//               width: width * 1,
//               image: myIcons.filter,
//               text: 'resetPassword',
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//               btmLeftRadius: 0,
//               btmRightRadius: 0,
//               topimage: myIcons.cancel,
//               close: true,
//             ),