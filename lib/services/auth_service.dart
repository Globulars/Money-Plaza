import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../ui/common/app_url.dart';

class AuthService {
  final ApiUrl _apiUrl = ApiUrl();
  sendEmailCode(email, type) async {
    try {
      final response = await http.post(_apiUrl.sendEmailCode,
          body: jsonEncode(
              {"email": "mudassirmukhtar4@gmail.com", "type": "signup"}),
          headers: {
            "Accept": "application/json",
            "content-type": "application/json"
          });
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      }
    } catch (e) {
      return e;
    }
  }

  signupByEmail() async {
    Map<String, dynamic> body = {
      "code": "string",
      "email": "string",
      "firstName": "string",
      "interestProducts": ["string"],
      "knownChannel": "string",
      "lastName": "string",
      "password": "string",
      "receiveNews": true
    };
    final response = await http.post(
        Uri.parse("https://api.moneyplaza.site/auth/signupByEmail"),
        body: body);
    if (response.statusCode == 200) {
      log(response.body);
    }
  }
}
