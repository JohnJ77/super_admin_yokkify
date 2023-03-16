// To parse this JSON data, do
//
//     final superAdminUserLoginInfo = superAdminUserLoginInfoFromJson(jsonString);

import 'dart:convert';

SuperAdminUserLoginInfo superAdminUserLoginInfoFromJson(String str) => SuperAdminUserLoginInfo.fromJson(json.decode(str));

String superAdminUserLoginInfoToJson(SuperAdminUserLoginInfo data) => json.encode(data.toJson());

class SuperAdminUserLoginInfo {
    SuperAdminUserLoginInfo({
        required this.email,
        required this.password,
    });

    String email;
    String password;

    factory SuperAdminUserLoginInfo.fromJson(Map<String, dynamic> json) => SuperAdminUserLoginInfo(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}

