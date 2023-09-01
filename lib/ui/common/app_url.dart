// const baseUrl = "https://api.moneyplaza.site";
const baseUrl = "https://admin.moneyplaza.com.hk";

class ApiUrl {
  /////////////////////////////////////Auth Controller////////////////////////////////
  final Uri login = Uri.parse("$baseUrl/auth/login");
  final Uri sendEmailCode = Uri.parse("$baseUrl/auth/sendEmailCode");
  final Uri sendSmsCode = Uri.parse("$baseUrl/auth/sendSmsCode");
  final Uri signupByEmail = Uri.parse("$baseUrl/auth/signupByEmail");
  final Uri signupByMobile = Uri.parse("$baseUrl/auth/signupByMobile");

  /////////////////////////////////////User Controller////////////////////////////////
  final Uri userDataApi = Uri.parse("$baseUrl/user/me");
  final Uri sendForgetPasswordCodeByEmail =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByEmail");
  final Uri sendForgetPasswordCodeByMobile =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByMobile");
  final Uri updatePassword = Uri.parse("$baseUrl/user/updatePassword");
  final Uri updatePasswordByEmailCode =
      Uri.parse("$baseUrl/user/updatePasswordByEmailCode");
  final Uri updatePasswordByMobileCode =
      Uri.parse("$baseUrl/user/updatePasswordByMobileCode");

  /////////////////////////////////////banner Controller////////////////////////////////
  final Uri creditCardGetBannersByType =
      Uri.parse("$baseUrl/banner/getBannersByType?type=card");

  ///////////////////////////////////////card Controller////////////////////////////////
  final Uri cardList = Uri.parse("$baseUrl/card/list");
  final Uri surveyForm = Uri.parse(
      "$baseUrl/surveyform/survey/submit/daa7596e-550e-4e3d-aa4d-0ebac22700eb");

  ///////////////////////////////////////company Controller////////////////////////////////
  final String getCompaniesByType = "$baseUrl/company/getCompaniesByType?type=";
  final Uri getIncentives = Uri.parse("$baseUrl/user/getIncentives");

  ///////////////////////////////////////loan Controller////////////////////////////////
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
  final Uri loanMatch = Uri.parse("$baseUrl/loan/match");

  /////////////////////////////////////Money Plaza Reward////////////////////////////////
  final Uri userReward = Uri.parse("$baseUrl/userReward/list");
  final Uri userRewardSubmit = Uri.parse("$baseUrl/userReward/submit");

  /////////////////////////////////////mortgages Controller////////////////////////////////
  final Uri mortgageList = Uri.parse("$baseUrl/mortgage/list");
  final Uri mortgageLike = Uri.parse("$baseUrl/mortgage/like/");

  ///////////////////////////////////////option Controller////////////////////////////////
  final Uri selectCountries = Uri.parse("$baseUrl/option/countries");
  final Uri loanRecord = Uri.parse("$baseUrl/option/loanCalculateMethods");
}
