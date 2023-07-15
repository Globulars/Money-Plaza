import 'package:money_plaza/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:money_plaza/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:money_plaza/ui/views/home/home_view.dart';
import 'package:money_plaza/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/ui/views/landing/landing_view.dart';
import 'package:money_plaza/ui/views/auth_tab/auth_tab_view.dart';
import 'package:money_plaza/ui/views/loan/loan_view.dart';
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingView),
    MaterialRoute(page: AuthTabView),
    MaterialRoute(page: LoanView),
    MaterialRoute(page: CalculatorResultView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
