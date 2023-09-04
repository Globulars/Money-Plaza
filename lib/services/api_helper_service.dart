// ignore_for_file: void_checks, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:money_plaza/services/Models/auth.dart';
import 'package:money_plaza/ui/common/app_url.dart';

class ApiHelperService {
  Auth authData = Auth();
  final ApiUrl _apiUrl = ApiUrl();
  String? get accessToken => authData.accessToken;

  String? imagePath;
  // final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  /////////////////////////////////////Post////////////////////////////////
  postApi(_url, body) async {
    try {
      final response =
          await http.post(_url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else if (response.statusCode == 302) {
        return {"message": "Successful Submittion", "success": true};
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
      } else if (response.statusCode == 302) {
        return {"message": "Successful Submittion", "success": true};
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
        // ignore: await_only_futures
        await response.stream.transform(utf8.decoder).listen((value) {
          data = json.decode(value);
        });
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
  /////////////////////////////////////Login////////////////////////////////

  login(body) async {
    try {
      final response = await http.post(_apiUrl.login,
          body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        authData = Auth.fromJson(data["data"]);
        return data;
      } else {
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      return {"message": e};
    }
  }
}
