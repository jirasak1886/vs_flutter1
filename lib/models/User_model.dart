import 'dart:convert';

UserModel welcomeFromJson(String str) => UserModel.fromJson(json.decode(str));

String welcomeToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String userName;
  String password;
  String name;
  String role;

  UserModel({
    required this.userName,
    required this.password,
    required this.name,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json["user_name"],
        password: json["password"],
        name: json["name"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "password": password,
        "name": name,
        "role": role,
      };
}
