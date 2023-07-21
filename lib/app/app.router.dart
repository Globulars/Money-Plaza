// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as _i32;
import 'package:money_plaza/ui/views/credit_card/credit_card_view.dart' as _i23;
import 'package:money_plaza/ui/views/credit_card/credit_result/credit_result_view.dart'
    as _i24;
import 'package:money_plaza/ui/views/home/home_view.dart' as _i2;
import 'package:money_plaza/ui/widgets/common/horizental_list_view/horizental_list_view_view.dart'
    as _i31;
import 'package:money_plaza/ui/views/landing/landing_view.dart' as _i4;
import 'package:money_plaza/ui/views/landing/settings/settings_view.dart'
    as _i13;
import 'package:money_plaza/ui/views/landing/startup/startup_view.dart' as _i3;
import 'package:money_plaza/ui/views/loan/applyconfirm/applyconfirm_view.dart'
    as _i8;
import 'package:money_plaza/ui/views/loan/blnstransfer/blnstransfer_view.dart'
    as _i15;
import 'package:money_plaza/ui/views/loan/blnstransfer/transfer_result/transfer_result_view.dart'
    as _i16;
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart'
    as _i6;
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_loan_view.dart'
    as _i17;
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_result/commerical_result_view.dart'
    as _i18;
import 'package:money_plaza/ui/views/loan/loan_view.dart' as _i5;
import 'package:money_plaza/ui/views/loan/loancompare/loancompare_view.dart'
    as _i7;
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloan_view.dart'
    as _i11;
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloanresult/ownerloanresult_view.dart'
    as _i12;
import 'package:money_plaza/ui/views/loan/personal_loan/personalloan_view.dart'
    as _i9;
import 'package:money_plaza/ui/views/loan/personal_loan/ploanreslut/ploanreslut_view.dart'
    as _i10;
import 'package:money_plaza/ui/views/member/change_password/change_password_view.dart'
    as _i29;
import 'package:money_plaza/ui/views/member/member_setting/member_setting_view.dart'
    as _i25;
import 'package:money_plaza/ui/views/member/personal_info/personal_info_view.dart'
    as _i26;
import 'package:money_plaza/ui/views/member/reward/reward_view.dart' as _i27;
import 'package:money_plaza/ui/views/member/reward_application/reward_application_view.dart'
    as _i28;
import 'package:money_plaza/ui/views/member_login/member_login_view.dart'
    as _i14;
import 'package:money_plaza/ui/views/morgages/morgages_contact_info/morgages_contact_info_view.dart'
    as _i22;
import 'package:money_plaza/ui/views/morgages/morgages_result/morgages_result_view.dart'
    as _i20;
import 'package:money_plaza/ui/views/morgages/morgages_splash/morgages_splash_view.dart'
    as _i21;
import 'package:money_plaza/ui/views/morgages/morgages_view.dart' as _i19;
import 'package:money_plaza/ui/widgets/top_bar2/top_bar2_view.dart' as _i30;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i33;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const landingView = '/landing-view';

  static const loanView = '/loan-view';

  static const calculatorResultView = '/calculator-result-view';

  static const loancompareView = '/loancompare-view';

  static const applyconfirmView = '/applyconfirm-view';

  static const personalloanView = '/personalloan-view';

  static const ploanreslutView = '/ploanreslut-view';

  static const ownerloanView = '/ownerloan-view';

  static const ownerloanresultView = '/ownerloanresult-view';

  static const settingsView = '/settings-view';

  static const memberLoginView = '/member-login-view';

  static const blnstransferView = '/blnstransfer-view';

  static const transferResultView = '/transfer-result-view';

  static const commericalLoanView = '/commerical-loan-view';

  static const commericalResultView = '/commerical-result-view';

  static const morgagesView = '/morgages-view';

  static const morgagesResultView = '/morgages-result-view';

  static const morgagesSplashView = '/morgages-splash-view';

  static const morgagesContactInfoView = '/morgages-contact-info-view';

  static const creditCardView = '/credit-card-view';

  static const creditResultView = '/credit-result-view';

  static const memberSettingView = '/member-setting-view';

  static const personalInfoView = '/personal-info-view';

  static const rewardView = '/reward-view';

  static const rewardApplicationView = '/reward-application-view';

  static const changePasswordView = '/change-password-view';

  static const topBar2View = '/top-bar2-view';

  static const horizentalListViewView = '/horizental-list-view-view';

  static const all = <String>{
    homeView,
    startupView,
    landingView,
    loanView,
    calculatorResultView,
    loancompareView,
    applyconfirmView,
    personalloanView,
    ploanreslutView,
    ownerloanView,
    ownerloanresultView,
    settingsView,
    memberLoginView,
    blnstransferView,
    transferResultView,
    commericalLoanView,
    commericalResultView,
    morgagesView,
    morgagesResultView,
    morgagesSplashView,
    morgagesContactInfoView,
    creditCardView,
    creditResultView,
    memberSettingView,
    personalInfoView,
    rewardView,
    rewardApplicationView,
    changePasswordView,
    topBar2View,
    horizentalListViewView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.landingView,
      page: _i4.LandingView,
    ),
    _i1.RouteDef(
      Routes.loanView,
      page: _i5.LoanView,
    ),
    _i1.RouteDef(
      Routes.calculatorResultView,
      page: _i6.CalculatorResultView,
    ),
    _i1.RouteDef(
      Routes.loancompareView,
      page: _i7.LoancompareView,
    ),
    _i1.RouteDef(
      Routes.applyconfirmView,
      page: _i8.ApplyconfirmView,
    ),
    _i1.RouteDef(
      Routes.personalloanView,
      page: _i9.PersonalloanView,
    ),
    _i1.RouteDef(
      Routes.ploanreslutView,
      page: _i10.PloanreslutView,
    ),
    _i1.RouteDef(
      Routes.ownerloanView,
      page: _i11.OwnerloanView,
    ),
    _i1.RouteDef(
      Routes.ownerloanresultView,
      page: _i12.OwnerloanresultView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i13.SettingsView,
    ),
    _i1.RouteDef(
      Routes.memberLoginView,
      page: _i14.MemberLoginView,
    ),
    _i1.RouteDef(
      Routes.blnstransferView,
      page: _i15.BlnstransferView,
    ),
    _i1.RouteDef(
      Routes.transferResultView,
      page: _i16.TransferResultView,
    ),
    _i1.RouteDef(
      Routes.commericalLoanView,
      page: _i17.CommericalLoanView,
    ),
    _i1.RouteDef(
      Routes.commericalResultView,
      page: _i18.CommericalResultView,
    ),
    _i1.RouteDef(
      Routes.morgagesView,
      page: _i19.MorgagesView,
    ),
    _i1.RouteDef(
      Routes.morgagesResultView,
      page: _i20.MorgagesResultView,
    ),
    _i1.RouteDef(
      Routes.morgagesSplashView,
      page: _i21.MorgagesSplashView,
    ),
    _i1.RouteDef(
      Routes.morgagesContactInfoView,
      page: _i22.MorgagesContactInfoView,
    ),
    _i1.RouteDef(
      Routes.creditCardView,
      page: _i23.CreditCardView,
    ),
    _i1.RouteDef(
      Routes.creditResultView,
      page: _i24.CreditResultView,
    ),
    _i1.RouteDef(
      Routes.memberSettingView,
      page: _i25.MemberSettingView,
    ),
    _i1.RouteDef(
      Routes.personalInfoView,
      page: _i26.PersonalInfoView,
    ),
    _i1.RouteDef(
      Routes.rewardView,
      page: _i27.RewardView,
    ),
    _i1.RouteDef(
      Routes.rewardApplicationView,
      page: _i28.RewardApplicationView,
    ),
    _i1.RouteDef(
      Routes.changePasswordView,
      page: _i29.ChangePasswordView,
    ),
    _i1.RouteDef(
      Routes.topBar2View,
      page: _i30.TopBar2View,
    ),
    _i1.RouteDef(
      Routes.horizentalListViewView,
      page: _i31.HorizentalListViewView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LandingView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LandingView(),
        settings: data,
      );
    },
    _i5.LoanView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoanView(),
        settings: data,
      );
    },
    _i6.CalculatorResultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.CalculatorResultView(),
        settings: data,
      );
    },
    _i7.LoancompareView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.LoancompareView(),
        settings: data,
      );
    },
    _i8.ApplyconfirmView: (data) {
      final args = data.getArgs<ApplyconfirmViewArguments>(
        orElse: () => const ApplyconfirmViewArguments(),
      );
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i8.ApplyconfirmView(key: args.key, match: args.match),
        settings: data,
      );
    },
    _i9.PersonalloanView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PersonalloanView(),
        settings: data,
      );
    },
    _i10.PloanreslutView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PloanreslutView(),
        settings: data,
      );
    },
    _i11.OwnerloanView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.OwnerloanView(),
        settings: data,
      );
    },
    _i12.OwnerloanresultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.OwnerloanresultView(),
        settings: data,
      );
    },
    _i13.SettingsView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.SettingsView(),
        settings: data,
      );
    },
    _i14.MemberLoginView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.MemberLoginView(),
        settings: data,
      );
    },
    _i15.BlnstransferView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.BlnstransferView(),
        settings: data,
      );
    },
    _i16.TransferResultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.TransferResultView(),
        settings: data,
      );
    },
    _i17.CommericalLoanView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CommericalLoanView(),
        settings: data,
      );
    },
    _i18.CommericalResultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CommericalResultView(),
        settings: data,
      );
    },
    _i19.MorgagesView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.MorgagesView(),
        settings: data,
      );
    },
    _i20.MorgagesResultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.MorgagesResultView(),
        settings: data,
      );
    },
    _i21.MorgagesSplashView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.MorgagesSplashView(),
        settings: data,
      );
    },
    _i22.MorgagesContactInfoView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.MorgagesContactInfoView(),
        settings: data,
      );
    },
    _i23.CreditCardView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.CreditCardView(),
        settings: data,
      );
    },
    _i24.CreditResultView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.CreditResultView(),
        settings: data,
      );
    },
    _i25.MemberSettingView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.MemberSettingView(),
        settings: data,
      );
    },
    _i26.PersonalInfoView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.PersonalInfoView(),
        settings: data,
      );
    },
    _i27.RewardView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.RewardView(),
        settings: data,
      );
    },
    _i28.RewardApplicationView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.RewardApplicationView(),
        settings: data,
      );
    },
    _i29.ChangePasswordView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i29.ChangePasswordView(),
        settings: data,
      );
    },
    _i30.TopBar2View: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i30.TopBar2View(),
        settings: data,
      );
    },
    _i31.HorizentalListViewView: (data) {
      return _i32.MaterialPageRoute<dynamic>(
        builder: (context) => const _i31.HorizentalListViewView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ApplyconfirmViewArguments {
  const ApplyconfirmViewArguments({
    this.key,
    this.match = false,
  });

  final _i32.Key? key;

  final bool match;

  @override
  String toString() {
    return '{"key": "$key", "match": "$match"}';
  }

  @override
  bool operator ==(covariant ApplyconfirmViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.match == match;
  }

  @override
  int get hashCode {
    return key.hashCode ^ match.hashCode;
  }
}

extension NavigatorStateExtension on _i33.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLandingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.landingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCalculatorResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.calculatorResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoancompareView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loancompareView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyconfirmView({
    _i32.Key? key,
    bool match = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.applyconfirmView,
        arguments: ApplyconfirmViewArguments(key: key, match: match),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalloanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalloanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPloanreslutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ploanreslutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOwnerloanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ownerloanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOwnerloanresultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ownerloanresultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMemberLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.memberLoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBlnstransferView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.blnstransferView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransferResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.transferResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCommericalLoanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.commericalLoanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCommericalResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.commericalResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMorgagesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.morgagesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMorgagesResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.morgagesResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMorgagesSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.morgagesSplashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMorgagesContactInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.morgagesContactInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreditCardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.creditCardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreditResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.creditResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMemberSettingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.memberSettingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRewardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rewardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRewardApplicationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rewardApplicationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChangePasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.changePasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTopBar2View([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.topBar2View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHorizentalListViewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.horizentalListViewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLandingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.landingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCalculatorResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.calculatorResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoancompareView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loancompareView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyconfirmView({
    _i32.Key? key,
    bool match = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.applyconfirmView,
        arguments: ApplyconfirmViewArguments(key: key, match: match),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalloanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalloanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPloanreslutView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ploanreslutView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOwnerloanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ownerloanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOwnerloanresultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ownerloanresultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMemberLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.memberLoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBlnstransferView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.blnstransferView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransferResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.transferResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCommericalLoanView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.commericalLoanView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCommericalResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.commericalResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMorgagesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.morgagesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMorgagesResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.morgagesResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMorgagesSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.morgagesSplashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMorgagesContactInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.morgagesContactInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreditCardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.creditCardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreditResultView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.creditResultView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMemberSettingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.memberSettingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRewardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rewardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRewardApplicationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rewardApplicationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChangePasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.changePasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTopBar2View([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.topBar2View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHorizentalListViewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.horizentalListViewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
