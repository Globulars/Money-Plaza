import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../views/member_login/login_with_email.dart';
import 'reset_password_dialog_model.dart';

const double _graphicSize = 60;

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
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(color: darkGreenHeigh),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(myIcons.resetPassword, height: 30, width: 30,),
                            Text(
                              request.title ?? 'Reset Password',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        if (request.description != null) ...[
                          verticalSpaceTiny,
                          Text(
                            request.description!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: kcMediumGrey,
                            ),
                            maxLines: 3,
                            softWrap: true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  Container(
                    width: _graphicSize,
                    height: _graphicSize,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6E7B0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(_graphicSize / 2),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(myIcons.cancel, height: 25, width: 25,)
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            const LoginWithEmail(),
            GestureDetector(
              onTap: () => completer(DialogResponse(confirmed: true)),
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
  ResetPasswordDialogModel viewModelBuilder(BuildContext context) =>
      ResetPasswordDialogModel();
}
