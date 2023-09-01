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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['nameCht'] = nameCht;
    return data;
  }
}
