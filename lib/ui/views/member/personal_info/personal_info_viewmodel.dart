import 'package:flutter/material.dart';
import 'package:money_plaza/app/app.router.dart';
import 'package:money_plaza/services/Models/select_country.dart';
import 'package:money_plaza/ui/common/app_url.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../services/Models/loan_record.dart';
import '../../../../services/Models/user_data.dart';
import '../../../../services/api_helper_service.dart';

class PersonalInfoViewModel extends BaseViewModel {
  final _apiHelperService = locator<ApiHelperService>();
  final _navigationService = locator<NavigationService>();
  final ApiUrl _apiUrl = ApiUrl();
  TextEditingController firstNameCtrl = TextEditingController(text: "Mudassir");
  TextEditingController lastNameCtrl = TextEditingController(text: "Mukhtar");
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController contactNumCtrl = TextEditingController();
  TextEditingController lenderCtrl = TextEditingController();
  TextEditingController outstandingCtrl = TextEditingController();
  TextEditingController tenorCtrl = TextEditingController();
  TextEditingController remainingTenorCtrl = TextEditingController();
  TextEditingController monthlyRepaymentCtrl = TextEditingController();
  TextEditingController monthlyInterestCtrl = TextEditingController();
  TextEditingController penaltyCtrl = TextEditingController();
  TextEditingController totalPrepaidInterestCtrl = TextEditingController();
  TextEditingController minPayCtrl = TextEditingController();
  TextEditingController minPayInDollarCtrl = TextEditingController();

  String dob = "";
  var gender = '';
  var tenorUnit = '';
  String doYouKnow = "Facebook";
  String intersetProduct = "Loans";
  // String typeOfLoan ="Term Loan";
  SelectCountry? countryList;
  LoanRecord? loanRecordList;
  UserData? userData;
  List<SelectCountry> countryDataList = [];
  List<LoanRecord> loanRecordDataList = [];
  //  List<UserData> userDataList = [];
  final doYouKnowList = [
    "Facebook",
    "Search Engine",
    "Friends",
    "Youtube",
    "Instragram",
    "Others"
  ];
  final intersetProductList = [
    "Loans",
    "Mortgages",
    "Credit Cards",
    "Accounts",
    "Insurances"
  ];

  setGender(value) {
    gender = value;
    notifyListeners();
  }

  setTenorUnit(value) {
    tenorUnit = value;
    notifyListeners();
  }

  setDob(value) {
    dob = value;
    notifyListeners();
  }

  setSelectCountry(value) {
    countryList = value;
    notifyListeners();
  }

  setDoYouKnow(value) {
    doYouKnow = value;
    notifyListeners();
  }

  setIntersetProduct(value) {
    intersetProduct = value;
    notifyListeners();
  }

  setLoanRecord(value) {
    loanRecordList = value;
    notifyListeners();
  }

  navigateToLoanRecordView() {
    _navigationService.navigateToLoanRecordView();
  }

  Future<List<SelectCountry>> countryNameListData() async {
    if (countryDataList.isEmpty) {
      var data = await _apiHelperService.getApi(_apiUrl.selectCountries);
      if (data?["success"] == true) {
        List dataList = data["data"];
        countryDataList =
            dataList.map((data) => SelectCountry.fromJson(data)).toList();
        countryList = countryDataList[0];
        notifyListeners();
        return countryDataList;
      } else {
        throw Exception(data["message"].toString());
      }
    } else {
      return countryDataList;
    }
  }

  Future<List<LoanRecord>> loanRecordListData() async {
    if (loanRecordDataList.isEmpty) {
      var data = await _apiHelperService.getApi(_apiUrl.loanRecord);
      if (data?["success"] == true) {
        List dataList = data["data"];
        loanRecordDataList =
            dataList.map((data) => LoanRecord.fromJson(data)).toList();
        loanRecordList = loanRecordDataList[0];
        notifyListeners();
        return loanRecordDataList;
      } else {
        throw Exception(data["message"].toString());
      }
    } else {
      return loanRecordDataList;
    }
  }

  Future<UserData?> getUserData() async {
    var data = await _apiHelperService.getApi(_apiUrl.userDataApi);
    if (data?["success"] == true) {
      userData = UserData.fromJson(data["data"]);
      firstNameCtrl.text = userData?.firstName ?? "";
      lastNameCtrl.text = userData?.lastName ?? "";
      emailCtrl.text = userData?.email ?? "";
      // intersetProduct=userData?.interestProducts
      lenderCtrl.text = userData?.loanInformations?[0].lender ?? "";
      tenorCtrl.text = "${userData?.loanInformations?[0].tenor ?? 0}";
      remainingTenorCtrl.text="${userData?.loanInformations?[0].remainingTenor ?? 0}";
      remainingTenorCtrl.text="${userData?.loanInformations?[0].remainingTenor ?? 0}";

      notifyListeners();
      return userData;
    } else {
      throw Exception(data["message"].toString());
    }
  }
}
