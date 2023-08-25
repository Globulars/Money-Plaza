import 'dart:convert';
import 'dart:developer';
import '../ui/common/app_url.dart';
import 'package:http/http.dart' as http;

class LoanCardService {
  final ApiUrl _apiUrl = ApiUrl();
  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json;charset=UTF-8"
  };

  /////////////////////////////////////Card List////////////////////////////////
  loanlist(body) async {
    try {
      final response = await http.post(_apiUrl.loanList,
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

  /////////////////////////////////////Card List////////////////////////////////
  loanMatch(body) async {
    try {
      final response = await http.post(_apiUrl.loanMatch,
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

  /////////////////////////////////////Get Loan Tags////////////////////////////////
  getLoanTags() async {
    try {
      final response = await http.get(_apiUrl.getLoanTags, headers: headers);
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

  /////////////////////////////////////Schedule By PLoan For Repayment////////////////////////////////
  scheduleByPLoanForRepayment(body) async {
    try {
      final response = await http.post(_apiUrl.scheduleByPLoanForRepayment,
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

  /////////////////////////////////////Lone Survey Form////////////////////////////////
  personeLoneSurveyform(body) async {
    try {
      final response = await http.post(_apiUrl.personeLoneSurveyform,
          body: jsonEncode(body), headers: headers);
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

  /////////////////////////////////////ownerLone Survey Form////////////////////////////////
  ownerLoneSurveyform(body) async {
    try {
      final response = await http.post(_apiUrl.ownerLoneSurveyform,
          body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return data;
      } else if (response.statusCode == 302) {
        return {"message": "Successful Submittion", "success": true};
      } else {
        log(response.body.toString());
        return {"message": "${response.statusCode} error found"};
      }
    } catch (e) {
      return {"message": e};
    }
  }
}
