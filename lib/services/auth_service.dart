import 'dart:convert';
import 'package:http/http.dart' as http;
import '../ui/common/app_url.dart';

class AuthService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  /////////////////////////////////////By Email////////////////////////////////
  sendEmailCode(body) async {
    try {
      final response = await http.post(_apiUrl.sendEmailCode,
          body: jsonEncode(body), headers: headers);
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

  signupByEmail(body) async {
    try {
      final response = await http.post(_apiUrl.signupByEmail,
          body: jsonEncode(body), headers: headers);
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
  /////////////////////////////////////Login////////////////////////////////

  login(body) async {
    try {
      final response = await http.post(_apiUrl.login,
          body: jsonEncode(body), headers: headers);
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
  /////////////////////////////////////By Mobile Number////////////////////////////////

  sendSmsCode(body) async {
    try {
      final response = await http.post(_apiUrl.sendSmsCode,
          body: jsonEncode(body), headers: headers);
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

  signupByMobile(body) async {
    try {
      final response = await http.post(_apiUrl.signupByMobile,
          body: jsonEncode(body), headers: headers);
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

  /////////////////////////////////////Forget By Email////////////////////////////////
  sendForgetPasswordCodeByEmail(body) async {
    try {
      final response = await http.post(_apiUrl.sendForgetPasswordCodeByEmail,
          body: jsonEncode(body), headers: headers);
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

  updatePasswordByEmailCode(body) async {
    try {
      final response = await http.post(_apiUrl.updatePasswordByEmailCode,
          body: jsonEncode(body), headers: headers);
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

  /////////////////////////////////////Forget By Mobile Number////////////////////////////////

  sendForgetPasswordCodeByMobile(body) async {
    try {
      final response = await http.post(_apiUrl.sendForgetPasswordCodeByMobile,
          body: jsonEncode(body), headers: headers);
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

  updatePasswordByMobileCode(body) async {
    try {
      final response = await http.post(_apiUrl.updatePasswordByMobileCode,
          body: jsonEncode(body), headers: headers);
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
