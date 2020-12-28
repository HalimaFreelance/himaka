// To parse this JSON data, do
//
//     final changePriceResponse = changePriceResponseFromJson(jsonString);

import 'dart:convert';

ChangePriceResponse changePriceResponseFromJson(String str) =>
    ChangePriceResponse.fromJson(json.decode(str));

String changePriceResponseToJson(ChangePriceResponse data) =>
    json.encode(data.toJson());

class ChangePriceResponse {
  ChangePriceResponse({
    this.status,
    this.msg,
    this.data,
  });

  bool status;
  String msg;
  Data data;

  factory ChangePriceResponse.fromJson(Map<String, dynamic> json) =>
      ChangePriceResponse(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] != null
            ? json["data"] is List
                ? null
                : Data.fromJson(json["data"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.userSpecialPrice,
  });

  UserSpecialPrice userSpecialPrice;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userSpecialPrice: UserSpecialPrice.fromJson(json["user_special_price"]),
      );

  Map<String, dynamic> toJson() => {
        "user_special_price": userSpecialPrice.toJson(),
      };
}

class UserSpecialPrice {
  UserSpecialPrice({
    this.userId,
    this.productId,
    this.status,
    this.newPrice,
    this.createdAt,
    this.id,
  });

  int userId;
  String productId;
  int status;
  NewPrice newPrice;
  DateTime createdAt;
  int id;

  factory UserSpecialPrice.fromJson(Map<String, dynamic> json) =>
      UserSpecialPrice(
        userId: json["user_id"],
        productId: json["product_id"],
        status: json["status"],
        newPrice: NewPrice.fromJson(json["new_price"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "product_id": productId,
        "status": status,
        "new_price": newPrice.toJson(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}

class NewPrice {
  NewPrice({
    this.amount,
    this.formatted,
    this.currency,
    this.inCurrentCurrency,
  });

  String amount;
  String formatted;
  String currency;
  InCurrentCurrency inCurrentCurrency;

  factory NewPrice.fromJson(Map<String, dynamic> json) => NewPrice(
        amount: json["amount"],
        formatted: json["formatted"],
        currency: json["currency"],
        inCurrentCurrency:
            InCurrentCurrency.fromJson(json["inCurrentCurrency"]),
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "formatted": formatted,
        "currency": currency,
        "inCurrentCurrency": inCurrentCurrency.toJson(),
      };
}

class InCurrentCurrency {
  InCurrentCurrency({
    this.amount,
    this.formatted,
    this.currency,
  });

  int amount;
  String formatted;
  String currency;

  factory InCurrentCurrency.fromJson(Map<String, dynamic> json) =>
      InCurrentCurrency(
        amount: json["amount"],
        formatted: json["formatted"],
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "formatted": formatted,
        "currency": currency,
      };
}
