import 'dart:convert';
import 'package:fk_sample/models/loginMethod.dart';

class DetailsModel {
  String userName;
  String userEmail;
  String userPhone;
  bool hasLoggedIn;
  LoginMethod loginMethod;

  DetailsModel({
    this.userName = "",
    this.userEmail = "",
    this.userPhone = "",
    this.hasLoggedIn = false,
    this.loginMethod = LoginMethod.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userEmail': userEmail,
      'userPhone': userPhone,
      'hasLoggedIn': hasLoggedIn,
      'loginMethod': loginMethod,
    };
  }

  factory DetailsModel.fromMap(Map<String, dynamic> map) {
    return DetailsModel(
      userName: map['userName'] as String,
      userEmail: map['userEmail'] as String,
      userPhone: map['userPhone'] as String,
      hasLoggedIn: map['hasLoggedIn'] as bool,
      loginMethod: map['loginMethod'] as LoginMethod,
    );
  }

  factory DetailsModel.empty() {
    return DetailsModel(
      userName: "",
      userEmail: "",
      userPhone: "",
      hasLoggedIn: false,
      loginMethod: LoginMethod.phone,
    );
  }

  factory DetailsModel.fromQueryMap(Map<String, dynamic> map) {
    return DetailsModel(
      userName: map['name'] as String? ?? '',
      userEmail: map['email'] as String? ?? '',
      userPhone: map['mobile'] as String? ?? '',
      hasLoggedIn: map['hasLoggedIn'] as bool? ?? false,
      loginMethod: map['loginMethod'] as LoginMethod? ?? LoginMethod.email,
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsModel.fromJson(String source) =>
      DetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
