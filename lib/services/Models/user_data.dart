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
        loanInformations!.add(new LoanInformations.fromJson(v));
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['emailVerified'] = this.emailVerified;
    data['mobileVerified'] = this.mobileVerified;
    data['knowChannel'] = this.knowChannel;
    if (this.loanInformations != null) {
      data['loanInformations'] =
          this.loanInformations!.map((v) => v.toJson()).toList();
    }
    data['hasBankruptcy'] = this.hasBankruptcy;
    data['hasIva'] = this.hasIva;
    data['hasLateRepayment'] = this.hasLateRepayment;
    data['hasTax'] = this.hasTax;
    data['hasTu'] = this.hasTu;
    data['status'] = this.status;
    data['receiveNews'] = this.receiveNews;
    data['interestProducts'] = this.interestProducts;
    data['updateDate'] = this.updateDate;
    data['createDate'] = this.createDate;
    data['hasPassword'] = this.hasPassword;
    data['totalMonthlyRepayment'] = this.totalMonthlyRepayment;
    data['totalLoanAmount'] = this.totalLoanAmount;
    return data;
  }
}

class LoanInformations {
  String? lender;
  String? calculateMethod;
  int? amount;
  int? tenor;
  int? remainingTenor;
  int? monthlyRepayment;
  double? interestRate;
  int? totalInterestAmount;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lender'] = this.lender;
    data['calculateMethod'] = this.calculateMethod;
    data['amount'] = this.amount;
    data['tenor'] = this.tenor;
    data['remainingTenor'] = this.remainingTenor;
    data['monthlyRepayment'] = this.monthlyRepayment;
    data['interestRate'] = this.interestRate;
    data['totalInterestAmount'] = this.totalInterestAmount;
    data['totalRemainingAmount'] = this.totalRemainingAmount;
    return data;
  }
}