// To parse this JSON data, do
//
//     final superAdminUserLogin = superAdminUserLoginFromJson(jsonString);

import 'dart:convert';

SuperAdminUserLogin superAdminUserLoginFromJson(String str) => SuperAdminUserLogin.fromJson(json.decode(str));

String superAdminUserLoginToJson(SuperAdminUserLogin data) => json.encode(data.toJson());

class SuperAdminUserLogin {
    SuperAdminUserLogin({
        required this.type,
        required this.currentSuperAdmin,
        required this.token,
    });

    String type;
    CurrentSuperAdmin currentSuperAdmin;
    String token;

    factory SuperAdminUserLogin.fromJson(Map<String, dynamic> json) => SuperAdminUserLogin(
        type: json["type"],
        currentSuperAdmin: CurrentSuperAdmin.fromJson(json["currentSuperAdmin"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "currentSuperAdmin": currentSuperAdmin.toJson(),
        "token": token,
    };
}

class CurrentSuperAdmin {
    CurrentSuperAdmin({
        required this.roleId,
        required this.name,
        required this.email,
        required this.superAdminStatus,
        required this.updatedAt,
        required this.id,
    });

    String roleId;
    String name;
    String email;
    String superAdminStatus;
    DateTime updatedAt;
    String id;

    factory CurrentSuperAdmin.fromJson(Map<String, dynamic> json) => CurrentSuperAdmin(
        roleId: json["roleId"],
        name: json["name"],
        email: json["email"],
        superAdminStatus: json["superAdminStatus"],
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "roleId": roleId,
        "name": name,
        "email": email,
        "superAdminStatus": superAdminStatus,
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
    };
}
