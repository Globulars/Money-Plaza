import 'dart:convert';
import 'package:http/http.dart' as http;
import '../ui/common/app_url.dart';

class MortgageService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };

/////////////////////////////////////mortgages List////////////////////////////////
  mortgagesList(body) async {
    try {
      final response = await http.post(_apiUrl.mortgageList,
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

  /////////////////////////////////////mortgages Like////////////////////////////////

  cardLike(body) async {
    try {
      final response = await http.post(_apiUrl.mortgageLike,
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

  /////////////////////////////////////List of banks////////////////////////////////
  ///

  getCompaniesByType() async {
    try {
      final response = await http.get(_apiUrl.getCompaniesByType,
          headers: headers);
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
