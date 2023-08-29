class RewardDetails {
  int? productId;
  String? incentive;
  String? incentiveCht;

  RewardDetails({this.productId, this.incentive, this.incentiveCht});

  RewardDetails.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    incentive = json['incentive'];
    incentiveCht = json['incentiveCht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['incentive'] = incentive;
    data['incentiveCht'] = incentiveCht;
    return data;
  }
}
