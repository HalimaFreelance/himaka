class PreStoreResponse {
  String msg;
  List<String> errors;
  bool status;
  PreStoreData data;

  PreStoreResponse({this.msg, this.status, this.data});

  PreStoreResponse.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new PreStoreData.fromJson(json['data']) : null;
    status = json['status'];
    if (json['errors'] != null) {
      errors = new List<String>();
      json['errors'].forEach((v) {
        errors.add(v);
      });
    }
    msg = json['msg'];
  }
}

class PreStoreData {
  List<BillingCountry> countries;
  List<PaymentWays> paymentMethods;
  List<ShippingMethods> shippingMethods;
  bool canPurchase;

  PreStoreData.fromJson(Map<String, dynamic> json) {
    canPurchase = json['canPurchasing'];

    if (json['countries'] != null) {
      countries = new List<BillingCountry>();
      json['countries'].forEach((v) {
        countries.add(new BillingCountry.fromJson(v));
      });
    }
    if (json['payment_methods'] != null) {
      paymentMethods = new List<PaymentWays>();
      json['payment_methods'].forEach((v) {
        paymentMethods.add(new PaymentWays.fromJson(v));
      });
    }
    if (json['shipping_methods'] != null) {
      shippingMethods = new List<ShippingMethods>();
      json['shipping_methods'].forEach((v) {
        shippingMethods.add(new ShippingMethods.fromJson(v));
      });
    }
  }
}

class BillingCountry {
  String id;
  String name;
  List<BillingState> states;

  BillingCountry.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['states'] != null) {
      states = new List<BillingState>();
      json['states'].forEach((v) {
        states.add(new BillingState.fromJson(v));
      });
    }
  }
}

class BillingState {
  String id;
  String name;

  BillingState.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class PaymentWays {
  String id;
  String name;

  PaymentWays.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class ShippingMethods {
  String id;
  String name;
  var cost;

  ShippingMethods.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    name = json['name'];
    id = json['id'];
  }
}
