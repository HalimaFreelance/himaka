import 'dart:convert';

import 'package:himaka/Models/product_service_details_response.dart';

OrderDetailsResponse ordersResponseFromJson(String str) =>
    OrderDetailsResponse.fromJson(json.decode(str));

String ordersResponseToJson(OrderDetailsResponse data) =>
    json.encode(data.toJson());

class OrderDetailsResponse {
  OrderDetailsResponse({
    this.status,
    this.msg,
    this.data,
    this.errors
  });

  bool status;
  String msg;
  Data data;
  List<String> errors;


  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      OrderDetailsResponse(
        status: json["status"],
        msg: json["msg"],
        data: json["data"]!=null?Data.fromJson(json["data"]):null,
        errors:(json["errors"] != null)
            ? List<String>.from(json["errors"].map((x) => x))
            : []
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}
class StoreOrderReq {
  String lang;
  String token;
  String email;
  String phone;
  String fName;
  String lName;
  String address;
  String city;
  String zip;
  String country;
  String bState;
  String shippingMethod;
  String paymentMethod;
  String currency="EG";
  var transId;
  int shipToDifferentAddress=0;
  int terms=1;


  StoreOrderReq(
      this.lang,
      this.token,
      this.email,
      this.phone,
      this.fName,
      this.lName,
      this.address,
      this.city,
      this.zip,
      this.country,
      this.bState,
      this.shippingMethod,
      this.paymentMethod,
      this.transId);

  Map<String, dynamic> storeOrderToMap(List<Item> items) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['lang'] = lang;
    data['token'] = token;
    data['customer_email'] = email;
    data['customer_phone'] = phone;
    data['billing_first_name'] = fName;
    data['billing_last_name'] = lName;
    data['billing_address_1'] = address;
    data['billing_city'] = city;
    data['billing_zip'] = zip;
    data['billing_country'] = country;
    data['billing_state'] = bState;
    data['shipping_method'] = shippingMethod;
    data['payment_method'] = paymentMethod;
    data['ship_to_different_address'] = shipToDifferentAddress;
    data['terms_and_conditions'] = terms;
    data['currency'] = currency;
    data['transaction_id'] = transId;

    List<int> products = new List<int>();
    List<int> quantity = new List<int>();
    List<String> price = new List<String>();


    for(int i=0; i<items.length;i++){
      products.add(items[i].id);
      quantity.add(items[i].count);
      price.add(items[i].newPrice.toString());
    }
    data['products'] = products.toString();
    data['price'] = price.toString();
    data['quantity'] = quantity.toString();
    data['price_after_commision'] = price.toString();

    return data;
  }
}

class Data {
  Data({this.orderDetails});

  Order orderDetails;

  Data.fromJson(Map<String, dynamic> json) {
    orderDetails = Order.fromJson(json["order"]);
  }

  Map<String, dynamic> toJson() => {
        "order": orderDetails.toJson(),
      };
}

class Order {
  Order({
    this.id,
    this.customerId,
    this.customerEmail,
    this.customerPhone,
    this.customerFirstName,
    this.customerLastName,
    this.billingFirstName,
    this.billingLastName,
    this.billingAddress1,
    this.billingAddress2,
    this.billingCity,
    this.billingState,
    this.billingZip,
    this.billingCountry,
    this.shippingFirstName,
    this.shippingLastName,
    this.shippingAddress1,
    this.shippingAddress2,
    this.shippingCity,
    this.shippingState,
    this.shippingZip,
    this.shippingCountry,
    this.subTotal,
    this.shippingMethod,
    this.shippingCost,
    this.couponId,
    this.discount,
    this.total,
    this.paymentMethod,
    this.currency,
    this.currencyRate,
    this.locale,
    this.status,
    this.note,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  var customerId;
  String customerEmail;
  dynamic customerPhone;
  String customerFirstName;
  String customerLastName;
  String billingFirstName;
  String billingLastName;
  String billingAddress1;
  dynamic billingAddress2;
  String billingCity;
  String billingState;
  String billingZip;
  String billingCountry;
  String shippingFirstName;
  String shippingLastName;
  String shippingAddress1;
  dynamic shippingAddress2;
  String shippingCity;
  String shippingState;
  String shippingZip;
  String shippingCountry;
  Discount subTotal;
  String shippingMethod;
  Discount shippingCost;
  dynamic couponId;
  Discount discount;
  Discount total;
  String paymentMethod;
  String currency;
  var currencyRate;
  String locale;
  String status;
  dynamic note;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        customerId: json["customer_id"],
        customerEmail: json["customer_email"],
        customerPhone: json["customer_phone"],
        customerFirstName: json["customer_first_name"],
        customerLastName: json["customer_last_name"],
        billingFirstName: json["billing_first_name"],
        billingLastName: json["billing_last_name"],
        billingAddress1: json["billing_address_1"],
        billingAddress2: json["billing_address_2"],
        billingCity: json["billing_city"],
        billingState: json["billing_state"],
        billingZip: json["billing_zip"],
        billingCountry: json["billing_country"],
        shippingFirstName: json["shipping_first_name"],
        shippingLastName: json["shipping_last_name"],
        shippingAddress1: json["shipping_address_1"],
        shippingAddress2: json["shipping_address_2"],
        shippingCity: json["shipping_city"],
        shippingState: json["shipping_state"],
        shippingZip: json["shipping_zip"],
        shippingCountry: json["shipping_country"],
        subTotal: Discount.fromJson(json["sub_total"]),
        shippingMethod: json["shipping_method"],
        shippingCost: Discount.fromJson(json["shipping_cost"]),
        couponId: json["coupon_id"],
        discount: Discount.fromJson(json["discount"]),
        total: Discount.fromJson(json["total"]),
        paymentMethod: json["payment_method"],
        currency: json["currency"],
        currencyRate: json["currency_rate"],
        locale: json["locale"],
        status: json["status"],
        note: json["note"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "customer_email": customerEmail,
        "customer_phone": customerPhone,
        "customer_first_name": customerFirstName,
        "customer_last_name": customerLastName,
        "billing_first_name": billingFirstName,
        "billing_last_name": billingLastName,
        "billing_address_1": billingAddress1,
        "billing_address_2": billingAddress2,
        "billing_city": billingCity,
        "billing_state": billingState,
        "billing_zip": billingZip,
        "billing_country": billingCountry,
        "shipping_first_name": shippingFirstName,
        "shipping_last_name": shippingLastName,
        "shipping_address_1": shippingAddress1,
        "shipping_address_2": shippingAddress2,
        "shipping_city": shippingCity,
        "shipping_state": shippingState,
        "shipping_zip": shippingZip,
        "shipping_country": shippingCountry,
        "sub_total": subTotal.toJson(),
        "shipping_method": shippingMethod,
        "shipping_cost": shippingCost.toJson(),
        "coupon_id": couponId,
        "discount": discount.toJson(),
        "total": total.toJson(),
        "payment_method": paymentMethod,
        "currency": currency,
        "currency_rate": currencyRate,
        "locale": locale,
        "status": status,
        "note": note,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Discount {
  Discount({
    this.amount,
    this.formatted,
    this.currency,
    this.inCurrentCurrency,
  });

  var amount;
  String formatted;
  String currency;
  InCurrentCurrency inCurrentCurrency;

  factory Discount.fromJson(Map<String, dynamic> json) => Discount(
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
