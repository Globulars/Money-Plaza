import 'dart:convert';

import '../ui/common/app_url.dart';
import 'package:http/http.dart' as http;

class CreditCardService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  /////////////////////////////////////Card List////////////////////////////////
  cardList(body) async {
    try {
      final response = await http.post(_apiUrl.cardList,
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
  /////////////////////////////////////Card Like////////////////////////////////

  submitSurveyForm(body) async {
    try {
      final response = await http.post(_apiUrl.surveyForm,
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
