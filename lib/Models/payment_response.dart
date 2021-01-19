import 'package:himaka/Models/product_service_details_response.dart';

class PaymentResponse {
  bool status;
  String errors;
  String msg;
  var data;

  PaymentResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    status = json['status'];
    msg = json['msg'];
    errors = json['errors'];

  }
}

class PaymentReq {
  String lang;
  String token;
  String amount;

  PaymentReq(this.lang, this.amount, {this.token});

  Map<String, dynamic> signUpPaymentToMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lang'] = lang;
    data['amount'] = amount;
    List<int> products = [1, 2, 3];
    List<int> quantity = [3, 2, 5];
    List<int> price = [300, 200, 500];

    data['products'] = products.toString();
    data['price'] = price.toString();
    data['quantity'] = quantity.toString();

    return data;
  }
  Map<String, dynamic> upgradePaymentToMap(List<Item> items) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lang'] = lang;
    data['amount'] = amount;
    data['token'] = token;
    List<int> products = new List<int>();
    List<int> quantity = new List<int>();
    List<String> price = new List<String>();

    for (int i = 0; i < items.length; i++) {
      products.add(items[i].id);
      quantity.add(items[i].count);
      price.add(items[i].newPrice.toString());
    }

    data['products'] = products.toString();
    data['price'] = price.toString();
    data['quantity'] = quantity.toString();

    return data;
  }

  Map<String, dynamic> checkOutPaymentToMap(List<Item> items) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lang'] = lang;
    data['amount'] = amount;
    data['token'] = token;
    List<int> products = new List<int>();
    List<int> quantity = new List<int>();
    List<String> price = new List<String>();

    for (int i = 0; i < items.length; i++) {
      products.add(items[i].id);
      quantity.add(items[i].count);
      price.add(items[i].newPrice.toString());
    }

    data['products'] = products.toString();
    data['price'] = price.toString();
    data['quantity'] = quantity.toString();

    return data;
  }
}
