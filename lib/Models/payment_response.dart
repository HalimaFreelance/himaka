class PaymentResponse {
  bool status;

  List<String> errors;
  String msg;
  var data;


  PaymentResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] ;
    status = json['status'];
    msg = json['msg'];
    if (json['errors'] != null) {
      errors = new List<String>();
      json['errors'].forEach((v) {
        errors.add(v);
      });
    }
  }
}
class PaymentReq {
  String lang;
  String token;
  String amount;

  PaymentReq(
      this.lang, this.amount,{this.token});

  Map<String, dynamic> signUpPaymentToMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lang'] = lang;
    data['amount'] = amount;
    List<int> products = [1,2,3];
    List<int> quantity = [3,2,5];
    List<int> price = [300,200,500];

    data['products'] = products.toString();
    data['price'] = price.toString();
    data['quantity'] = quantity.toString();

    return data;
  }
}