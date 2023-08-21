class LoanCard {
  int? id;
  int? companyId;
  Company? company;
  String? type;
  bool? invoiceFinancing;
  String? displayColumn;
  double? monthlyInterestRate;
  double? apr;
  double? interestRate;
  double? minInterestRate;
  double? maxInterestRate;
  double? latePaymentFee;
  double? minPayInterest;
  double? minPayAbsolute;
  String? advantage;
  String? advantageCht;
  String? feature;
  String? summary;
  String? summaryCht;
  String? banner;
  String? detailTitle;
  String? detailTitleCht;
  String? detail;
  String? detailCht;
  String? shareMsg;
  String? shareMsgCht;
  int? likeCount;
  String? applyLink;
  String? applyLinkCht;
  int? ordering;
  bool? showBanner;
  bool? status;
  bool? checkTu;
  String? tuLevel;
  bool? earlyRepaymentPenalty;
  String? calculateMethod;
  String? repaymentCalculateMethod;
  String? applyButtonAction;
  int? invoiceFinancingMinDays;
  int? invoiceFinancingMaxDays;
  int? minTenor;
  int? maxTenor;
  double? minAmount;
  double? maxAmount;
  double? maxDsr;
  double? maxMue;
  double? minIncome;
  bool? pol;
  bool? thirdParty;
  int? prefer;
  String? incentive;
  String? incentiveCht;
  String? previewToken;
  String? updateDate;
  String? createDate;
  double? maxAvailableLoanAmount;
  int? maxAvailableLoanAmountTenor;
  String? scheduledPaymentAmount;
  String? totalPaymentAmount;
  List<String>? features;
  List<String>? displayColumns;
  bool? monthlyFlatRate;
  bool? interestRateOnly;
  bool? pureApr;
  String? aprStr;
  bool? customRate;

  LoanCard(
      {this.id,
      this.companyId,
      this.company,
      this.type,
      this.invoiceFinancing,
      this.displayColumn,
      this.monthlyInterestRate,
      this.apr,
      this.interestRate,
      this.minInterestRate,
      this.maxInterestRate,
      this.latePaymentFee,
      this.minPayInterest,
      this.minPayAbsolute,
      this.advantage,
      this.advantageCht,
      this.feature,
      this.summary,
      this.summaryCht,
      this.banner,
      this.detailTitle,
      this.detailTitleCht,
      this.detail,
      this.detailCht,
      this.shareMsg,
      this.shareMsgCht,
      this.likeCount,
      this.applyLink,
      this.applyLinkCht,
      this.ordering,
      this.showBanner,
      this.status,
      this.checkTu,
      this.tuLevel,
      this.earlyRepaymentPenalty,
      this.calculateMethod,
      this.repaymentCalculateMethod,
      this.applyButtonAction,
      this.invoiceFinancingMinDays,
      this.invoiceFinancingMaxDays,
      this.minTenor,
      this.maxTenor,
      this.minAmount,
      this.maxAmount,
      this.maxDsr,
      this.maxMue,
      this.minIncome,
      this.pol,
      this.thirdParty,
      this.prefer,
      this.incentive,
      this.incentiveCht,
      this.previewToken,
      this.updateDate,
      this.createDate,
      this.maxAvailableLoanAmount,
      this.maxAvailableLoanAmountTenor,
      this.scheduledPaymentAmount,
      this.totalPaymentAmount,
      this.features,
      this.displayColumns,
      this.monthlyFlatRate,
      this.interestRateOnly,
      this.pureApr,
      this.aprStr,
      this.customRate});

  LoanCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    type = json['type'];
    invoiceFinancing = json['invoiceFinancing'];
    displayColumn = json['displayColumn'];
    monthlyInterestRate = json['monthlyInterestRate'];
    apr = json['apr'];
    interestRate = json['interestRate'];
    minInterestRate = json['minInterestRate'];
    maxInterestRate = json['maxInterestRate'];
    latePaymentFee = json['latePaymentFee'];
    minPayInterest = json['minPayInterest'];
    minPayAbsolute = json['minPayAbsolute'];
    advantage = json['advantage'];
    advantageCht = json['advantageCht'];
    feature = json['feature'];
    summary = json['summary'];
    summaryCht = json['summaryCht'];
    banner = json['banner'];
    detailTitle = json['detailTitle'];
    detailTitleCht = json['detailTitleCht'];
    detail = json['detail'];
    detailCht = json['detailCht'];
    shareMsg = json['shareMsg'];
    shareMsgCht = json['shareMsgCht'];
    likeCount = json['likeCount'];
    applyLink = json['applyLink'];
    applyLinkCht = json['applyLinkCht'];
    ordering = json['ordering'];
    showBanner = json['showBanner'];
    status = json['status'];
    checkTu = json['checkTu'];
    tuLevel = json['tuLevel'];
    earlyRepaymentPenalty = json['earlyRepaymentPenalty'];
    calculateMethod = json['calculateMethod'];
    repaymentCalculateMethod = json['repaymentCalculateMethod'];
    applyButtonAction = json['applyButtonAction'];
    invoiceFinancingMinDays = json['invoiceFinancingMinDays'];
    invoiceFinancingMaxDays = json['invoiceFinancingMaxDays'];
    minTenor = json['minTenor'];
    maxTenor = json['maxTenor'];
    minAmount = json['minAmount'];
    maxAmount = json['maxAmount'];
    maxDsr = json['maxDsr'];
    maxMue = json['maxMue'];
    minIncome = json['minIncome'];
    pol = json['pol'];
    thirdParty = json['thirdParty'];
    prefer = json['prefer'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
    previewToken = json['previewToken'];
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    maxAvailableLoanAmount = json['maxAvailableLoanAmount'];
    maxAvailableLoanAmountTenor = json['maxAvailableLoanAmountTenor'];
    scheduledPaymentAmount = json['scheduledPaymentAmount'];
    totalPaymentAmount = json['totalPaymentAmount'];
    features = json['features'].cast<String>();
    displayColumns = json['displayColumns'].cast<String>();
    monthlyFlatRate = json['monthlyFlatRate'];
    interestRateOnly = json['interestRateOnly'];
    pureApr = json['pureApr'];
    aprStr = json['aprStr'];
    customRate = json['customRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['companyId'] = this.companyId;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    data['type'] = this.type;
    data['invoiceFinancing'] = this.invoiceFinancing;
    data['displayColumn'] = this.displayColumn;
    data['monthlyInterestRate'] = this.monthlyInterestRate;
    data['apr'] = this.apr;
    data['interestRate'] = this.interestRate;
    data['minInterestRate'] = this.minInterestRate;
    data['maxInterestRate'] = this.maxInterestRate;
    data['latePaymentFee'] = this.latePaymentFee;
    data['minPayInterest'] = this.minPayInterest;
    data['minPayAbsolute'] = this.minPayAbsolute;
    data['advantage'] = this.advantage;
    data['advantageCht'] = this.advantageCht;
    data['feature'] = this.feature;
    data['summary'] = this.summary;
    data['summaryCht'] = this.summaryCht;
    data['banner'] = this.banner;
    data['detailTitle'] = this.detailTitle;
    data['detailTitleCht'] = this.detailTitleCht;
    data['detail'] = this.detail;
    data['detailCht'] = this.detailCht;
    data['shareMsg'] = this.shareMsg;
    data['shareMsgCht'] = this.shareMsgCht;
    data['likeCount'] = this.likeCount;
    data['applyLink'] = this.applyLink;
    data['applyLinkCht'] = this.applyLinkCht;
    data['ordering'] = this.ordering;
    data['showBanner'] = this.showBanner;
    data['status'] = this.status;
    data['checkTu'] = this.checkTu;
    data['tuLevel'] = this.tuLevel;
    data['earlyRepaymentPenalty'] = this.earlyRepaymentPenalty;
    data['calculateMethod'] = this.calculateMethod;
    data['repaymentCalculateMethod'] = this.repaymentCalculateMethod;
    data['applyButtonAction'] = this.applyButtonAction;
    data['invoiceFinancingMinDays'] = this.invoiceFinancingMinDays;
    data['invoiceFinancingMaxDays'] = this.invoiceFinancingMaxDays;
    data['minTenor'] = this.minTenor;
    data['maxTenor'] = this.maxTenor;
    data['minAmount'] = this.minAmount;
    data['maxAmount'] = this.maxAmount;
    data['maxDsr'] = this.maxDsr;
    data['maxMue'] = this.maxMue;
    data['minIncome'] = this.minIncome;
    data['pol'] = this.pol;
    data['thirdParty'] = this.thirdParty;
    data['prefer'] = this.prefer;
    data['incentive'] = this.incentive;
    data['incentiveCht'] = this.incentiveCht;
    data['previewToken'] = this.previewToken;
    data['updateDate'] = this.updateDate;
    data['createDate'] = this.createDate;
    data['maxAvailableLoanAmount'] = this.maxAvailableLoanAmount;
    data['maxAvailableLoanAmountTenor'] = this.maxAvailableLoanAmountTenor;
    data['scheduledPaymentAmount'] = this.scheduledPaymentAmount;
    data['totalPaymentAmount'] = this.totalPaymentAmount;
    data['features'] = this.features;
    data['displayColumns'] = this.displayColumns;
    data['monthlyFlatRate'] = this.monthlyFlatRate;
    data['interestRateOnly'] = this.interestRateOnly;
    data['pureApr'] = this.pureApr;
    data['aprStr'] = this.aprStr;
    data['customRate'] = this.customRate;
    return data;
  }
}

class Company {
  int? id;
  String? logo;
  String? name;
  String? nameCht;
  String? licenseNo;
  bool? bank;
  int? ordering;
  int? loanOrdering;
  int? cardOrdering;
  int? mortgageOrdering;
  int? accountOrdering;
  int? insuranceOrdering;
  String? updateDate;
  String? createDate;
  String? signLogoUrl;

  Company(
      {this.id,
      this.logo,
      this.name,
      this.nameCht,
      this.licenseNo,
      this.bank,
      this.ordering,
      this.loanOrdering,
      this.cardOrdering,
      this.mortgageOrdering,
      this.accountOrdering,
      this.insuranceOrdering,
      this.updateDate,
      this.createDate,
      this.signLogoUrl});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logo = json['logo'];
    name = json['name'];
    nameCht = json['nameCht'];
    licenseNo = json['licenseNo'];
    bank = json['bank'];
    ordering = json['ordering'];
    loanOrdering = json['loanOrdering'];
    cardOrdering = json['cardOrdering'];
    mortgageOrdering = json['mortgageOrdering'];
    accountOrdering = json['accountOrdering'];
    insuranceOrdering = json['insuranceOrdering'];
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    signLogoUrl = json['signLogoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logo'] = this.logo;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['licenseNo'] = this.licenseNo;
    data['bank'] = this.bank;
    data['ordering'] = this.ordering;
    data['loanOrdering'] = this.loanOrdering;
    data['cardOrdering'] = this.cardOrdering;
    data['mortgageOrdering'] = this.mortgageOrdering;
    data['accountOrdering'] = this.accountOrdering;
    data['insuranceOrdering'] = this.insuranceOrdering;
    data['updateDate'] = this.updateDate;
    data['createDate'] = this.createDate;
    data['signLogoUrl'] = this.signLogoUrl;
    return data;
  }
}