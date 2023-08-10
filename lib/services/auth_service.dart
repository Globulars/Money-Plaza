import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../ui/common/app_url.dart';

class AuthService {
  final ApiUrl _apiUrl = ApiUrl();
  sendEmailCode(body) async {
    try {
      final response = await http.post(_apiUrl.sendEmailCode,
          body: jsonEncode(body),
          headers: {
            "Accept": "application/json",
            "content-type": "application/json"
          });
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        log(data.toString());
        return data;
      }
    } catch (e) {
      return {"message": e};
    }
  }

  signupByEmail(body) async {
    try {
      final response = await http.post(_apiUrl.signupByEmail,
          body: jsonEncode(body),
          headers: {
            "Accept": "application/json",
            "content-type": "application/json"
          });
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      }
    } catch (e) {
      return {"message": e};
    }
  }
}
