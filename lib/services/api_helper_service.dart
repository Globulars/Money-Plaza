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

  uploadImageAndPost(body) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    // File file = File(image!.path);
    // return file;
    return multiPartRequest(image!.path, body);
  }

  multiPartRequest(imagePath, body) async {
    try {
      var request = http.MultipartRequest("POST", Uri.parse("urlInsertImage"));
      request.headers.addAll({
        "Accept": "multipart/form-data",
        "content-type": "multipart/form-data",
        "Authorization": "Bearer $accessToken"
      });
      request.fields.addAll(body);
      request.files.add(http.MultipartFile.fromBytes(
          "files", File(imagePath).readAsBytesSync(),
          filename: imagePath));
      var response = await request.send();
      if (response.statusCode == 200) {
        // var data = json.decode(response.body);
        log(response.statusCode.toString());
        response.stream.transform(utf8.decoder).listen((value) {
          log(value.toString());
        });
        return response;
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
