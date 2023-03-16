// To parse this JSON data, do
//
//     final providerPerSuperAdmin = providerPerSuperAdminFromJson(jsonString);

import 'dart:convert';

ProviderPerSuperAdmin providerPerSuperAdminFromJson(String str) => ProviderPerSuperAdmin.fromJson(json.decode(str));

String providerPerSuperAdminToJson(ProviderPerSuperAdmin data) => json.encode(data.toJson());

class ProviderPerSuperAdmin {
    ProviderPerSuperAdmin({
        required this.type,
        required this.totalProviders,
        required this.providers,
    });

    String type;
    int totalProviders;
    List<Provider> providers;

    factory ProviderPerSuperAdmin.fromJson(Map<String, dynamic> json) => ProviderPerSuperAdmin(
        type: json["type"],
        totalProviders: json["totalProviders"],
        providers: List<Provider>.from(json["providers"].map((x) => Provider.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "totalProviders": totalProviders,
        "providers": List<dynamic>.from(providers.map((x) => x.toJson())),
    };
}

class Provider {
    Provider({
        required this.bankId,
        required this.businessName,
        required this.nit,
        required this.email,
        required this.bankAccountNumber,
        required this.accountType,
        required this.commission,
        required this.providerStatus,
        required this.id,
    });

    BankId bankId;
    String businessName;
    String nit;
    String email;
    String bankAccountNumber;
    String accountType;
    int commission;
    String providerStatus;
    String id;

    factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        bankId: BankId.fromJson(json["bankId"]),
        businessName: json["businessName"],
        nit: json["nit"],
        email: json["email"],
        bankAccountNumber: json["bankAccountNumber"],
        accountType: json["accountType"],
        commission: json["commission"],
        providerStatus: json["providerStatus"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "bankId": bankId.toJson(),
        "businessName": businessName,
        "nit": nit,
        "email": email,
        "bankAccountNumber": bankAccountNumber,
        "accountType": accountType,
        "commission": commission,
        "providerStatus": providerStatus,
        "id": id,
    };
}

class BankId {
    BankId({
        required this.id,
        required this.bankName,
    });

    String id;
    String bankName;

    factory BankId.fromJson(Map<String, dynamic> json) => BankId(
        id: json["_id"],
        bankName: json["bankName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "bankName": bankName,
    };
}
