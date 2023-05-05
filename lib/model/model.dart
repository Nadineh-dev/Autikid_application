class LoginModel {
  bool? status;
  String? message;
  String? jwt;

  LoginModel({this.status, this.message, this.jwt});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    jwt = json['jwt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['jwt'] = jwt;
    return data;
  }
}
