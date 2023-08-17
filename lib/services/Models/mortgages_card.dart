class MortgagesCard {
  String? advantage;
  String? advantageCht;
  double? allowance;
  String? applyButtonAction;
  String? applyLink;
  String? banner;
  String? bannerLink;
  String? calculateMethod;
  Company? company;
  int? companyId;
  String? createDate;
  bool? customRate;
  String? detail;
  String? detailCht;
  String? detailTitle;
  String? detailTitleCht;
  String? displayColumn;
  List<String>? displayColumns;
  int? dti;
  bool? earlyRepaymentPenalty;
  String? feature;
  List<String>? features;
  int? id;
  String? incentive;
  String? incentiveCht;
  double? interestRate;
  double? latePaymentFee;
  int? likeCount;
  int? ltvRatio;
  double? maxAmount;
  int? maxTenor;
  double? minAmount;
  double? minPayAbsolute;
  double? minPayInterest;
  double? minPaymentAmount;
  String? minPaymentAmountStr;
  int? minTenor;
  double? minimumMonthlyIncome;
  int? ordering;
  int? penaltyInterestPeriod;
  double? primeRate;
  String? propertyType;
  List<String>? propertyTypes;
  String? publishDate;
  double? rebateRate;
  String? referralCode;
  String? shareMsg;
  String? shareMsgCht;
  bool? showBanner;
  String? signBannerUrl;
  bool? status;
  String? summary;
  String? summaryCht;
  String? totalRebate;
  String? type;
  String? updateDate;
  String? vendorEmail;

  MortgagesCard(
      {this.advantage,
      this.advantageCht,
      this.allowance,
      this.applyButtonAction,
      this.applyLink,
      this.banner,
      this.bannerLink,
      this.calculateMethod,
      this.company,
      this.companyId,
      this.createDate,
      this.customRate,
      this.detail,
      this.detailCht,
      this.detailTitle,
      this.detailTitleCht,
      this.displayColumn,
      this.displayColumns,
      this.dti,
      this.earlyRepaymentPenalty,
      this.feature,
      this.features,
      this.id,
      this.incentive,
      this.incentiveCht,
      this.interestRate,
      this.latePaymentFee,
      this.likeCount,
      this.ltvRatio,
      this.maxAmount,
      this.maxTenor,
      this.minAmount,
      this.minPayAbsolute,
      this.minPayInterest,
      this.minPaymentAmount,
      this.minPaymentAmountStr,
      this.minTenor,
      this.minimumMonthlyIncome,
      this.ordering,
      this.penaltyInterestPeriod,
      this.primeRate,
      this.propertyType,
      this.propertyTypes,
      this.publishDate,
      this.rebateRate,
      this.referralCode,
      this.shareMsg,
      this.shareMsgCht,
      this.showBanner,
      this.signBannerUrl,
      this.status,
      this.summary,
      this.summaryCht,
      this.totalRebate,
      this.type,
      this.updateDate,
      this.vendorEmail});

  MortgagesCard.fromJson(Map<String, dynamic> json) {
    advantage = json['advantage'];
    advantageCht = json['advantageCht'];
    allowance = json['allowance'];
    applyButtonAction = json['applyButtonAction'];
    applyLink = json['applyLink'];
    banner = json['banner'];
    bannerLink = json['bannerLink'];
    calculateMethod = json['calculateMethod'];
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    companyId = json['companyId'];
    createDate = json['createDate'];
    customRate = json['customRate'];
    detail = json['detail'];
    detailCht = json['detailCht'];
    detailTitle = json['detailTitle'];
    detailTitleCht = json['detailTitleCht'];
    displayColumn = json['displayColumn'];
    displayColumns = json['displayColumns'].cast<String>();
    dti = json['dti'];
    earlyRepaymentPenalty = json['earlyRepaymentPenalty'];
    feature = json['feature'];
    features = json['features'].cast<String>();
    id = json['id'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
    interestRate = json['interestRate'];
    latePaymentFee = json['latePaymentFee'];
    likeCount = json['likeCount'];
    ltvRatio = json['ltvRatio'];
    maxAmount = json['maxAmount'];
    maxTenor = json['maxTenor'];
    minAmount = json['minAmount'];
    minPayAbsolute = json['minPayAbsolute'];
    minPayInterest = json['minPayInterest'];
    minPaymentAmount = json['minPaymentAmount'];
    minPaymentAmountStr = json['minPaymentAmountStr'];
    minTenor = json['minTenor'];
    minimumMonthlyIncome = json['minimumMonthlyIncome'];
    ordering = json['ordering'];
    penaltyInterestPeriod = json['penaltyInterestPeriod'];
    primeRate = json['primeRate'];
    propertyType = json['propertyType'];
    propertyTypes = json['propertyTypes'].cast<String>();
    publishDate = json['publishDate'];
    rebateRate = json['rebateRate'];
    referralCode = json['referralCode'];
    shareMsg = json['shareMsg'];
    shareMsgCht = json['shareMsgCht'];
    showBanner = json['showBanner'];
    signBannerUrl = json['signBannerUrl'];
    status = json['status'];
    summary = json['summary'];
    summaryCht = json['summaryCht'];
    totalRebate = json['totalRebate'];
    type = json['type'];
    updateDate = json['updateDate'];
    vendorEmail = json['vendorEmail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['advantage'] = this.advantage;
    data['advantageCht'] = this.advantageCht;
    data['allowance'] = this.allowance;
    data['applyButtonAction'] = this.applyButtonAction;
    data['applyLink'] = this.applyLink;
    data['banner'] = this.banner;
    data['bannerLink'] = this.bannerLink;
    data['calculateMethod'] = this.calculateMethod;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    data['companyId'] = this.companyId;
    data['createDate'] = this.createDate;
    data['customRate'] = this.customRate;
    data['detail'] = this.detail;
    data['detailCht'] = this.detailCht;
    data['detailTitle'] = this.detailTitle;
    data['detailTitleCht'] = this.detailTitleCht;
    data['displayColumn'] = this.displayColumn;
    data['displayColumns'] = this.displayColumns;
    data['dti'] = this.dti;
    data['earlyRepaymentPenalty'] = this.earlyRepaymentPenalty;
    data['feature'] = this.feature;
    data['features'] = this.features;
    data['id'] = this.id;
    data['incentive'] = this.incentive;
    data['incentiveCht'] = this.incentiveCht;
    data['interestRate'] = this.interestRate;
    data['latePaymentFee'] = this.latePaymentFee;
    data['likeCount'] = this.likeCount;
    data['ltvRatio'] = this.ltvRatio;
    data['maxAmount'] = this.maxAmount;
    data['maxTenor'] = this.maxTenor;
    data['minAmount'] = this.minAmount;
    data['minPayAbsolute'] = this.minPayAbsolute;
    data['minPayInterest'] = this.minPayInterest;
    data['minPaymentAmount'] = this.minPaymentAmount;
    data['minPaymentAmountStr'] = this.minPaymentAmountStr;
    data['minTenor'] = this.minTenor;
    data['minimumMonthlyIncome'] = this.minimumMonthlyIncome;
    data['ordering'] = this.ordering;
    data['penaltyInterestPeriod'] = this.penaltyInterestPeriod;
    data['primeRate'] = this.primeRate;
    data['propertyType'] = this.propertyType;
    data['propertyTypes'] = this.propertyTypes;
    data['publishDate'] = this.publishDate;
    data['rebateRate'] = this.rebateRate;
    data['referralCode'] = this.referralCode;
    data['shareMsg'] = this.shareMsg;
    data['shareMsgCht'] = this.shareMsgCht;
    data['showBanner'] = this.showBanner;
    data['signBannerUrl'] = this.signBannerUrl;
    data['status'] = this.status;
    data['summary'] = this.summary;
    data['summaryCht'] = this.summaryCht;
    data['totalRebate'] = this.totalRebate;
    data['type'] = this.type;
    data['updateDate'] = this.updateDate;
    data['vendorEmail'] = this.vendorEmail;
    return data;
  }
}

class Company {
  int? accountOrdering;
  bool? bank;
  int? cardOrdering;
  String? createDate;
  int? id;
  int? insuranceOrdering;
  String? licenseNo;
  int? loanOrdering;
  String? logo;
  int? mortgageOrdering;
  String? name;
  String? nameCht;
  int? ordering;
  String? signLogoUrl;
  String? updateDate;

  Company(
      {this.accountOrdering,
      this.bank,
      this.cardOrdering,
      this.createDate,
      this.id,
      this.insuranceOrdering,
      this.licenseNo,
      this.loanOrdering,
      this.logo,
      this.mortgageOrdering,
      this.name,
      this.nameCht,
      this.ordering,
      this.signLogoUrl,
      this.updateDate});

  Company.fromJson(Map<String, dynamic> json) {
    accountOrdering = json['accountOrdering'];
    bank = json['bank'];
    cardOrdering = json['cardOrdering'];
    createDate = json['createDate'];
    id = json['id'];
    insuranceOrdering = json['insuranceOrdering'];
    licenseNo = json['licenseNo'];
    loanOrdering = json['loanOrdering'];
    logo = json['logo'];
    mortgageOrdering = json['mortgageOrdering'];
    name = json['name'];
    nameCht = json['nameCht'];
    ordering = json['ordering'];
    signLogoUrl = json['signLogoUrl'];
    updateDate = json['updateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountOrdering'] = this.accountOrdering;
    data['bank'] = this.bank;
    data['cardOrdering'] = this.cardOrdering;
    data['createDate'] = this.createDate;
    data['id'] = this.id;
    data['insuranceOrdering'] = this.insuranceOrdering;
    data['licenseNo'] = this.licenseNo;
    data['loanOrdering'] = this.loanOrdering;
    data['logo'] = this.logo;
    data['mortgageOrdering'] = this.mortgageOrdering;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['ordering'] = this.ordering;
    data['signLogoUrl'] = this.signLogoUrl;
    data['updateDate'] = this.updateDate;
    return data;
  }
}
