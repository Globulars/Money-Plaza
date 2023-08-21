import 'package:money_plaza/ui/views/landing/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/ui/views/landing/landing_view.dart';
import 'package:money_plaza/ui/views/loan/loan_view.dart';
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart';
import 'package:money_plaza/ui/views/loan/loancompare/loancompare_view.dart';
import 'package:money_plaza/ui/views/loan/applyconfirm/applyconfirm_view.dart';
import 'package:money_plaza/ui/views/loan/personal_loan/personalloan_view.dart';
import 'package:money_plaza/ui/views/loan/personal_loan/ploanreslut/ploanreslut_view.dart';
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloan_view.dart';
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloanresult/ownerloanresult_view.dart';
import 'package:money_plaza/ui/views/landing/settings/settings_view.dart';
import 'package:money_plaza/ui/views/member_login/member_login_view.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/blnstransfer_view.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/transfer_result/transfer_result_view.dart';
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_loan_view.dart';
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_result/commerical_result_view.dart';
import 'package:money_plaza/ui/dialogs/filter/filter_dialog.dart';
import 'package:money_plaza/ui/dialogs/calculator/calculator_dialog.dart';
import 'package:money_plaza/ui/views/morgages/morgages_view.dart';
import 'package:money_plaza/ui/views/morgages/morgages_result/morgages_result_view.dart';
import 'package:money_plaza/ui/dialogs/reset_password/reset_password_dialog.dart';
import 'package:money_plaza/ui/dialogs/contact_us/contact_us_dialog.dart';
import 'package:money_plaza/ui/dialogs/morgages_filter/morgages_filter_dialog.dart';
import 'package:money_plaza/ui/views/morgages/morgages_splash/morgages_splash_view.dart';
import 'package:money_plaza/ui/views/morgages/morgages_contact_info/morgages_contact_info_view.dart';
import 'package:money_plaza/ui/views/credit_card/credit_card_view.dart';
import 'package:money_plaza/ui/views/credit_card/credit_result/credit_result_view.dart';
import 'package:money_plaza/ui/dialogs/credit_card_filter/credit_card_filter_dialog.dart';
import 'package:money_plaza/ui/views/member/member_setting/member_setting_view.dart';
import 'package:money_plaza/ui/views/member/personal_info/personal_info_view.dart';
import 'package:money_plaza/ui/views/member/reward/reward_view.dart';
import 'package:money_plaza/ui/views/member/reward_application/reward_application_view.dart';
import 'package:money_plaza/ui/views/member/change_password/change_password_view.dart';
import 'package:money_plaza/ui/dialogs/detail_filte/detail_filte_dialog.dart';
import 'package:money_plaza/ui/widgets/top_bar2/top_bar2_view.dart';
import 'package:money_plaza/ui/widgets/common/horizental_list_view/horizental_list_view_view.dart';
import 'package:money_plaza/services/auth_service.dart';
import 'package:money_plaza/services/toaster_service.dart';
import 'package:money_plaza/services/mortgage_service.dart';
import 'package:money_plaza/services/credit_card_service.dart';
import 'package:money_plaza/services/loan_card_service.dart';
// @stacked-import

@StackedApp(
  routes: [
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
    MaterialRoute(page: CommericalResultView),
    MaterialRoute(page: MorgagesView),
    MaterialRoute(page: MorgagesResultView),
    MaterialRoute(page: MorgagesSplashView),
    MaterialRoute(page: MorgagesContactInfoView),
    MaterialRoute(page: CreditCardView),
    MaterialRoute(page: CreditResultView),
    MaterialRoute(page: MemberSettingView),
    MaterialRoute(page: PersonalInfoView),
    MaterialRoute(page: RewardView),
    MaterialRoute(page: RewardApplicationView),
    MaterialRoute(page: ChangePasswordView),
    MaterialRoute(page: TopBar2View),
    MaterialRoute(page: HorizentalListViewView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ToasterService),
    LazySingleton(classType: MortgageService),
    LazySingleton(classType: CreditCardService),
    LazySingleton(classType: LoanCardService),
// @stacked-service
  ],
  dialogs: [
    StackedDialog(classType: FilterDialog),
    StackedDialog(classType: CalculatorDialog),
    StackedDialog(classType: ResetPasswordDialog),
    StackedDialog(classType: ContactUsDialog),
    StackedDialog(classType: MorgagesFilterDialog),
    StackedDialog(classType: CreditCardFilterDialog),
    StackedDialog(classType: DetailFilteDialog),
// @stacked-dialog
  ],
)
class App {}
