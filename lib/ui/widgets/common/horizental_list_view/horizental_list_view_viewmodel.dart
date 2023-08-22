import 'dart:developer';

import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../services/Models/loan_tags.dart';
import '../../../../services/loan_card_service.dart';

class HorizentalListViewViewModel extends BaseViewModel {
  final _loanCardService = locator<LoanCardService>();

  Future<List<LoanTags>> getLoanTags() async {
    var data = await _loanCardService.getLoanTags();
    if (data?["success"] == true) {
      List dataList = data["data"];
      log("===>${dataList.length}");
      List<LoanTags> loanCardList =
          dataList.map((data) => LoanTags.fromJson(data)).toList();
      return loanCardList;
    } else {
      log(data["message"].toString());
      throw Exception(data["message"].toString());
    }
  }
}
