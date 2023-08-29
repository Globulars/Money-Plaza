import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:money_plaza/app/app.locator.dart';
import 'package:money_plaza/services/auth_service.dart';

class ApiHelperService {
  final AuthService _authnService = locator<AuthService>();
  String? get accessToken => _authnService.authData?.accessToken;

  // final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  /////////////////////////////////////Post////////////////////////////////
  postApi(_url, body) async {
    log(accessToken.toString());
    try {
      final response =
          await http.post(_url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else {
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      return {"message": e};
    }
  } /////////////////////////////////////Post Auth////////////////////////////////

  postAuthApi(_url, body) async {
    try {
      final response = await http.post(_url, body: jsonEncode(body), headers: {
        "Accept": "application/json",
        "content-type": "application/json",
        "Authorization": "Bearer $accessToken"
      });
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else {
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      return {"message": e};
    }
  }

  /////////////////////////////////////Get////////////////////////////////
  getApi(_url) async {
    try {
      final response = await http.get(_url, headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else {
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      return {"message": e};
    }
  }
}
