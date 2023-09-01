class UserReward {
  int? id;
  int? userId;
  int? companyId;
  int? productId;
  String? productType;
  String? referenceNumber;
  String? incentive;
  String? incentiveCht;
  String? companyName;
  String? companyNameCht;
  int? status;
  List<String>? uploadFiles;
  String? updateDate;
  String? createDate;
  bool? hasFile;

  UserReward(
      {this.id,
      this.userId,
      this.companyId,
      this.productId,
      this.productType,
      this.referenceNumber,
      this.incentive,
      this.incentiveCht,
      this.companyName,
      this.companyNameCht,
      this.status,
      this.uploadFiles,
      this.updateDate,
      this.createDate,
      this.hasFile});

  UserReward.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    companyId = json['companyId'];
    productId = json['productId'];
    productType = json['productType'];
    referenceNumber = json['referenceNumber'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
    companyName = json['companyName'];
    companyNameCht = json['companyNameCht'];
    status = json['status'];
    uploadFiles = json['uploadFiles'].cast<String>();
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    hasFile = json['hasFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['companyId'] = companyId;
    data['productId'] = productId;
    data['productType'] = productType;
    data['referenceNumber'] = referenceNumber;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    data['companyName'] = companyName;
    data['companyNameCht'] = companyNameCht;
    data['status'] = status;
    data['uploadFiles'] = uploadFiles;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['hasFile'] = hasFile;
    return data;
  }
}
