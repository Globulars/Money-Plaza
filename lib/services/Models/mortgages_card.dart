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
  bool? checkBox = false;

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
      this.vendorEmail,
      this.checkBox});

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
        json['company'] != null ? Company.fromJson(json['company']) : null;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['advantage'] = advantage;
    data['advantageCht'] = advantageCht;
    data['allowance'] = allowance;
    data['applyButtonAction'] = applyButtonAction;
    data['applyLink'] = applyLink;
    data['banner'] = banner;
    data['bannerLink'] = bannerLink;
    data['calculateMethod'] = calculateMethod;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    data['companyId'] = companyId;
    data['createDate'] = createDate;
    data['customRate'] = customRate;
    data['detail'] = detail;
    data['detailCht'] = detailCht;
    data['detailTitle'] = detailTitle;
    data['detailTitleCht'] = detailTitleCht;
    data['displayColumn'] = displayColumn;
    data['displayColumns'] = displayColumns;
    data['dti'] = dti;
    data['earlyRepaymentPenalty'] = earlyRepaymentPenalty;
    data['feature'] = feature;
    data['features'] = features;
    data['id'] = id;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    data['interestRate'] = interestRate;
    data['latePaymentFee'] = latePaymentFee;
    data['likeCount'] = likeCount;
    data['ltvRatio'] = ltvRatio;
    data['maxAmount'] = maxAmount;
    data['maxTenor'] = maxTenor;
    data['minAmount'] = minAmount;
    data['minPayAbsolute'] = minPayAbsolute;
    data['minPayInterest'] = minPayInterest;
    data['minPaymentAmount'] = minPaymentAmount;
    data['minPaymentAmountStr'] = minPaymentAmountStr;
    data['minTenor'] = minTenor;
    data['minimumMonthlyIncome'] = minimumMonthlyIncome;
    data['ordering'] = ordering;
    data['penaltyInterestPeriod'] = penaltyInterestPeriod;
    data['primeRate'] = primeRate;
    data['propertyType'] = propertyType;
    data['propertyTypes'] = propertyTypes;
    data['publishDate'] = publishDate;
    data['rebateRate'] = rebateRate;
    data['referralCode'] = referralCode;
    data['shareMsg'] = shareMsg;
    data['shareMsgCht'] = shareMsgCht;
    data['showBanner'] = showBanner;
    data['signBannerUrl'] = signBannerUrl;
    data['status'] = status;
    data['summary'] = summary;
    data['summaryCht'] = summaryCht;
    data['totalRebate'] = totalRebate;
    data['type'] = type;
    data['updateDate'] = updateDate;
    data['vendorEmail'] = vendorEmail;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountOrdering'] = accountOrdering;
    data['bank'] = bank;
    data['cardOrdering'] = cardOrdering;
    data['createDate'] = createDate;
    data['id'] = id;
    data['insuranceOrdering'] = insuranceOrdering;
    data['licenseNo'] = licenseNo;
    data['loanOrdering'] = loanOrdering;
    data['logo'] = logo;
    data['mortgageOrdering'] = mortgageOrdering;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['ordering'] = ordering;
    data['signLogoUrl'] = signLogoUrl;
    data['updateDate'] = updateDate;
    return data;
  }
}
