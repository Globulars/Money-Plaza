class LoanTags {
  String? id;
  String? name;
  String? nameCht;
  String? productType;
  bool? showIcon;
  String? icon;
  String? remark;
  String? remarkCht;
  int? ranking;
  bool? display;
  bool? exclusive;
  bool? insuranceExtra;
  String? updateDate;
  String? createDate;
  String? code;

  LoanTags(
      {this.id,
      this.name,
      this.nameCht,
      this.productType,
      this.showIcon,
      this.icon,
      this.remark,
      this.remarkCht,
      this.ranking,
      this.display,
      this.exclusive,
      this.insuranceExtra,
      this.updateDate,
      this.createDate,
      this.code});

  LoanTags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameCht = json['nameCht'];
    productType = json['productType'];
    showIcon = json['showIcon'];
    icon = json['icon'];
    remark = json['remark'];
    remarkCht = json['remarkCht'];
    ranking = json['ranking'];
    display = json['display'];
    exclusive = json['exclusive'];
    insuranceExtra = json['insuranceExtra'];
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nameCht'] = nameCht;
    data['productType'] = productType;
    data['showIcon'] = showIcon;
    data['icon'] = icon;
    data['remark'] = remark;
    data['remarkCht'] = remarkCht;
    data['ranking'] = ranking;
    data['display'] = display;
    data['exclusive'] = exclusive;
    data['insuranceExtra'] = insuranceExtra;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['code'] = code;
    return data;
  }
}
