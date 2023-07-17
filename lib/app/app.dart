import 'package:money_plaza/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:money_plaza/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:money_plaza/ui/views/home/home_view.dart';
import 'package:money_plaza/ui/views/landing/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/ui/views/landing/landing_view.dart';
import 'package:money_plaza/ui/views/loan/loan_view.dart';
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart';
import 'package:money_plaza/ui/views/loan/loancompare/loancompare_view.dart';
import 'package:money_plaza/ui/views/loan/applyconfirm/applyconfirm_view.dart';
import 'package:money_plaza/ui/views/loan/personalloan/personalloan_view.dart';
import 'package:money_plaza/ui/views/loan/personalloan/ploanreslut/ploanreslut_view.dart';
import 'package:money_plaza/ui/views/ownerloan/ownerloan_view.dart';
import 'package:money_plaza/ui/views/ownerloan/ownerloanresult/ownerloanresult_view.dart';
import 'package:money_plaza/ui/views/landing/settings/settings_view.dart';
import 'package:money_plaza/ui/views/member_login/member_login_view.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/blnstransfer_view.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/transfer_result/transfer_result_view.dart';
import 'package:money_plaza/ui/views/commerical_loan/commerical_loan_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingView),
    MaterialRoute(page: LoanView),
    MaterialRoute(page: CalculatorResultView),
    MaterialRoute(page: LoancompareView),
    MaterialRoute(page: ApplyconfirmView),
    MaterialRoute(page: PersonalloanView),
    MaterialRoute(page: PloanreslutView),
    MaterialRoute(page: OwnerloanView),
    MaterialRoute(page: OwnerloanresultView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: MemberLoginView),
    MaterialRoute(page: BlnstransferView),
    MaterialRoute(page: TransferResultView),
    MaterialRoute(page: CommericalLoanView),
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
