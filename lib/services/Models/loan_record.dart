class LoanRecord {
  String? code;
  String? name;
  String? nameCht;

  LoanRecord({this.code, this.name, this.nameCht});

  LoanRecord.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    nameCht = json['nameCht'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['nameCht'] = this.nameCht;
    return data;
  }
}
