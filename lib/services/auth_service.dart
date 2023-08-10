import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class AuthService {
  sendEmailCode(email, type) async {
    try {
      final response = await http.post(
          Uri.parse("https://api.moneyplaza.site/auth/sendEmailCode"),
          body: jsonEncode(
              {"email": "mudassirmukhtar4@gmail.com", "type": "signup"}),
          headers: {
            "Accept": "application/json",
            "content-type": "application/json"
          });
      log(response.body.toString());
      var data = json.decode(response.body);
      if (response.statusCode == 200) {
        log(response.body);
      } else {
        log("Message======>${data["message"]}");
      }
    } catch (e) {
      log("Error===>$e");
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
