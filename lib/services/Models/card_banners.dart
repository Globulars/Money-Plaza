class BannerImages {
  int? id;
  String? productType;
  String? image;
  String? mobileImage;
  String? imageCht;
  String? mobileImageCht;
  int? ordering;
  String? updateDate;
  String? createDate;
  String? signImageUrl;
  String? signMobileImageUrl;
  String? signImageUrlCht;
  String? signMobileImageUrlCht;

  BannerImages(
      {this.id,
      this.productType,
      this.image,
      this.mobileImage,
      this.imageCht,
      this.mobileImageCht,
      this.ordering,
      this.updateDate,
      this.createDate,
      this.signImageUrl,
      this.signMobileImageUrl,
      this.signImageUrlCht,
      this.signMobileImageUrlCht});

  BannerImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productType = json['productType'];
    image = json['image'];
    mobileImage = json['mobileImage'];
    imageCht = json['imageCht'];
    mobileImageCht = json['mobileImageCht'];
    ordering = json['ordering'];
    updateDate = json['updateDate'];
    createDate = json['createDate'];
    signImageUrl = json['signImageUrl'];
    signMobileImageUrl = json['signMobileImageUrl'];
    signImageUrlCht = json['signImageUrlCht'];
    signMobileImageUrlCht = json['signMobileImageUrlCht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['productType'] = productType;
    data['image'] = image;
    data['mobileImage'] = mobileImage;
    data['imageCht'] = imageCht;
    data['mobileImageCht'] = mobileImageCht;
    data['ordering'] = ordering;
    data['updateDate'] = updateDate;
    data['createDate'] = createDate;
    data['signImageUrl'] = signImageUrl;
    data['signMobileImageUrl'] = signMobileImageUrl;
    data['signImageUrlCht'] = signImageUrlCht;
    data['signMobileImageUrlCht'] = signMobileImageUrlCht;
    return data;
  }
}
