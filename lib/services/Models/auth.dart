class Auth {
  int? uid;
  String? type;
  String? accessToken;
  String? accessTokenExpiresIn;
  String? refreshToken;
  String? refreshTokenExpiration;

  Auth(
      {this.uid,
      this.type,
      this.accessToken,
      this.accessTokenExpiresIn,
      this.refreshToken,
      this.refreshTokenExpiration});

  Auth.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    type = json['type'];
    accessToken = json['accessToken'];
    accessTokenExpiresIn = json['accessTokenExpiresIn'];
    refreshToken = json['refreshToken'];
    refreshTokenExpiration = json['refreshTokenExpiration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['type'] = type;
    data['accessToken'] = accessToken;
    data['accessTokenExpiresIn'] = accessTokenExpiresIn;
    data['refreshToken'] = refreshToken;
    data['refreshTokenExpiration'] = refreshTokenExpiration;
    return data;
  }
}
