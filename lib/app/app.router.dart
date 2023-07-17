// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/views/auth_tab/auth_tab_view.dart' as _i5;
import 'package:money_plaza/ui/views/home/home_view.dart' as _i2;
import 'package:money_plaza/ui/views/landing/landing_view.dart' as _i4;
import 'package:money_plaza/ui/views/landing/settings/settings_view.dart'
    as _i14;
import 'package:money_plaza/ui/views/landing/startup/startup_view.dart' as _i3;
import 'package:money_plaza/ui/views/loan/applyconfirm/applyconfirm_view.dart'
    as _i9;
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart'
    as _i7;
import 'package:money_plaza/ui/views/loan/loan_view.dart' as _i6;
import 'package:money_plaza/ui/views/loan/loancompare/loancompare_view.dart'
    as _i8;
import 'package:money_plaza/ui/views/loan/personalloan/personalloan_view.dart'
    as _i10;
import 'package:money_plaza/ui/views/loan/personalloan/ploanreslut/ploanreslut_view.dart'
    as _i11;
import 'package:money_plaza/ui/views/member_login/member_login_view.dart'
    as _i15;
import 'package:money_plaza/ui/views/ownerloan/ownerloan_view.dart' as _i12;
import 'package:money_plaza/ui/views/ownerloan/ownerloanresult/ownerloanresult_view.dart'
    as _i13;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i17;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const landingView = '/landing-view';

  static const authTabView = '/auth-tab-view';

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

  static const all = <String>{
    homeView,
    startupView,
    landingView,
    authTabView,
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
      Routes.authTabView,
      page: _i5.AuthTabView,
    ),
    _i1.RouteDef(
      Routes.loanView,
      page: _i6.LoanView,
    ),
    _i1.RouteDef(
      Routes.calculatorResultView,
      page: _i7.CalculatorResultView,
    ),
    _i1.RouteDef(
      Routes.loancompareView,
      page: _i8.LoancompareView,
    ),
    _i1.RouteDef(
      Routes.applyconfirmView,
      page: _i9.ApplyconfirmView,
    ),
    _i1.RouteDef(
      Routes.personalloanView,
      page: _i10.PersonalloanView,
    ),
    _i1.RouteDef(
      Routes.ploanreslutView,
      page: _i11.PloanreslutView,
    ),
    _i1.RouteDef(
      Routes.ownerloanView,
      page: _i12.OwnerloanView,
    ),
    _i1.RouteDef(
      Routes.ownerloanresultView,
      page: _i13.OwnerloanresultView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i14.SettingsView,
    ),
    _i1.RouteDef(
      Routes.memberLoginView,
      page: _i15.MemberLoginView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LandingView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LandingView(),
        settings: data,
      );
    },
    _i5.AuthTabView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.AuthTabView(),
        settings: data,
      );
    },
    _i6.LoanView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LoanView(),
        settings: data,
      );
    },
    _i7.CalculatorResultView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CalculatorResultView(),
        settings: data,
      );
    },
    _i8.LoancompareView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.LoancompareView(),
        settings: data,
      );
    },
    _i9.ApplyconfirmView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ApplyconfirmView(),
        settings: data,
      );
    },
    _i10.PersonalloanView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PersonalloanView(),
        settings: data,
      );
    },
    _i11.PloanreslutView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.PloanreslutView(),
        settings: data,
      );
    },
    _i12.OwnerloanView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.OwnerloanView(),
        settings: data,
      );
    },
    _i13.OwnerloanresultView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.OwnerloanresultView(),
        settings: data,
      );
    },
    _i14.SettingsView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.SettingsView(),
        settings: data,
      );
    },
    _i15.MemberLoginView: (data) {
      return _i16.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.MemberLoginView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i17.NavigationService {
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

  Future<dynamic> navigateToAuthTabView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authTabView,
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

  Future<dynamic> navigateToApplyconfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.applyconfirmView,
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

  Future<dynamic> replaceWithAuthTabView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.authTabView,
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

  Future<dynamic> replaceWithApplyconfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.applyconfirmView,
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
}
