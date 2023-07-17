// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/calculator/calculator_dialog.dart';
import '../ui/dialogs/contact_us/contact_us_dialog.dart';
import '../ui/dialogs/filter/filter_dialog.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/dialogs/morgages_filter/morgages_filter_dialog.dart';
import '../ui/dialogs/reset_password/reset_password_dialog.dart';

enum DialogType {
  infoAlert,
  filter,
  calculator,
  resetPassword,
  contactUs,
  morgagesFilter,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) =>
        InfoAlertDialog(request: request, completer: completer),
    DialogType.filter: (context, request, completer) =>
        FilterDialog(request: request, completer: completer),
    DialogType.calculator: (context, request, completer) =>
        CalculatorDialog(request: request, completer: completer),
    DialogType.resetPassword: (context, request, completer) =>
        ResetPasswordDialog(request: request, completer: completer),
    DialogType.contactUs: (context, request, completer) =>
        ContactUsDialog(request: request, completer: completer),
    DialogType.morgagesFilter: (context, request, completer) =>
        MorgagesFilterDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
