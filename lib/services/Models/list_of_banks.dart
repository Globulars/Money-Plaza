class BankList {
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

  BankList(
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

  BankList.fromJson(Map<String, dynamic> json) {
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
