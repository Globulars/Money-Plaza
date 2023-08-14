import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import '../ui/common/app_url.dart';
import 'package:http/http.dart' as http;

class CreditCardService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8'
  };
  /////////////////////////////////////Card List////////////////////////////////
  cardList(body) async {
    try {
      final response = await http.post(_apiUrl.cardList,
          body: jsonEncode(body), headers: headers);
          log(response.body.toString());
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

  cardLike(body) async {
    try {
      final response = await http.post(_apiUrl.cardLike,
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
