import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/toaster_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.dialogs.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/Models/mortgages_card.dart';
import '../../../../services/mortgage_service.dart';

class MorgagesResultViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _mortgagesService = locator<MortgageService>();
  final _toasterService = locator<ToasterService>();

  late List<MortgagesCard> mortgagesCard = [];
  bool selectAll = false;
  setSelectAll() {
    selectAll = !selectAll;
    for (var e in mortgagesCard) {
      e.checkBox = selectAll;
    }
    notifyListeners();
  }

  setCardSelect(value, MortgagesCard mortgage) {
    mortgage.checkBox = value;
    notifyListeners();
  }

  void showMorgagesFilter() {
    _dialogService.showCustomDialog(
      variant: DialogType.morgagesFilter,
    );
  }

  navigateToSurveySplashView() {
    _navigationService.navigateToSurveySplashView(
        organization: "HSBC+New Owner / Mortgage Transfer");
  }

  Future<List<MortgagesCard>> mortgagesCardData(
      mortgagesPropertyValuation,
      mortgagesValueRatio,
      mortgagesTenor,
      mortgagesMonthlyIncome,
      mortgageList,
      typePropertyList,
      companyIds) async {
    Map<String, dynamic> body = {
      "types": mortgageList,
      "order": "descending",
      "ltvRatio": mortgagesValueRatio,
      "sort": "ordering",
      "tenor": mortgagesTenor,
      "propertyType": typePropertyList,
      "features": [],
      "companyIds": companyIds,
      "income": mortgagesMonthlyIncome,
      "amount": mortgagesPropertyValuation
    };
    if (mortgagesCard.isEmpty) {
      var data = await _mortgagesService.mortgagesList(body);
      if (data?["success"] == true) {
        List dataList = data["data"]["records"];
        mortgagesCard =
            dataList.map((data) => MortgagesCard.fromJson(data)).toList();

        return mortgagesCard;
      } else {
        _toasterService.errorToast(data["message"].toString());
        throw Exception(data["message"].toString());
      }
    } else {
      return mortgagesCard;
    }
  }
}
