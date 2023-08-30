// const baseUrl = "https://api.moneyplaza.site";
const baseUrl = "https://admin.moneyplaza.com.hk";

class ApiUrl {
  /////////////////////////////////////Auth Controller////////////////////////////////
  final Uri login = Uri.parse("$baseUrl/auth/login");
  // final Uri loginByEmailCode = Uri.parse("$baseUrl/auth/loginByEmailCode");
  // final Uri loginByMobileCode = Uri.parse("$baseUrl/auth/loginByMobileCode");
  // final Uri logOut = Uri.parse("$baseUrl/auth/logout");
  final Uri sendEmailCode = Uri.parse("$baseUrl/auth/sendEmailCode");
  final Uri sendSmsCode = Uri.parse("$baseUrl/auth/sendSmsCode");
  final Uri signupByEmail = Uri.parse("$baseUrl/auth/signupByEmail");
  final Uri signupByMobile = Uri.parse("$baseUrl/auth/signupByMobile");

  /////////////////////////////////////Award Controller////////////////////////////////
  // final Uri awardCreate = Uri.parse("$baseUrl/award");

  /////////////////////////////////////User Controller////////////////////////////////

  // final Uri getIncentives = Uri.parse("$baseUrl/user/getIncentives");
  // final Uri me = Uri.parse("$baseUrl/user/me");
  // final Uri query = Uri.parse("$baseUrl/user/query");
  final Uri sendForgetPasswordCodeByEmail =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByEmail");
  final Uri sendForgetPasswordCodeByMobile =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByMobile");
  // final Uri updateCreditCardDebtInformation =
  //     Uri.parse("$baseUrl/user/updateCreditCardDebtInformation");
  // final Uri updateFinancialInformation =
  //     Uri.parse("$baseUrl/user/updateFinancialInformation");
  // final Uri updateLoanInformation =
  //     Uri.parse("$baseUrl/user/updateLoanInformation");
  // final Uri updateMortgageInformation =
  //     Uri.parse("$baseUrl/user/updateMortgageInformation");
  final Uri updatePassword = Uri.parse("$baseUrl/user/updatePassword");
  final Uri updatePasswordByEmailCode =
      Uri.parse("$baseUrl/user/updatePasswordByEmailCode");
  final Uri updatePasswordByMobileCode =
      Uri.parse("$baseUrl/user/updatePasswordByMobileCode");
  // final Uri updateProfile = Uri.parse("$baseUrl/user/updateProfile");
  // final Uri updateResidentialInformation =
  //     Uri.parse("$baseUrl/user/updateResidentialInformation");
  // final Uri updateWorkInformation =
  //     Uri.parse("$baseUrl/user/updateWorkInformation");
  // final Uri verifyEmail = Uri.parse("$baseUrl/user/verifyEmail");
  // final Uri verifyMobile = Uri.parse("$baseUrl/user/verifyMobile");

  /////////////////////////////////////account Controller////////////////////////////////
  // final Uri accountLike = Uri.parse("$baseUrl/account/like/");
  // final Uri accountList = Uri.parse("$baseUrl/account/list");

  /////////////////////////////////////award Controller////////////////////////////////
  // final Uri award = Uri.parse("$baseUrl/award");

  /////////////////////////////////////banner Controller////////////////////////////////
  final Uri creditCardGetBannersByType =
      Uri.parse("$baseUrl/banner/getBannersByType?type=card");

  ///////////////////////////////////////blog Controller////////////////////////////////
  // final Uri blog = Uri.parse("$baseUrl/blog/");
  // final Uri blogGetByType = Uri.parse("$baseUrl/blog/getByType");
  // final Uri blogGetType = Uri.parse("$baseUrl/blog/getTypes");

  ///////////////////////////////////////card Controller////////////////////////////////
  final Uri cardList = Uri.parse("$baseUrl/card/list");
  final Uri surveyForm = Uri.parse(
      "$baseUrl/surveyform/survey/submit/daa7596e-550e-4e3d-aa4d-0ebac22700eb");

  // final Uri cardLike = Uri.parse("$baseUrl/card/like/");
  // final Uri cardPreview = Uri.parse("$baseUrl/card/preview/");

  ///////////////////////////////////////check-id Controller////////////////////////////////
  // final Uri checkIdAddComment = Uri.parse("$baseUrl/checkId/addcomment");
  // final Uri checkIdDetails = Uri.parse("$baseUrl/checkId/details");
  // final Uri checkIdInfo = Uri.parse("$baseUrl/checkId/info");
  // final Uri checkIdOffers = Uri.parse("$baseUrl/checkId/offers");
  // final Uri checkIdSubmit = Uri.parse("$baseUrl/checkId/submit/");

  ///////////////////////////////////////company Controller////////////////////////////////
  final String getCompaniesByType = "$baseUrl/company/getCompaniesByType?type=";

  final Uri getIncentives = Uri.parse("$baseUrl/user/getIncentives");
  // final Uri companyGetCompanyById =
  //     Uri.parse("$baseUrl/company/getCompanyById/");

  ///////////////////////////////////////form Controller////////////////////////////////
  // final Uri form = Uri.parse("$baseUrl/form/");
  // final Uri formInfo = Uri.parse("$baseUrl/form/info/");
  // final Uri formPrefill = Uri.parse("$baseUrl/form/prefill/");
  // final Uri formSubmit = Uri.parse("$baseUrl/form/submit/");

  ///////////////////////////////////////insurance Controller////////////////////////////////
  // final Uri insuranceLike = Uri.parse("$baseUrl/insurance/like");
  // final Uri insuranceList = Uri.parse("$baseUrl/insurance/list");

  ///////////////////////////////////////loan Controller////////////////////////////////
  // final Uri loanLike = Uri.parse("$baseUrl/loan/like/");
  final Uri loanList = Uri.parse("$baseUrl/loan/list");
  final Uri getLoanTags = Uri.parse("$baseUrl/tag/getTagsByType?type=loan");
  final Uri scheduleByPLoanForRepayment =
      Uri.parse("$baseUrl/repayment/scheduleByPLoanForRepayment");
  final Uri personelLoneSurveyform = Uri.parse(
      "$baseUrl/surveyform/survey/submit/76d99393-0023-4113-ad92-3068197adc14");
  final Uri ownerLoneSurveyform = Uri.parse(
      "$baseUrl/surveyform/survey/submit/c9d7ef93-4ea3-4df3-8aab-373aa633046e");
  final Uri balanceTransferSurveyform = Uri.parse(
      "$baseUrl/surveyform/survey/submit/573310d0-2ec8-478b-8fe7-2531fa78813c");
  final Uri commercialLoanSurveyform = Uri.parse(
      "$baseUrl/surveyform/survey/submit/3c54426a-4c43-4d56-988d-87c55e97ebe5");
  final Uri incomeProofTypes = Uri.parse("$baseUrl/option/incomeProofTypes");
  final Uri employmentTypes = Uri.parse("$baseUrl/option/employmentTypes");

  // dropdown
  // https://admin.moneyplaza.com.hk/option/loanCalculateMethods

  final Uri loanMatch = Uri.parse("$baseUrl/loan/match");
  // final Uri loanPreview = Uri.parse("$baseUrl/loan/preview/");

  /////////////////////////////////////loan-request Controller////////////////////////////////
  // final Uri loanRequestApply = Uri.parse("$baseUrl/loanRequest/apply");
  // final Uri loanRequestQuery = Uri.parse("$baseUrl/loanRequest/query");

  /////////////////////////////////////Money Plaza Reward////////////////////////////////
  final Uri userReward = Uri.parse("$baseUrl/userReward/list");
  final Uri userRewardSubmit = Uri.parse("$baseUrl/userReward/submit");

  /////////////////////////////////////menu Controller////////////////////////////////
  // final Uri menuGetTopMenus = Uri.parse("$baseUrl/menu/getTopMenus");
  // final Uri menuList = Uri.parse("$baseUrl/menu/list");

  /////////////////////////////////////mortgages Controller////////////////////////////////
  // final Uri mortgageDelete = Uri.parse("$baseUrl/mortgage/delete/");
  final Uri mortgageList = Uri.parse("$baseUrl/mortgage/list");
  final Uri mortgageLike = Uri.parse("$baseUrl/mortgage/like/");
  // final Uri mortgageListAll = Uri.parse("$baseUrl/mortgage/listAll");
  // final Uri mortgageSaveOrUpdate = Uri.parse("$baseUrl/mortgage/saveOrUpdate");

  /////////////////////////////////////mortgages-request Controller////////////////////////////////
  // final Uri mortgageRequestApply = Uri.parse("$baseUrl/mortgageRequest/apply");
  // final Uri mortgageRequestQuery = Uri.parse("$baseUrl/mortgageRequest/query");

  ///////////////////////////////////////option Controller////////////////////////////////
  ///
  final Uri selectCountries = Uri.parse("$baseUrl/option/countries");

  // final Uri optionAreas = Uri.parse("$baseUrl/option/areas");
  // final Uri optionCarFactories = Uri.parse("$baseUrl/option/carFactories");
  // final Uri optionCarModelByCarFactory =
  //     Uri.parse("$baseUrl/option/carModelByCarFactory");

  // final Uri optionDistricts = Uri.parse("$baseUrl/option/districts");
  // final Uri optionEducations = Uri.parse("$baseUrl/option/educations");
  // final Uri optionEmploymentTypes =
  //     Uri.parse("$baseUrl/option/employmentTypes");
  // final Uri optionGetDistrictsByAreaCode =
  //     Uri.parse("$baseUrl/option/getDistrictsByAreaCode");
  // final Uri optionIncomeProofTypes =
  //     Uri.parse("$baseUrl/option/incomeProofTypes");
  // final Uri optionIndustries = Uri.parse("$baseUrl/option/industries");
  // final Uri optionInsuranceExtraFeatures =
  //     Uri.parse("$baseUrl/option/insuranceExtraFeatures");
  // final Uri optionInsuranceTypes = Uri.parse("$baseUrl/option/insuranceTypes");
  // final Uri optionLoanCalculateMethods =
  //     Uri.parse("$baseUrl/option/loanCalculateMethods");
  // final Uri optionMortgageCalculateMethods =
  //     Uri.parse("$baseUrl/option/mortgageCalculateMethods");
  // final Uri optionPaymentMethods = Uri.parse("$baseUrl/option/paymentMethods");
  // final Uri optionPremiseTypes = Uri.parse("$baseUrl/option/premiseTypes");
  // final Uri optionProducts = Uri.parse("$baseUrl/option/products");
  // final Uri optionPropertyStatus = Uri.parse("$baseUrl/option/propertyStatus");
  // final Uri optionTenorListByCalculateMethod =
  //     Uri.parse("$baseUrl/option/tenorListByCalculateMethod");
  

  ///////////////////////////////////////page Controller////////////////////////////////
  // final Uri pageGetByPath = Uri.parse("$baseUrl/page/getByPath");

  ///////////////////////////////////////poc Controller////////////////////////////////
  // final Uri pocForm = Uri.parse("$baseUrl/poc/form");

  ///////////////////////////////////////property-evalute Controller////////////////////////////////
  // final Uri propertyEvaluateSubmit =
  //     Uri.parse("$baseUrl/propertyEvaluate/submit");

  ///////////////////////////////////////query Controller////////////////////////////////
  // final Uri queryGetByType = Uri.parse("$baseUrl/query/getByType");
  // final Uri queryList = Uri.parse("$baseUrl/query/list");

  ///////////////////////////////////////re-payment-shedule Controller////////////////////////////////
  // final Uri repaymentScheduleByInterestOnlyForInterestRate =
  //     Uri.parse("$baseUrl/repayment/scheduleByInterestOnlyForInterestRate");
  // final Uri repaymentScheduleByInterestOnlyForRepayment =
  //     Uri.parse("$baseUrl/repayment/scheduleByInterestOnlyForRepayment");
  // final Uri repaymentScheduleByMinPay =
  //     Uri.parse("$baseUrl/repayment/scheduleByMinPay");
  // final Uri repaymentScheduleByPLoanForInterestRate =
  //     Uri.parse("$baseUrl/repayment/scheduleByPLoanForInterestRate");
  // final Uri repaymentScheduleByPLoanForRepayment =
  //     Uri.parse("$baseUrl/repayment/scheduleByPLoanForRepayment");
  final Uri scheduleByLoan =
      Uri.parse("$baseUrl/repayment/scheduleByPLoanForTenor");
  // final Uri repaymentScheduleByPrepaidInterestForInterestRate =
  //     Uri.parse("$baseUrl/repayment/scheduleByPrepaidInterestForInterestRate");
  // final Uri repaymentScheduleByPrepaidInterestForPrepaidInterestAmount =
  //     Uri.parse(
  //         "$baseUrl/repayment/scheduleByPrepaidInterestForPrepaidInterestAmount");
  // final Uri repaymentScheduleByPrepaidInterestForTenor =
  //     Uri.parse("$baseUrl/repayment/scheduleByPrepaidInterestForTenor");

  ///////////////////////////////////////seo Controller////////////////////////////////
  // final Uri seoGetByPath = Uri.parse("$baseUrl/seo/getByPath");

  ///////////////////////////////////////setting Controller////////////////////////////////
  // final Uri settingList = Uri.parse("$baseUrl/setting/list");

  ///////////////////////////////////////subscribe Controller////////////////////////////////
  // final Uri subscribe = Uri.parse("$baseUrl/subscribe");

  ///////////////////////////////////////survey Controller////////////////////////////////
  // final Uri surveyGetById = Uri.parse("$baseUrl/survey/getById/");
  // final Uri surveySubmit = Uri.parse("$baseUrl/survey/submit/");

  ///////////////////////////////////////tag Controller////////////////////////////////
  // final Uri tagGetTagsByType = Uri.parse("$baseUrl/tag/getTagsByType");

  ///////////////////////////////////////travel-insurance-request Controller////////////////////////////////
  // final Uri travelInsuranceRequest =
  //     Uri.parse("$baseUrl/travelInsuranceRequest");

  ///////////////////////////////////////user-reward Controller////////////////////////////////
  // final Uri userRewardDelete = Uri.parse("$baseUrl/userReward/delete/");
  // final Uri userRewardList = Uri.parse("$baseUrl/userReward/list");
  // final Uri userRewardSubmit = Uri.parse("$baseUrl/userReward/submit");

  ///////////////////////////////////////user-reward Controller////////////////////////////////
//   final Uri vendorIndex = Uri.parse("$baseUrl/vendor/index");
//   final Uri vendorLogin = Uri.parse("$baseUrl/vendor/login");
}
