class SelectCountry {
  String? code;
  String? name;
  String? nameCht;
  String? continent;

  SelectCountry({this.code, this.name, this.nameCht, this.continent});

  SelectCountry.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    nameCht = json['nameCht'];
    continent = json['continent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    data['continent'] = this.continent;
    return data;
  }
}
