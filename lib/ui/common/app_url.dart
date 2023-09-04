// const baseUrl = "https://api.moneyplaza.site";
const baseUrl = "https://admin.moneyplaza.com.hk";

class ApiUrl {
  /////////////////////////////////////Auth Controller////////////////////////////////
  final String login = "/auth/login";
  final String sendEmailCode = "/auth/sendEmailCode";
  final String sendSmsCode = "/auth/sendSmsCode";
  final String signupByEmail = "/auth/signupByEmail";
  final String signupByMobile = "/auth/signupByMobile";

  /////////////////////////////////////User Controller////////////////////////////////
  final String userDataApi = "/user/me";
  final String sendForgetPasswordCodeByEmail =
      "/user/sendForgetPasswordCodeByEmail";
  final String sendForgetPasswordCodeByMobile =
      "/user/sendForgetPasswordCodeByMobile";
  final String updatePassword = "/user/updatePassword";
  final String updatePasswordByEmailCode = "/user/updatePasswordByEmailCode";
  final String updatePasswordByMobileCode = "/user/updatePasswordByMobileCode";

  /////////////////////////////////////banner Controller////////////////////////////////
  final String bannersByType = "/banner/getBannersByType?type=";

  ///////////////////////////////////////card Controller////////////////////////////////
  final String cardList = "/card/list";
  final String surveyForm =
      "/surveyform/survey/submit/daa7596e-550e-4e3d-aa4d-0ebac22700eb";

  ///////////////////////////////////////company Controller////////////////////////////////
  final String getCompaniesByType = "/company/getCompaniesByType?type=";
  final String getIncentives = "/user/getIncentives";

  ///////////////////////////////////////loan Controller////////////////////////////////
  final String loanList = "/loan/list";
  final String getLoanTags = "/tag/getTagsByType?type=loan";
  final String scheduleByPLoanForRepayment =
      "/repayment/scheduleByPLoanForRepayment";
  final String personelLoneSurveyform =
      "/surveyform/survey/submit/76d99393-0023-4113-ad92-3068197adc14";
  final String ownerLoneSurveyform =
      "/surveyform/survey/submit/c9d7ef93-4ea3-4df3-8aab-373aa633046e";
  final String balanceTransferSurveyform =
      "/surveyform/survey/submit/573310d0-2ec8-478b-8fe7-2531fa78813c";
  final String commercialLoanSurveyform =
      "/surveyform/survey/submit/3c54426a-4c43-4d56-988d-87c55e97ebe5";
  final String incomeProofTypes = "/option/incomeProofTypes";
  final String employmentTypes = "/option/employmentTypes";
  final String loanMatch = "/loan/match";

  /////////////////////////////////////Money Plaza Reward////////////////////////////////
  final String userReward = "/userReward/list";
  final String userRewardSubmit = "/userReward/submit";

  /////////////////////////////////////mortgages Controller////////////////////////////////
  final String mortgageList = "/mortgage/list";
  final String mortgageLike = "/mortgage/like/";

  ///////////////////////////////////////option Controller////////////////////////////////
  final String selectCountries = "/option/countries";
  final String loanRecord = "/option/loanCalculateMethods";
}
