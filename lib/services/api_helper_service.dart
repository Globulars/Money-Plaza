import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelperService {
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
