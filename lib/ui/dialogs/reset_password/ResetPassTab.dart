
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog_model.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_with_email.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';

class ResetPassTab extends StackedView<ResetPasswordDialogModel> {
  const ResetPassTab({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordDialogModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ReturnButton(
                    width: width * 0.35,
                    height: 35,
                    text: 'resetByEmail',
                    btmRightRadius: 0,
                    btmLeftRadius: 0,
                    topLeftRadius: 0,
                    topRightRadius: 0,
                    borderWidth: 0,
                    boxcolor: viewModel.initialIndex == 0
                        ? darkGreenHeigh
                        : Colors.white,
                    color: viewModel.initialIndex != 0
                        ? darkGreenHeigh
                        : Colors.white,
                    onPress: () {
                      viewModel.setInitialIndex(0);
                    },
                    // onPress: ,
                  ),
                  ReturnButton(
                    height: 35,
                    width: width * 0.35,
                    text: 'resetByMobile',
                    btmRightRadius: 0,
                    btmLeftRadius: 0,
                    topLeftRadius: 0,
                    topRightRadius: 0,
                    borderWidth: 0,
                    // onPress: ,
                    boxcolor: viewModel.initialIndex == 1
                        ? darkGreenHeigh
                        : Colors.white,
                    color: viewModel.initialIndex != 1
                        ? darkGreenHeigh
                        : Colors.white,
                    onPress: () {
                      viewModel.setInitialIndex(1);
                    },
                  ),
                ],
              ),
              viewModel.initialIndex == 0
                  ? const ResetWithEmail()
                  : const Text("Reset by mobile tab"),
            ],
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
