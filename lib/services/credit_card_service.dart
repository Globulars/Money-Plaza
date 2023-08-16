import 'dart:convert';
import '../ui/common/app_url.dart';
import 'package:http/http.dart' as http;

class CreditCardService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json;charset=UTF-8"
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
    http.Response response = await http.post(
      Uri.parse(
          "https://admin.moneyplaza.com.hk/surveyform/survey/submit/daa7596e-550e-4e3d-aa4d-0ebac22700eb"),
      body: json.encode(body),
      headers: <String, String>{"Content-Type": "application/json"},
    );
    if (response.statusCode == 200) {
      return (response.body);
    } else if (response.statusCode == 302) {
      return {"message": "Successful Submittion", "success": true};
    } else {
      return {"message": "${response.statusCode} error found"};
    }
  }
}
