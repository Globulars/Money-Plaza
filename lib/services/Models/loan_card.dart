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
  bool? checkBox = false;

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
      this.customRate,
      this.checkBox});

  LoanCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['companyId'] = companyId;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    data['type'] = type;
    data['invoiceFinancing'] = invoiceFinancing;
    data['displayColumn'] = displayColumn;
    data['monthlyInterestRate'] = monthlyInterestRate;
    data['apr'] = apr;
    data['interestRate'] = interestRate;
    data['minInterestRate'] = minInterestRate;
    data['maxInterestRate'] = maxInterestRate;
    data['latePaymentFee'] = latePaymentFee;
    data['minPayInterest'] = minPayInterest;
    data['minPayAbsolute'] = minPayAbsolute;
    data['advantage'] = advantage;
    data['advantageCht'] = advantageCht;
    data['feature'] = feature;
    data['summary'] = summary;
    data['summaryCht'] = summaryCht;
    data['banner'] = banner;
    data['detailTitle'] = detailTitle;
    data['detailTitleCht'] = detailTitleCht;
    data['detail'] = detail;
    data['detailCht'] = detailCht;
    data['shareMsg'] = shareMsg;
    data['shareMsgCht'] = shareMsgCht;
    data['likeCount'] = likeCount;
    data['applyLink'] = applyLink;
    data['applyLinkCht'] = applyLinkCht;
    data['ordering'] = ordering;
    data['showBanner'] = showBanner;
    data['status'] = status;
    data['checkTu'] = checkTu;
    data['tuLevel'] = tuLevel;
    data['earlyRepaymentPenalty'] = earlyRepaymentPenalty;
    data['calculateMethod'] = calculateMethod;
    data['repaymentCalculateMethod'] = repaymentCalculateMethod;
    data['applyButtonAction'] = applyButtonAction;
    data['invoiceFinancingMinDays'] = invoiceFinancingMinDays;
    data['invoiceFinancingMaxDays'] = invoiceFinancingMaxDays;
    data['minTenor'] = minTenor;
    data['maxTenor'] = maxTenor;
    data['minAmount'] = minAmount;
    data['maxAmount'] = maxAmount;
    data['maxDsr'] = maxDsr;
    data['maxMue'] = maxMue;
    data['minIncome'] = minIncome;
    data['pol'] = pol;
    data['thirdParty'] = thirdParty;
    data['prefer'] = prefer;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    data['previewToken'] = previewToken;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['maxAvailableLoanAmount'] = maxAvailableLoanAmount;
    data['maxAvailableLoanAmountTenor'] = maxAvailableLoanAmountTenor;
    data['scheduledPaymentAmount'] = scheduledPaymentAmount;
    data['totalPaymentAmount'] = totalPaymentAmount;
    data['features'] = features;
    data['displayColumns'] = displayColumns;
    data['monthlyFlatRate'] = monthlyFlatRate;
    data['interestRateOnly'] = interestRateOnly;
    data['pureApr'] = pureApr;
    data['aprStr'] = aprStr;
    data['customRate'] = customRate;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['logo'] = logo;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['licenseNo'] = licenseNo;
    data['bank'] = bank;
    data['ordering'] = ordering;
    data['loanOrdering'] = loanOrdering;
    data['cardOrdering'] = cardOrdering;
    data['mortgageOrdering'] = mortgageOrdering;
    data['accountOrdering'] = accountOrdering;
    data['insuranceOrdering'] = insuranceOrdering;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['signLogoUrl'] = signLogoUrl;
    return data;
  }
}
