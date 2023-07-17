// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/calculator/calculator_dialog.dart';
import '../ui/dialogs/filter/filter_dialog.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';

enum DialogType {
  infoAlert,
  filter,
  calculator,
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
  };

  dialogService.registerCustomDialogBuilders(builders);
}
