const baseUrl = "https://api.moneyplaza.site";

class ApiUrl {
  /////////////////////////////////////Auth Controller////////////////////////////////
  final Uri login = Uri.parse("$baseUrl/auth/login");
  final Uri loginByEmailCode = Uri.parse("$baseUrl/auth/loginByEmailCode");
  final Uri loginByMobileCode = Uri.parse("$baseUrl/auth/loginByMobileCode");
  final Uri logOut = Uri.parse("$baseUrl/auth/logout");
  final Uri sendEmailCode = Uri.parse("$baseUrl/auth/sendEmailCode");
  final Uri sendSmsCode = Uri.parse("$baseUrl/auth/sendSmsCode");
  final Uri signupByEmail = Uri.parse("$baseUrl/auth/signupByEmail");
  final Uri signupByMobile = Uri.parse("$baseUrl/auth/signupByMobile");

  /////////////////////////////////////Award Controller////////////////////////////////
  final Uri awardCreate = Uri.parse("$baseUrl/award");

  /////////////////////////////////////User Controller////////////////////////////////

  final Uri getIncentives = Uri.parse("$baseUrl/user/getIncentives");
  final Uri me = Uri.parse("$baseUrl/user/me");
  final Uri query = Uri.parse("$baseUrl/user/query");
  final Uri sendForgetPasswordCodeByEmail =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByEmail");
  final Uri sendForgetPasswordCodeByMobile =
      Uri.parse("$baseUrl/user/sendForgetPasswordCodeByMobile");
  final Uri updateCreditCardDebtInformation =
      Uri.parse("$baseUrl/user/updateCreditCardDebtInformation");
  final Uri updateFinancialInformation =
      Uri.parse("$baseUrl/user/updateFinancialInformation");
  final Uri updateLoanInformation =
      Uri.parse("$baseUrl/user/updateLoanInformation");
  final Uri updateMortgageInformation =
      Uri.parse("$baseUrl/user/updateMortgageInformation");
  final Uri updatePassword = Uri.parse("$baseUrl/user/updatePassword");
  final Uri updatePasswordByEmailCode =
      Uri.parse("$baseUrl/user/updatePasswordByEmailCode");
  final Uri updatePasswordByMobileCode =
      Uri.parse("$baseUrl/user/updatePasswordByMobileCode");
  final Uri updateProfile = Uri.parse("$baseUrl/user/updateProfile");
  final Uri updateResidentialInformation =
      Uri.parse("$baseUrl/user/updateResidentialInformation");
  final Uri updateWorkInformation =
      Uri.parse("$baseUrl/user/updateWorkInformation");
  final Uri verifyEmail = Uri.parse("$baseUrl/user/verifyEmail");
  final Uri verifyMobile = Uri.parse("$baseUrl/user/verifyMobile");
}
