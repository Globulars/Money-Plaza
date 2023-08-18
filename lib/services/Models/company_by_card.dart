class CompanyByCard {
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

  CompanyByCard(
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

  CompanyByCard.fromJson(Map<String, dynamic> json) {
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