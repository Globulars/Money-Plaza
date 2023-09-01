class UserData {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  bool? emailVerified;
  bool? mobileVerified;
  String? knowChannel;
  List<LoanInformations>? loanInformations;
  bool? hasBankruptcy;
  bool? hasIva;
  bool? hasLateRepayment;
  bool? hasTax;
  bool? hasTu;
  bool? status;
  bool? receiveNews;
  List<String>? interestProducts;
  String? updateDate;
  String? createDate;
  bool? hasPassword;
  String? totalMonthlyRepayment;
  String? totalLoanAmount;

  UserData(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.emailVerified,
      this.mobileVerified,
      this.knowChannel,
      this.loanInformations,
      this.hasBankruptcy,
      this.hasIva,
      this.hasLateRepayment,
      this.hasTax,
      this.hasTu,
      this.status,
      this.receiveNews,
      this.interestProducts,
      this.updateDate,
      this.createDate,
      this.hasPassword,
      this.totalMonthlyRepayment,
      this.totalLoanAmount});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    emailVerified = json['emailVerified'];
    mobileVerified = json['mobileVerified'];
    knowChannel = json['knowChannel'];
    if (json['loanInformations'] != null) {
      loanInformations = <LoanInformations>[];
      json['loanInformations'].forEach((v) {
        loanInformations!.add(LoanInformations.fromJson(v));
      });
    }
    hasBankruptcy = json['hasBankruptcy'];
    hasIva = json['hasIva'];
    hasLateRepayment = json['hasLateRepayment'];
    hasTax = json['hasTax'];
    hasTu = json['hasTu'];
    status = json['status'];
    receiveNews = json['receiveNews'];
    interestProducts = json['interestProducts'].cast<String>();
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    hasPassword = json['hasPassword'];
    totalMonthlyRepayment = json['totalMonthlyRepayment'];
    totalLoanAmount = json['totalLoanAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['emailVerified'] = emailVerified;
    data['mobileVerified'] = mobileVerified;
    data['knowChannel'] = knowChannel;
    if (loanInformations != null) {
      data['loanInformations'] =
          loanInformations!.map((v) => v.toJson()).toList();
    }
    data['hasBankruptcy'] = hasBankruptcy;
    data['hasIva'] = hasIva;
    data['hasLateRepayment'] = hasLateRepayment;
    data['hasTax'] = hasTax;
    data['hasTu'] = hasTu;
    data['status'] = status;
    data['receiveNews'] = receiveNews;
    data['interestProducts'] = interestProducts;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['hasPassword'] = hasPassword;
    data['totalMonthlyRepayment'] = totalMonthlyRepayment;
    data['totalLoanAmount'] = totalLoanAmount;
    return data;
  }
}

class LoanInformations {
  String? lender;
  String? calculateMethod;
  double? amount;
  int? tenor;
  int? remainingTenor;
  double? monthlyRepayment;
  double? interestRate;
  double? totalInterestAmount;
  double? totalRemainingAmount;

  LoanInformations(
      {this.lender,
      this.calculateMethod,
      this.amount,
      this.tenor,
      this.remainingTenor,
      this.monthlyRepayment,
      this.interestRate,
      this.totalInterestAmount,
      this.totalRemainingAmount});

  LoanInformations.fromJson(Map<String, dynamic> json) {
    lender = json['lender'];
    calculateMethod = json['calculateMethod'];
    amount = json['amount'];
    tenor = json['tenor'];
    remainingTenor = json['remainingTenor'];
    monthlyRepayment = json['monthlyRepayment'];
    interestRate = json['interestRate'];
    totalInterestAmount = json['totalInterestAmount'];
    totalRemainingAmount = json['totalRemainingAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lender'] = lender;
    data['calculateMethod'] = calculateMethod;
    data['amount'] = amount;
    data['tenor'] = tenor;
    data['remainingTenor'] = remainingTenor;
    data['monthlyRepayment'] = monthlyRepayment;
    data['interestRate'] = interestRate;
    data['totalInterestAmount'] = totalInterestAmount;
    data['totalRemainingAmount'] = totalRemainingAmount;
    return data;
  }
}
