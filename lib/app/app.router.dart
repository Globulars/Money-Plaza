// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as _i33;
import 'package:money_plaza/services/Models/loan_card.dart' as _i34;
import 'package:money_plaza/ui/views/credit_card/credit_card_view.dart' as _i22;
import 'package:money_plaza/ui/views/credit_card/credit_result/credit_result_view.dart'
    as _i23;
import 'package:money_plaza/ui/views/landing/landing_view.dart' as _i3;
import 'package:money_plaza/ui/views/landing/settings/settings_view.dart'
    as _i12;
import 'package:money_plaza/ui/views/landing/startup/startup_view.dart' as _i2;
import 'package:money_plaza/ui/views/loan/apply_confirm/applyconfirm_view.dart'
    as _i7;
import 'package:money_plaza/ui/views/loan/blnstransfer/applyconfirm_view.dart'
    as _i32;
import 'package:money_plaza/ui/views/loan/blnstransfer/blnstransfer_view.dart'
    as _i14;
import 'package:money_plaza/ui/views/loan/blnstransfer/transfer_result/transfer_result_view.dart'
    as _i15;
import 'package:money_plaza/ui/views/loan/calculator_result/calculator_result_view.dart'
    as _i5;
import 'package:money_plaza/ui/views/loan/commerical_loan/applyconfirm_view.dart'
    as _i31;
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_loan_view.dart'
    as _i16;
import 'package:money_plaza/ui/views/loan/commerical_loan/commerical_result/commerical_result_view.dart'
    as _i17;
import 'package:money_plaza/ui/views/loan/loan_view.dart' as _i4;
import 'package:money_plaza/ui/views/loan/loancompare/loancompare_view.dart'
    as _i6;
import 'package:money_plaza/ui/views/loan/ownerloan/applyconfirm_view.dart'
    as _i29;
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloan_view.dart'
    as _i10;
import 'package:money_plaza/ui/views/loan/ownerloan/ownerloanresult/ownerloanresult_view.dart'
    as _i11;
import 'package:money_plaza/ui/views/loan/personal_loan/applyconfirm_view.dart'
    as _i30;
import 'package:money_plaza/ui/views/loan/personal_loan/personalloan_view.dart'
    as _i8;
import 'package:money_plaza/ui/views/loan/personal_loan/ploanreslut/ploanreslut_view.dart'
    as _i9;
import 'package:money_plaza/ui/views/member/change_password/change_password_view.dart'
    as _i28;
import 'package:money_plaza/ui/views/member/member_setting/member_setting_view.dart'
    as _i24;
import 'package:money_plaza/ui/views/member/personal_info/personal_info_view.dart'
    as _i25;
import 'package:money_plaza/ui/views/member/reward/reward_view.dart' as _i26;
import 'package:money_plaza/ui/views/member/reward_application/reward_application_view.dart'
    as _i27;
import 'package:money_plaza/ui/views/member_login/member_login_view.dart'
    as _i13;
import 'package:money_plaza/ui/views/morgages/morgages_result/morgages_result_view.dart'
    as _i19;
import 'package:money_plaza/ui/views/morgages/morgages_view.dart' as _i18;
import 'package:money_plaza/ui/views/survey_form/survey_form_view.dart' as _i21;
import 'package:money_plaza/ui/views/survey_form/survey_splash_view.dart'
    as _i20;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i35;

class Routes {
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

  static const surveySplashView = '/survey-splash-view';

  static const surveyFormView = '/survey-form-view';

  static const creditCardView = '/credit-card-view';

  static const creditResultView = '/credit-result-view';

  static const memberSettingView = '/member-setting-view';

  static const personalInfoView = '/personal-info-view';

  static const rewardView = '/reward-view';

  static const rewardApplicationView = '/reward-application-view';

  static const changePasswordView = '/change-password-view';

  static const ownerApplyConfirmView = '/owner-apply-confirm-view';

  static const personalloanApplyConfirmView =
      '/personalloan-apply-confirm-view';

  static const commericalApplyConfirmView = '/commerical-apply-confirm-view';

  static const blnstransferloanApplyConfirmView =
      '/blnstransferloan-apply-confirm-view';

  static const all = <String>{
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
    surveySplashView,
    surveyFormView,
    creditCardView,
    creditResultView,
    memberSettingView,
    personalInfoView,
    rewardView,
    rewardApplicationView,
    changePasswordView,
    ownerApplyConfirmView,
    personalloanApplyConfirmView,
    commericalApplyConfirmView,
    blnstransferloanApplyConfirmView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.landingView,
      page: _i3.LandingView,
    ),
    _i1.RouteDef(
      Routes.loanView,
      page: _i4.LoanView,
    ),
    _i1.RouteDef(
      Routes.calculatorResultView,
      page: _i5.CalculatorResultView,
    ),
    _i1.RouteDef(
      Routes.loancompareView,
      page: _i6.LoancompareView,
    ),
    _i1.RouteDef(
      Routes.applyconfirmView,
      page: _i7.ApplyconfirmView,
    ),
    _i1.RouteDef(
      Routes.personalloanView,
      page: _i8.PersonalloanView,
    ),
    _i1.RouteDef(
      Routes.ploanreslutView,
      page: _i9.PloanreslutView,
    ),
    _i1.RouteDef(
      Routes.ownerloanView,
      page: _i10.OwnerloanView,
    ),
    _i1.RouteDef(
      Routes.ownerloanresultView,
      page: _i11.OwnerloanresultView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i12.SettingsView,
    ),
    _i1.RouteDef(
      Routes.memberLoginView,
      page: _i13.MemberLoginView,
    ),
    _i1.RouteDef(
      Routes.blnstransferView,
      page: _i14.BlnstransferView,
    ),
    _i1.RouteDef(
      Routes.transferResultView,
      page: _i15.TransferResultView,
    ),
    _i1.RouteDef(
      Routes.commericalLoanView,
      page: _i16.CommericalLoanView,
    ),
    _i1.RouteDef(
      Routes.commericalResultView,
      page: _i17.CommericalResultView,
    ),
    _i1.RouteDef(
      Routes.morgagesView,
      page: _i18.MorgagesView,
    ),
    _i1.RouteDef(
      Routes.morgagesResultView,
      page: _i19.MorgagesResultView,
    ),
    _i1.RouteDef(
      Routes.surveySplashView,
      page: _i20.SurveySplashView,
    ),
    _i1.RouteDef(
      Routes.surveyFormView,
      page: _i21.SurveyFormView,
    ),
    _i1.RouteDef(
      Routes.creditCardView,
      page: _i22.CreditCardView,
    ),
    _i1.RouteDef(
      Routes.creditResultView,
      page: _i23.CreditResultView,
    ),
    _i1.RouteDef(
      Routes.memberSettingView,
      page: _i24.MemberSettingView,
    ),
    _i1.RouteDef(
      Routes.personalInfoView,
      page: _i25.PersonalInfoView,
    ),
    _i1.RouteDef(
      Routes.rewardView,
      page: _i26.RewardView,
    ),
    _i1.RouteDef(
      Routes.rewardApplicationView,
      page: _i27.RewardApplicationView,
    ),
    _i1.RouteDef(
      Routes.changePasswordView,
      page: _i28.ChangePasswordView,
    ),
    _i1.RouteDef(
      Routes.ownerApplyConfirmView,
      page: _i29.OwnerApplyConfirmView,
    ),
    _i1.RouteDef(
      Routes.personalloanApplyConfirmView,
      page: _i30.PersonalloanApplyConfirmView,
    ),
    _i1.RouteDef(
      Routes.commericalApplyConfirmView,
      page: _i31.CommericalApplyConfirmView,
    ),
    _i1.RouteDef(
      Routes.blnstransferloanApplyConfirmView,
      page: _i32.BlnstransferloanApplyConfirmView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.LandingView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LandingView(),
        settings: data,
      );
    },
    _i4.LoanView: (data) {
      final args = data.getArgs<LoanViewArguments>(
        orElse: () => const LoanViewArguments(),
      );
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i4.LoanView(key: args.key, loanCard: args.loanCard),
        settings: data,
      );
    },
    _i5.CalculatorResultView: (data) {
      final args = data.getArgs<CalculatorResultViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.CalculatorResultView(
            args.monthlyPayment, args.loanAmount, args.interest,
            key: args.key, loanCard: args.loanCard),
        settings: data,
      );
    },
    _i6.LoancompareView: (data) {
      final args = data.getArgs<LoancompareViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.LoancompareView(compareData: args.compareData, key: args.key),
        settings: data,
      );
    },
    _i7.ApplyconfirmView: (data) {
      final args = data.getArgs<ApplyconfirmViewArguments>(
        orElse: () => const ApplyconfirmViewArguments(),
      );
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.ApplyconfirmView(key: args.key, match: args.match),
        settings: data,
      );
    },
    _i8.PersonalloanView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.PersonalloanView(),
        settings: data,
      );
    },
    _i9.PloanreslutView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PloanreslutView(),
        settings: data,
      );
    },
    _i10.OwnerloanView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.OwnerloanView(),
        settings: data,
      );
    },
    _i11.OwnerloanresultView: (data) {
      final args = data.getArgs<OwnerloanresultViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i11.OwnerloanresultView(args.body, key: args.key),
        settings: data,
      );
    },
    _i12.SettingsView: (data) {
      final args = data.getArgs<SettingsViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.SettingsView(args.context, key: args.key),
        settings: data,
      );
    },
    _i13.MemberLoginView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.MemberLoginView(),
        settings: data,
      );
    },
    _i14.BlnstransferView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.BlnstransferView(),
        settings: data,
      );
    },
    _i15.TransferResultView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.TransferResultView(),
        settings: data,
      );
    },
    _i16.CommericalLoanView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.CommericalLoanView(),
        settings: data,
      );
    },
    _i17.CommericalResultView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CommericalResultView(),
        settings: data,
      );
    },
    _i18.MorgagesView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.MorgagesView(),
        settings: data,
      );
    },
    _i19.MorgagesResultView: (data) {
      final args = data.getArgs<MorgagesResultViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i19.MorgagesResultView(
            args.mortgagesPropertyValuation,
            args.mortgagesValueRatio,
            args.mortgagesTenor,
            args.mortgagesMonthlyIncome,
            args.mortgageList,
            args.typePropertyList,
            args.companyIds,
            key: args.key),
        settings: data,
      );
    },
    _i20.SurveySplashView: (data) {
      final args = data.getArgs<SurveySplashViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i20.SurveySplashView(
            key: args.key, organization: args.organization),
        settings: data,
      );
    },
    _i21.SurveyFormView: (data) {
      final args = data.getArgs<SurveyFormViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i21.SurveyFormView(key: args.key, organization: args.organization),
        settings: data,
      );
    },
    _i22.CreditCardView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.CreditCardView(),
        settings: data,
      );
    },
    _i23.CreditResultView: (data) {
      final args = data.getArgs<CreditResultViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.CreditResultView(args.issuersList,
            args.typesList, args.annualIncome, args.financialInstitutesList,
            key: args.key),
        settings: data,
      );
    },
    _i24.MemberSettingView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.MemberSettingView(),
        settings: data,
      );
    },
    _i25.PersonalInfoView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.PersonalInfoView(),
        settings: data,
      );
    },
    _i26.RewardView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.RewardView(),
        settings: data,
      );
    },
    _i27.RewardApplicationView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.RewardApplicationView(),
        settings: data,
      );
    },
    _i28.ChangePasswordView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.ChangePasswordView(),
        settings: data,
      );
    },
    _i29.OwnerApplyConfirmView: (data) {
      final args = data.getArgs<OwnerApplyConfirmViewArguments>(nullOk: false);
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => _i29.OwnerApplyConfirmView(
            args.machBody, args.survayBody,
            key: args.key),
        settings: data,
      );
    },
    _i30.PersonalloanApplyConfirmView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i30.PersonalloanApplyConfirmView(),
        settings: data,
      );
    },
    _i31.CommericalApplyConfirmView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i31.CommericalApplyConfirmView(),
        settings: data,
      );
    },
    _i32.BlnstransferloanApplyConfirmView: (data) {
      return _i33.MaterialPageRoute<dynamic>(
        builder: (context) => const _i32.BlnstransferloanApplyConfirmView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class LoanViewArguments {
  const LoanViewArguments({
    this.key,
    this.loanCard,
  });

  final _i33.Key? key;

  final List<_i34.LoanCard>? loanCard;

  @override
  String toString() {
    return '{"key": "$key", "loanCard": "$loanCard"}';
  }

  @override
  bool operator ==(covariant LoanViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.loanCard == loanCard;
  }

  @override
  int get hashCode {
    return key.hashCode ^ loanCard.hashCode;
  }
}

class CalculatorResultViewArguments {
  const CalculatorResultViewArguments({
    required this.monthlyPayment,
    required this.loanAmount,
    required this.interest,
    this.key,
    this.loanCard,
  });

  final String monthlyPayment;

  final String loanAmount;

  final String interest;

  final _i33.Key? key;

  final List<_i34.LoanCard>? loanCard;

  @override
  String toString() {
    return '{"monthlyPayment": "$monthlyPayment", "loanAmount": "$loanAmount", "interest": "$interest", "key": "$key", "loanCard": "$loanCard"}';
  }

  @override
  bool operator ==(covariant CalculatorResultViewArguments other) {
    if (identical(this, other)) return true;
    return other.monthlyPayment == monthlyPayment &&
        other.loanAmount == loanAmount &&
        other.interest == interest &&
        other.key == key &&
        other.loanCard == loanCard;
  }

  @override
  int get hashCode {
    return monthlyPayment.hashCode ^
        loanAmount.hashCode ^
        interest.hashCode ^
        key.hashCode ^
        loanCard.hashCode;
  }
}

class LoancompareViewArguments {
  const LoancompareViewArguments({
    required this.compareData,
    this.key,
  });

  final List<_i34.LoanCard> compareData;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"compareData": "$compareData", "key": "$key"}';
  }

  @override
  bool operator ==(covariant LoancompareViewArguments other) {
    if (identical(this, other)) return true;
    return other.compareData == compareData && other.key == key;
  }

  @override
  int get hashCode {
    return compareData.hashCode ^ key.hashCode;
  }
}

class ApplyconfirmViewArguments {
  const ApplyconfirmViewArguments({
    this.key,
    this.match = false,
  });

  final _i33.Key? key;

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

class OwnerloanresultViewArguments {
  const OwnerloanresultViewArguments({
    required this.body,
    this.key,
  });

  final Map<String, dynamic> body;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"body": "$body", "key": "$key"}';
  }

  @override
  bool operator ==(covariant OwnerloanresultViewArguments other) {
    if (identical(this, other)) return true;
    return other.body == body && other.key == key;
  }

  @override
  int get hashCode {
    return body.hashCode ^ key.hashCode;
  }
}

class SettingsViewArguments {
  const SettingsViewArguments({
    required this.context,
    this.key,
  });

  final _i33.BuildContext context;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"context": "$context", "key": "$key"}';
  }

  @override
  bool operator ==(covariant SettingsViewArguments other) {
    if (identical(this, other)) return true;
    return other.context == context && other.key == key;
  }

  @override
  int get hashCode {
    return context.hashCode ^ key.hashCode;
  }
}

class MorgagesResultViewArguments {
  const MorgagesResultViewArguments({
    required this.mortgagesPropertyValuation,
    required this.mortgagesValueRatio,
    required this.mortgagesTenor,
    required this.mortgagesMonthlyIncome,
    required this.mortgageList,
    required this.typePropertyList,
    required this.companyIds,
    this.key,
  });

  final String mortgagesPropertyValuation;

  final String mortgagesValueRatio;

  final String mortgagesTenor;

  final String mortgagesMonthlyIncome;

  final List<dynamic> mortgageList;

  final List<dynamic> typePropertyList;

  final List<dynamic> companyIds;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"mortgagesPropertyValuation": "$mortgagesPropertyValuation", "mortgagesValueRatio": "$mortgagesValueRatio", "mortgagesTenor": "$mortgagesTenor", "mortgagesMonthlyIncome": "$mortgagesMonthlyIncome", "mortgageList": "$mortgageList", "typePropertyList": "$typePropertyList", "companyIds": "$companyIds", "key": "$key"}';
  }

  @override
  bool operator ==(covariant MorgagesResultViewArguments other) {
    if (identical(this, other)) return true;
    return other.mortgagesPropertyValuation == mortgagesPropertyValuation &&
        other.mortgagesValueRatio == mortgagesValueRatio &&
        other.mortgagesTenor == mortgagesTenor &&
        other.mortgagesMonthlyIncome == mortgagesMonthlyIncome &&
        other.mortgageList == mortgageList &&
        other.typePropertyList == typePropertyList &&
        other.companyIds == companyIds &&
        other.key == key;
  }

  @override
  int get hashCode {
    return mortgagesPropertyValuation.hashCode ^
        mortgagesValueRatio.hashCode ^
        mortgagesTenor.hashCode ^
        mortgagesMonthlyIncome.hashCode ^
        mortgageList.hashCode ^
        typePropertyList.hashCode ^
        companyIds.hashCode ^
        key.hashCode;
  }
}

class SurveySplashViewArguments {
  const SurveySplashViewArguments({
    this.key,
    required this.organization,
  });

  final _i33.Key? key;

  final String organization;

  @override
  String toString() {
    return '{"key": "$key", "organization": "$organization"}';
  }

  @override
  bool operator ==(covariant SurveySplashViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.organization == organization;
  }

  @override
  int get hashCode {
    return key.hashCode ^ organization.hashCode;
  }
}

class SurveyFormViewArguments {
  const SurveyFormViewArguments({
    this.key,
    required this.organization,
  });

  final _i33.Key? key;

  final String organization;

  @override
  String toString() {
    return '{"key": "$key", "organization": "$organization"}';
  }

  @override
  bool operator ==(covariant SurveyFormViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.organization == organization;
  }

  @override
  int get hashCode {
    return key.hashCode ^ organization.hashCode;
  }
}

class CreditResultViewArguments {
  const CreditResultViewArguments({
    required this.issuersList,
    required this.typesList,
    required this.annualIncome,
    required this.financialInstitutesList,
    this.key,
  });

  final List<dynamic> issuersList;

  final List<dynamic> typesList;

  final String annualIncome;

  final List<dynamic> financialInstitutesList;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"issuersList": "$issuersList", "typesList": "$typesList", "annualIncome": "$annualIncome", "financialInstitutesList": "$financialInstitutesList", "key": "$key"}';
  }

  @override
  bool operator ==(covariant CreditResultViewArguments other) {
    if (identical(this, other)) return true;
    return other.issuersList == issuersList &&
        other.typesList == typesList &&
        other.annualIncome == annualIncome &&
        other.financialInstitutesList == financialInstitutesList &&
        other.key == key;
  }

  @override
  int get hashCode {
    return issuersList.hashCode ^
        typesList.hashCode ^
        annualIncome.hashCode ^
        financialInstitutesList.hashCode ^
        key.hashCode;
  }
}

class OwnerApplyConfirmViewArguments {
  const OwnerApplyConfirmViewArguments({
    required this.machBody,
    required this.survayBody,
    this.key,
  });

  final Map<String, dynamic> machBody;

  final List<dynamic> survayBody;

  final _i33.Key? key;

  @override
  String toString() {
    return '{"machBody": "$machBody", "survayBody": "$survayBody", "key": "$key"}';
  }

  @override
  bool operator ==(covariant OwnerApplyConfirmViewArguments other) {
    if (identical(this, other)) return true;
    return other.machBody == machBody &&
        other.survayBody == survayBody &&
        other.key == key;
  }

  @override
  int get hashCode {
    return machBody.hashCode ^ survayBody.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i35.NavigationService {
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

  Future<dynamic> navigateToLoanView({
    _i33.Key? key,
    List<_i34.LoanCard>? loanCard,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loanView,
        arguments: LoanViewArguments(key: key, loanCard: loanCard),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCalculatorResultView({
    required String monthlyPayment,
    required String loanAmount,
    required String interest,
    _i33.Key? key,
    List<_i34.LoanCard>? loanCard,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.calculatorResultView,
        arguments: CalculatorResultViewArguments(
            monthlyPayment: monthlyPayment,
            loanAmount: loanAmount,
            interest: interest,
            key: key,
            loanCard: loanCard),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoancompareView({
    required List<_i34.LoanCard> compareData,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.loancompareView,
        arguments: LoancompareViewArguments(compareData: compareData, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyconfirmView({
    _i33.Key? key,
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

  Future<dynamic> navigateToOwnerloanresultView({
    required Map<String, dynamic> body,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.ownerloanresultView,
        arguments: OwnerloanresultViewArguments(body: body, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView({
    required _i33.BuildContext context,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.settingsView,
        arguments: SettingsViewArguments(context: context, key: key),
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

  Future<dynamic> navigateToMorgagesResultView({
    required String mortgagesPropertyValuation,
    required String mortgagesValueRatio,
    required String mortgagesTenor,
    required String mortgagesMonthlyIncome,
    required List<dynamic> mortgageList,
    required List<dynamic> typePropertyList,
    required List<dynamic> companyIds,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.morgagesResultView,
        arguments: MorgagesResultViewArguments(
            mortgagesPropertyValuation: mortgagesPropertyValuation,
            mortgagesValueRatio: mortgagesValueRatio,
            mortgagesTenor: mortgagesTenor,
            mortgagesMonthlyIncome: mortgagesMonthlyIncome,
            mortgageList: mortgageList,
            typePropertyList: typePropertyList,
            companyIds: companyIds,
            key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSurveySplashView({
    _i33.Key? key,
    required String organization,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.surveySplashView,
        arguments:
            SurveySplashViewArguments(key: key, organization: organization),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSurveyFormView({
    _i33.Key? key,
    required String organization,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.surveyFormView,
        arguments:
            SurveyFormViewArguments(key: key, organization: organization),
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

  Future<dynamic> navigateToCreditResultView({
    required List<dynamic> issuersList,
    required List<dynamic> typesList,
    required String annualIncome,
    required List<dynamic> financialInstitutesList,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.creditResultView,
        arguments: CreditResultViewArguments(
            issuersList: issuersList,
            typesList: typesList,
            annualIncome: annualIncome,
            financialInstitutesList: financialInstitutesList,
            key: key),
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

  Future<dynamic> navigateToOwnerApplyConfirmView({
    required Map<String, dynamic> machBody,
    required List<dynamic> survayBody,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.ownerApplyConfirmView,
        arguments: OwnerApplyConfirmViewArguments(
            machBody: machBody, survayBody: survayBody, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalloanApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalloanApplyConfirmView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCommericalApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.commericalApplyConfirmView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBlnstransferloanApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.blnstransferloanApplyConfirmView,
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

  Future<dynamic> replaceWithLoanView({
    _i33.Key? key,
    List<_i34.LoanCard>? loanCard,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loanView,
        arguments: LoanViewArguments(key: key, loanCard: loanCard),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCalculatorResultView({
    required String monthlyPayment,
    required String loanAmount,
    required String interest,
    _i33.Key? key,
    List<_i34.LoanCard>? loanCard,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.calculatorResultView,
        arguments: CalculatorResultViewArguments(
            monthlyPayment: monthlyPayment,
            loanAmount: loanAmount,
            interest: interest,
            key: key,
            loanCard: loanCard),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoancompareView({
    required List<_i34.LoanCard> compareData,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.loancompareView,
        arguments: LoancompareViewArguments(compareData: compareData, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyconfirmView({
    _i33.Key? key,
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

  Future<dynamic> replaceWithOwnerloanresultView({
    required Map<String, dynamic> body,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.ownerloanresultView,
        arguments: OwnerloanresultViewArguments(body: body, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView({
    required _i33.BuildContext context,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.settingsView,
        arguments: SettingsViewArguments(context: context, key: key),
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

  Future<dynamic> replaceWithMorgagesResultView({
    required String mortgagesPropertyValuation,
    required String mortgagesValueRatio,
    required String mortgagesTenor,
    required String mortgagesMonthlyIncome,
    required List<dynamic> mortgageList,
    required List<dynamic> typePropertyList,
    required List<dynamic> companyIds,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.morgagesResultView,
        arguments: MorgagesResultViewArguments(
            mortgagesPropertyValuation: mortgagesPropertyValuation,
            mortgagesValueRatio: mortgagesValueRatio,
            mortgagesTenor: mortgagesTenor,
            mortgagesMonthlyIncome: mortgagesMonthlyIncome,
            mortgageList: mortgageList,
            typePropertyList: typePropertyList,
            companyIds: companyIds,
            key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSurveySplashView({
    _i33.Key? key,
    required String organization,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.surveySplashView,
        arguments:
            SurveySplashViewArguments(key: key, organization: organization),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSurveyFormView({
    _i33.Key? key,
    required String organization,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.surveyFormView,
        arguments:
            SurveyFormViewArguments(key: key, organization: organization),
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

  Future<dynamic> replaceWithCreditResultView({
    required List<dynamic> issuersList,
    required List<dynamic> typesList,
    required String annualIncome,
    required List<dynamic> financialInstitutesList,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.creditResultView,
        arguments: CreditResultViewArguments(
            issuersList: issuersList,
            typesList: typesList,
            annualIncome: annualIncome,
            financialInstitutesList: financialInstitutesList,
            key: key),
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

  Future<dynamic> replaceWithOwnerApplyConfirmView({
    required Map<String, dynamic> machBody,
    required List<dynamic> survayBody,
    _i33.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.ownerApplyConfirmView,
        arguments: OwnerApplyConfirmViewArguments(
            machBody: machBody, survayBody: survayBody, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalloanApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalloanApplyConfirmView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCommericalApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.commericalApplyConfirmView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBlnstransferloanApplyConfirmView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.blnstransferloanApplyConfirmView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
