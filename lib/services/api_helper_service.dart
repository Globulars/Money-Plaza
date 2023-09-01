// ignore_for_file: void_checks, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:money_plaza/app/app.locator.dart';
import 'package:money_plaza/services/auth_service.dart';

class ApiHelperService {
  final AuthService _authnService = locator<AuthService>();
  String? get accessToken => _authnService.authData?.accessToken;
  String? imagePath;
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
  }
  /////////////////////////////////////Post Auth////////////////////////////////

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

  /////////////////////////////////////Post Auth////////////////////////////////

  getAuthApi(_url) async {
    try {
      final response = await http.get(_url, headers: {
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
  /////////////////////////////////////Upload Image////////////////////////////////

  uploadImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    imagePath = image!.path;
  }
  /////////////////////////////////////Post Auth////////////////////////////////

  multiPartRequest(_url, _body) async {
    log(_body.toString());
    var data;
    try {
      var request = http.MultipartRequest("POST", _url);
      request.headers.addAll({
        // "Accept": "multipart/form-data",
        "content-type":
            "multipart/form-data; boundary=<calculated when request is sent>",
        "Authorization": "Bearer $accessToken"
      });
      request.fields.addAll(_body);
      request.files.add(http.MultipartFile.fromBytes(
          "files", File(imagePath!).readAsBytesSync(),
          filename: imagePath));
      var response = await request.send();
      if (response.statusCode == 200) {
        // var data = json.decode(response.body);
        log(response.statusCode.toString());
        await response.stream.transform(utf8.decoder).listen((value) {
          log("value: ${value.toString()}");
          data = json.decode(value);
        });
        return data;
      } else {
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      log(e.toString());
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
