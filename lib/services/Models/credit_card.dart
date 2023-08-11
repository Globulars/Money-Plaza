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
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['success'] = this.success;
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
    data['current'] = this.current;
    data['pages'] = this.pages;
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    data['size'] = this.size;
    data['total'] = this.total;
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
    data['advantage'] = this.advantage;
    data['advantageCht'] = this.advantageCht;
    data['applyLink'] = this.applyLink;
    data['banner'] = this.banner;
    data['bannerLink'] = this.bannerLink;
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    data['companyId'] = this.companyId;
    data['createDate'] = this.createDate;
    data['detail'] = this.detail;
    data['detailCht'] = this.detailCht;
    data['detailTitle'] = this.detailTitle;
    data['detailTitleCht'] = this.detailTitleCht;
    data['features'] = this.features;
    if (this.iconFeatureItems != null) {
      data['iconFeatureItems'] =
          this.iconFeatureItems!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['image'] = this.image;
    data['incentive'] = this.incentive;
    data['incentiveCht'] = this.incentiveCht;
    data['issuer'] = this.issuer;
    data['likeCount'] = this.likeCount;
    data['minimumAnnualIncome'] = this.minimumAnnualIncome;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['ordering'] = this.ordering;
    data['previewToken'] = this.previewToken;
    data['publishDate'] = this.publishDate;
    if (this.rebateInfo != null) {
      data['rebateInfo'] = this.rebateInfo!.map((v) => v.toJson()).toList();
    }
    data['referralCode'] = this.referralCode;
    data['shareMsg'] = this.shareMsg;
    data['shareMsgCht'] = this.shareMsgCht;
    data['showBanner'] = this.showBanner;
    data['signBannerUrl'] = this.signBannerUrl;
    data['signImageUrl'] = this.signImageUrl;
    data['status'] = this.status;
    data['summary'] = this.summary;
    data['summaryCht'] = this.summaryCht;
    // if (this.textFeatureItems != null) {
    //   data['textFeatureItems'] =
    //       this.textFeatureItems!.map((v) => v.toJson()).toList();
    // }
    data['type'] = this.type;
    data['updateDate'] = this.updateDate;
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
    data['accountOrdering'] = this.accountOrdering;
    data['applyLink'] = this.applyLink;
    data['applyLinkCht'] = this.applyLinkCht;
    data['bank'] = this.bank;
    data['cardOrdering'] = this.cardOrdering;
    data['code'] = this.code;
    data['createDate'] = this.createDate;
    data['emailList'] = this.emailList;
    data['emails'] = this.emails;
    data['enableAutoSubmit'] = this.enableAutoSubmit;
    data['enableCheckId'] = this.enableCheckId;
    data['id'] = this.id;
    data['insuranceOrdering'] = this.insuranceOrdering;
    data['licenseNo'] = this.licenseNo;
    data['loanOrdering'] = this.loanOrdering;
    data['logo'] = this.logo;
    data['mobileList'] = this.mobileList;
    data['mobiles'] = this.mobiles;
    data['mortgageOrdering'] = this.mortgageOrdering;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['ordering'] = this.ordering;
    data['pdfFormId'] = this.pdfFormId;
    data['signLogoUrl'] = this.signLogoUrl;
    data['surveyId'] = this.surveyId;
    data['updateDate'] = this.updateDate;
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
    data['imageUrl'] = this.imageUrl;
    data['insuranceExtra'] = this.insuranceExtra;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['value'] = this.value;
    data['valueCht'] = this.valueCht;
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
    data['feature'] = this.feature;
    data['value'] = this.value;
    return data;
  }
}
