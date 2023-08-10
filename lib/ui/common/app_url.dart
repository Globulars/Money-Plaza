const baseUrl = "https://api.moneyplaza.site";

// authentication url
final Uri login = Uri.parse("$baseUrl/auth/login");
final Uri loginByEmail =Uri.parse("$baseUrl/auth/loginByEmailCode");
final Uri loginByMobile =Uri.parse("$baseUrl/auth/loginByMobileCode");
final Uri logOut =Uri.parse("$baseUrl/auth/logout");
final Uri sendEmailCode =Uri.parse("$baseUrl/auth/sendEmailCode");
final Uri sendSmsCode =Uri.parse("$baseUrl/auth/sendSmsCode");
final Uri signupByEmail =Uri.parse("$baseUrl/auth/signupByEmail");
final Uri signupByMobile =Uri.parse("$baseUrl/auth/signupByMobile");

// award controller url
final Uri awardCreate =Uri.parse("$baseUrl/award");

// 

