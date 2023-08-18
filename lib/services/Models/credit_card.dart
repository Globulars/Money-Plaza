class CreditCard {
  int? id;
  String? referralCode;
  String? name;
  String? nameCht;
  int? companyId;
  Company? company;
  String? issuer;
  String? type;
  double? minimumAnnualIncome;
  String? advantage;
  String? advantageCht;
  String? summary;
  String? summaryCht;
  String? image;
  String? banner;
  String? bannerLink;
  String? detailTitle;
  String? detailTitleCht;
  String? detail;
  String? detailCht;
  String? shareMsg;
  String? shareMsgCht;
  int? likeCount;
  String? applyLink;
  List<RebateInfo>? rebateInfo;
  int? ordering;
  bool? showBanner;
  bool? status;
  String? incentive;
  String? incentiveCht;
  String? previewToken;
  String? updateDate;
  String? createDate;
  List<String>? features;
  String? signImageUrl;
  List? iconFeatureItems;
  List<TextFeatureItems>? textFeatureItems;

  CreditCard(
      {this.id,
      this.referralCode,
      this.name,
      this.nameCht,
      this.companyId,
      this.company,
      this.issuer,
      this.type,
      this.minimumAnnualIncome,
      this.advantage,
      this.advantageCht,
      this.summary,
      this.summaryCht,
      this.image,
      this.banner,
      this.bannerLink,
      this.detailTitle,
      this.detailTitleCht,
      this.detail,
      this.detailCht,
      this.shareMsg,
      this.shareMsgCht,
      this.likeCount,
      this.applyLink,
      this.rebateInfo,
      this.ordering,
      this.showBanner,
      this.status,
      this.incentive,
      this.incentiveCht,
      this.previewToken,
      this.updateDate,
      this.createDate,
      this.features,
      this.signImageUrl,
      this.iconFeatureItems,
      this.textFeatureItems});

  CreditCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    referralCode = json['referralCode'];
    name = json['name'];
    nameCht = json['nameCht'];
    companyId = json['companyId'];
    company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
    issuer = json['issuer'];
    type = json['type'];
    minimumAnnualIncome = json['minimumAnnualIncome'];
    advantage = json['advantage'];
    advantageCht = json['advantageCht'];
    summary = json['summary'];
    summaryCht = json['summaryCht'];
    image = json['image'];
    banner = json['banner'];
    bannerLink = json['bannerLink'];
    detailTitle = json['detailTitle'];
    detailTitleCht = json['detailTitleCht'];
    detail = json['detail'];
    detailCht = json['detailCht'];
    shareMsg = json['shareMsg'];
    shareMsgCht = json['shareMsgCht'];
    likeCount = json['likeCount'];
    applyLink = json['applyLink'];
    if (json['rebateInfo'] != null) {
      rebateInfo = <RebateInfo>[];
      json['rebateInfo'].forEach((v) {
        rebateInfo!.add(RebateInfo.fromJson(v));
      });
    }
    ordering = json['ordering'];
    showBanner = json['showBanner'];
    status = json['status'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
    previewToken = json['previewToken'];
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    features = json['features'].cast<String>();
    signImageUrl = json['signImageUrl'];
    if (json['iconFeatureItems'] != null) {
      iconFeatureItems = <Null>[];
      json['iconFeatureItems'].forEach((v) {
        // iconFeatureItems!.add(new Null.fromJson(v));
      });
    }
    if (json['textFeatureItems'] != null) {
      textFeatureItems = <TextFeatureItems>[];
      json['textFeatureItems'].forEach((v) {
        textFeatureItems!.add(TextFeatureItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['referralCode'] = referralCode;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['companyId'] = companyId;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    data['issuer'] = issuer;
    data['type'] = type;
    data['minimumAnnualIncome'] = minimumAnnualIncome;
    data['advantage'] = advantage;
    data['advantageCht'] = advantageCht;
    data['summary'] = summary;
    data['summaryCht'] = summaryCht;
    data['image'] = image;
    data['banner'] = banner;
    data['bannerLink'] = bannerLink;
    data['detailTitle'] = detailTitle;
    data['detailTitleCht'] = detailTitleCht;
    data['detail'] = detail;
    data['detailCht'] = detailCht;
    data['shareMsg'] = shareMsg;
    data['shareMsgCht'] = shareMsgCht;
    data['likeCount'] = likeCount;
    data['applyLink'] = applyLink;
    if (rebateInfo != null) {
      data['rebateInfo'] = rebateInfo!.map((v) => v.toJson()).toList();
    }
    data['ordering'] = ordering;
    data['showBanner'] = showBanner;
    data['status'] = status;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    data['previewToken'] = previewToken;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['features'] = features;
    data['signImageUrl'] = signImageUrl;
    if (iconFeatureItems != null) {
      // data['iconFeatureItems'] =
      //     this.iconFeatureItems!.map((v) => v.toJson()).toList();
    }
    if (textFeatureItems != null) {
      data['textFeatureItems'] =
          textFeatureItems!.map((v) => v.toJson()).toList();
    }
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

class RebateInfo {
  String? feature;
  double? value;

  RebateInfo({this.feature, this.value});

  RebateInfo.fromJson(Map<String, dynamic> json) {
    feature = json['feature'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['feature'] = feature;
    data['value'] = value;
    return data;
  }
}

class TextFeatureItems {
  String? name;
  String? nameCht;
  String? value;
  String? valueCht;
  bool? insuranceExtra;

  TextFeatureItems(
      {this.name,
      this.nameCht,
      this.value,
      this.valueCht,
      this.insuranceExtra});

  TextFeatureItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameCht = json['nameCht'];
    value = json['value'];
    valueCht = json['valueCht'];
    insuranceExtra = json['insuranceExtra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['value'] = value;
    data['valueCht'] = valueCht;
    data['insuranceExtra'] = insuranceExtra;
    return data;
  }
}
