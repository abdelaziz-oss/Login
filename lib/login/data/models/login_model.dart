class LoginModel {
  int? status;
  String? message;
  Data? data;

  LoginModel({this.status, this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? accessToken;
  String? refreshToken;
  String? accessTokenExp;
  String? refreshTokenExp;
  ClientData? clientData;

  Data(
      {this.accessToken,
      this.refreshToken,
      this.accessTokenExp,
      this.refreshTokenExp,
      this.clientData});

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    accessTokenExp = json['access_token_exp'];
    refreshTokenExp = json['refresh_token_exp'];
    clientData = json['client_data'] != null
        ? new ClientData.fromJson(json['client_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['refresh_token'] = this.refreshToken;
    data['access_token_exp'] = this.accessTokenExp;
    data['refresh_token_exp'] = this.refreshTokenExp;
    if (this.clientData != null) {
      data['client_data'] = this.clientData!.toJson();
    }
    return data;
  }
}

class ClientData {
  int? id;
  String? firstName;
  String? lastName;
  String? image;
  String? preferredLanguage;

  ClientData(
      {this.id,
      this.firstName,
      this.lastName,
      this.image,
      this.preferredLanguage});

  ClientData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    image = json['image'];
    preferredLanguage = json['preferred_language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['image'] = this.image;
    data['preferred_language'] = this.preferredLanguage;
    return data;
  }
}