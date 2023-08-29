class RewardDetails {
  int? productId;
  String? name;
  String? incentiveCht;

  RewardDetails({this.productId, this.name, this.incentiveCht});

  RewardDetails.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    name = json['incentive'];
    incentiveCht = json['incentiveCht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['incentive'] = name;
    data['incentiveCht'] = incentiveCht;
    return data;
  }
}
