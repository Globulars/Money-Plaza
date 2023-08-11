class CreditCard {
  String? code;
  Data? data;
  String? message;
  bool? success;

  CreditCard({this.code, this.data, this.message, this.success});

  CreditCard.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['success'] = success;
    return data;
  }
}

class Data {
  int? current;
  int? pages;
  List<Records>? records;
  int? size;
  int? total;

  Data({this.current, this.pages, this.records, this.size, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    pages = json['pages'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(new Records.fromJson(v));
      });
    }
    size = json['size'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current'] = current;
    data['pages'] = pages;
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
    }
    data['size'] = size;
    data['total'] = total;
    return data;
  }
}

class Records {
  String? advantage;
  String? advantageCht;
  String? applyLink;
  String? banner;
  String? bannerLink;
  Company? company;
  int? companyId;
  String? createDate;
  String? detail;
  String? detailCht;
  String? detailTitle;
  String? detailTitleCht;
  List<String>? features;
  List<IconFeatureItems>? iconFeatureItems;
  int? id;
  String? image;
  String? incentive;
  String? incentiveCht;
  String? issuer;
  int? likeCount;
  int? minimumAnnualIncome;
  String? name;
  String? nameCht;
  int? ordering;
  String? previewToken;
  String? publishDate;
  List<RebateInfo>? rebateInfo;
  String? referralCode;
  String? shareMsg;
  String? shareMsgCht;
  bool? showBanner;
  String? signBannerUrl;
  String? signImageUrl;
  bool? status;
  String? summary;
  String? summaryCht;
  // List<TextFeatureItems>? textFeatureItems;
  String? type;
  String? updateDate;

  Records(
      {this.advantage,
      this.advantageCht,
      this.applyLink,
      this.banner,
      this.bannerLink,
      this.company,
      this.companyId,
      this.createDate,
      this.detail,
      this.detailCht,
      this.detailTitle,
      this.detailTitleCht,
      this.features,
      this.iconFeatureItems,
      this.id,
      this.image,
      this.incentive,
      this.incentiveCht,
      this.issuer,
      this.likeCount,
      this.minimumAnnualIncome,
      this.name,
      this.nameCht,
      this.ordering,
      this.previewToken,
      this.publishDate,
      this.rebateInfo,
      this.referralCode,
      this.shareMsg,
      this.shareMsgCht,
      this.showBanner,
      this.signBannerUrl,
      this.signImageUrl,
      this.status,
      this.summary,
      this.summaryCht,
      // this.textFeatureItems,
      this.type,
      this.updateDate});

  Records.fromJson(Map<String, dynamic> json) {
    advantage = json['advantage'];
    advantageCht = json['advantageCht'];
    applyLink = json['applyLink'];
    banner = json['banner'];
    bannerLink = json['bannerLink'];
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    companyId = json['companyId'];
    createDate = json['createDate'];
    detail = json['detail'];
    detailCht = json['detailCht'];
    detailTitle = json['detailTitle'];
    detailTitleCht = json['detailTitleCht'];
    features = json['features'].cast<String>();
    if (json['iconFeatureItems'] != null) {
      iconFeatureItems = <IconFeatureItems>[];
      json['iconFeatureItems'].forEach((v) {
        iconFeatureItems!.add(new IconFeatureItems.fromJson(v));
      });
    }
    id = json['id'];
    image = json['image'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
    issuer = json['issuer'];
    likeCount = json['likeCount'];
    minimumAnnualIncome = json['minimumAnnualIncome'];
    name = json['name'];
    nameCht = json['nameCht'];
    ordering = json['ordering'];
    previewToken = json['previewToken'];
    publishDate = json['publishDate'];
    if (json['rebateInfo'] != null) {
      rebateInfo = <RebateInfo>[];
      json['rebateInfo'].forEach((v) {
        rebateInfo!.add(new RebateInfo.fromJson(v));
      });
    }
    referralCode = json['referralCode'];
    shareMsg = json['shareMsg'];
    shareMsgCht = json['shareMsgCht'];
    showBanner = json['showBanner'];
    signBannerUrl = json['signBannerUrl'];
    signImageUrl = json['signImageUrl'];
    status = json['status'];
    summary = json['summary'];
    summaryCht = json['summaryCht'];
    // if (json['textFeatureItems'] != null) {
    //   textFeatureItems = <TextFeatureItems>[];
    //   json['textFeatureItems'].forEach((v) {
    //     textFeatureItems!.add(new TextFeatureItems.fromJson(v));
    //   });
    // }
    type = json['type'];
    updateDate = json['updateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['advantage'] = advantage;
    data['advantageCht'] = advantageCht;
    data['applyLink'] = applyLink;
    data['banner'] = banner;
    data['bannerLink'] = bannerLink;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    data['companyId'] = companyId;
    data['createDate'] = createDate;
    data['detail'] = detail;
    data['detailCht'] = detailCht;
    data['detailTitle'] = detailTitle;
    data['detailTitleCht'] = detailTitleCht;
    data['features'] = features;
    if (iconFeatureItems != null) {
      data['iconFeatureItems'] =
          iconFeatureItems!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    data['image'] = image;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    data['issuer'] = issuer;
    data['likeCount'] = likeCount;
    data['minimumAnnualIncome'] = minimumAnnualIncome;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['ordering'] = ordering;
    data['previewToken'] = previewToken;
    data['publishDate'] = publishDate;
    if (rebateInfo != null) {
      data['rebateInfo'] = rebateInfo!.map((v) => v.toJson()).toList();
    }
    data['referralCode'] = referralCode;
    data['shareMsg'] = shareMsg;
    data['shareMsgCht'] = shareMsgCht;
    data['showBanner'] = showBanner;
    data['signBannerUrl'] = signBannerUrl;
    data['signImageUrl'] = signImageUrl;
    data['status'] = status;
    data['summary'] = summary;
    data['summaryCht'] = summaryCht;
    // if (this.textFeatureItems != null) {
    //   data['textFeatureItems'] =
    //       this.textFeatureItems!.map((v) => v.toJson()).toList();
    // }
    data['type'] = type;
    data['updateDate'] = updateDate;
    return data;
  }
}

class Company {
  int? accountOrdering;
  String? applyLink;
  String? applyLinkCht;
  bool? bank;
  int? cardOrdering;
  String? code;
  String? createDate;
  List<String>? emailList;
  String? emails;
  bool? enableAutoSubmit;
  bool? enableCheckId;
  int? id;
  int? insuranceOrdering;
  String? licenseNo;
  int? loanOrdering;
  String? logo;
  List<String>? mobileList;
  String? mobiles;
  int? mortgageOrdering;
  String? name;
  String? nameCht;
  int? ordering;
  int? pdfFormId;
  String? signLogoUrl;
  int? surveyId;
  String? updateDate;

  Company(
      {this.accountOrdering,
      this.applyLink,
      this.applyLinkCht,
      this.bank,
      this.cardOrdering,
      this.code,
      this.createDate,
      this.emailList,
      this.emails,
      this.enableAutoSubmit,
      this.enableCheckId,
      this.id,
      this.insuranceOrdering,
      this.licenseNo,
      this.loanOrdering,
      this.logo,
      this.mobileList,
      this.mobiles,
      this.mortgageOrdering,
      this.name,
      this.nameCht,
      this.ordering,
      this.pdfFormId,
      this.signLogoUrl,
      this.surveyId,
      this.updateDate});

  Company.fromJson(Map<String, dynamic> json) {
    accountOrdering = json['accountOrdering'];
    applyLink = json['applyLink'];
    applyLinkCht = json['applyLinkCht'];
    bank = json['bank'];
    cardOrdering = json['cardOrdering'];
    code = json['code'];
    createDate = json['createDate'];
    emailList = json['emailList'].cast<String>();
    emails = json['emails'];
    enableAutoSubmit = json['enableAutoSubmit'];
    enableCheckId = json['enableCheckId'];
    id = json['id'];
    insuranceOrdering = json['insuranceOrdering'];
    licenseNo = json['licenseNo'];
    loanOrdering = json['loanOrdering'];
    logo = json['logo'];
    mobileList = json['mobileList'].cast<String>();
    mobiles = json['mobiles'];
    mortgageOrdering = json['mortgageOrdering'];
    name = json['name'];
    nameCht = json['nameCht'];
    ordering = json['ordering'];
    pdfFormId = json['pdfFormId'];
    signLogoUrl = json['signLogoUrl'];
    surveyId = json['surveyId'];
    updateDate = json['updateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accountOrdering'] = accountOrdering;
    data['applyLink'] = applyLink;
    data['applyLinkCht'] = applyLinkCht;
    data['bank'] = bank;
    data['cardOrdering'] = cardOrdering;
    data['code'] = code;
    data['createDate'] = createDate;
    data['emailList'] = emailList;
    data['emails'] = emails;
    data['enableAutoSubmit'] = enableAutoSubmit;
    data['enableCheckId'] = enableCheckId;
    data['id'] = id;
    data['insuranceOrdering'] = insuranceOrdering;
    data['licenseNo'] = licenseNo;
    data['loanOrdering'] = loanOrdering;
    data['logo'] = logo;
    data['mobileList'] = mobileList;
    data['mobiles'] = mobiles;
    data['mortgageOrdering'] = mortgageOrdering;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['ordering'] = ordering;
    data['pdfFormId'] = pdfFormId;
    data['signLogoUrl'] = signLogoUrl;
    data['surveyId'] = surveyId;
    data['updateDate'] = updateDate;
    return data;
  }
}

class IconFeatureItems {
  String? imageUrl;
  bool? insuranceExtra;
  String? name;
  String? nameCht;
  String? value;
  String? valueCht;

  IconFeatureItems(
      {this.imageUrl,
      this.insuranceExtra,
      this.name,
      this.nameCht,
      this.value,
      this.valueCht});

  IconFeatureItems.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    insuranceExtra = json['insuranceExtra'];
    name = json['name'];
    nameCht = json['nameCht'];
    value = json['value'];
    valueCht = json['valueCht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = imageUrl;
    data['insuranceExtra'] = insuranceExtra;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['value'] = value;
    data['valueCht'] = valueCht;
    return data;
  }
}

class RebateInfo {
  String? feature;
  int? value;

  RebateInfo({this.feature, this.value});

  RebateInfo.fromJson(Map<String, dynamic> json) {
    feature = json['feature'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feature'] = feature;
    data['value'] = value;
    return data;
  }
}
