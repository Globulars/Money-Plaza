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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['companyId'] = this.companyId;
    data['productId'] = this.productId;
    data['productType'] = this.productType;
    data['referenceNumber'] = this.referenceNumber;
    data['incentive'] = this.incentive;
    data['incentiveCht'] = this.incentiveCht;
    data['companyName'] = this.companyName;
    data['companyNameCht'] = this.companyNameCht;
    data['status'] = this.status;
    data['uploadFiles'] = this.uploadFiles;
    data['updateDate'] = this.updateDate;
    data['createDate'] = this.createDate;
    data['hasFile'] = this.hasFile;
    return data;
  }
}
