import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/Models/credit_card.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.dialogs.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/api_helper_service.dart';
import '../../../../services/toaster_service.dart';

class CreditResultViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _apiHelperService = locator<ApiHelperService>();
  final _toasterService = locator<ToasterService>();
  final ApiUrl _apiUrl = ApiUrl();

  String creditError = "";
  List<CreditCard> creditCardList = [];
  void showCreditFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.creditCardFilter,
    );
  }

  navigateToSurveySplashView() {
    _navigationService.navigateToSurveySplashView(
        organization: "DBS Bank (Hong Kong)+Personal Card");
  }

  Future<List<CreditCard>> cardListData(
      issuersList, typesList, annualIncome, financialInstitutesList) async {
    setBusy(true);
    Map<String, dynamic> body = {
      "companyIds": financialInstitutesList,
      // "features": ["string"],
      // "id": 0,
      // "ids": [0],
      // "income": annualIncome,
      "issuers": issuersList,
      // "keyword": "string",
      // "limit": 50,
      "order": "ascending",
      // "previewToken": "string",
      // "publishDate": "yyyy-MM-dd HH:mm:ss",
      // "sort": "string",
      "status": true,
      "types": typesList
    };
    var data = await _apiHelperService.postApi(_apiUrl.cardList, body);
    if (data?["success"] == true) {
      List dataList = data["data"]["records"];
      creditCardList =
          dataList.map((data) => CreditCard.fromJson(data)).toList();
      notifyListeners();
      setBusy(false);
      return creditCardList;
    } else {
      _toasterService.errorToast(data["message"].toString());
      setBusy(false);
      return creditCardList;
    }
  }

  // submitSurveyForm() async {
  //   var data = await _creditCardService.submitSurveyForm();
  //   if (data["success"] == true) {
  //     _toasterService.successToast(data["message"]);
  //     _navigationService.back();
  //   } else {
  //     _toasterService.errorToast(data["message"].toString());
  //   }
  // }
}
