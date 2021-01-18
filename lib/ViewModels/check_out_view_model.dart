import 'dart:convert';

import 'package:himaka/Models/login_response.dart';
import 'package:himaka/Models/order_details_response.dart';
import 'package:himaka/Models/payment_response.dart';
import 'package:himaka/Models/pre_store_response.dart';
import 'package:himaka/Models/product_service_details_response.dart';
import 'package:himaka/services/api.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/caching.dart';
import 'package:himaka/utils/globals.dart';

import 'base_model.dart';

class CheckOutViewModel extends BaseModel {
  Api _api = locator<Api>();
  PreStoreResponse _preStoreResponse;
  bool _countryValidate = true;
  bool _stateValidate = true;
  bool _shippingMethod = true;
  bool _paymentMethod = true;
  bool _termsAgree = false;
  bool _emailValidate = true;
  bool _phoneValidate = true;
  bool _fNameValidate = true;
  bool _lNameValidate = true;
  bool _address1Validate = true;
  bool _cityValidate = true;
  bool _zipValidate = true;
  bool _termsAgreeValidate = true;

  ////////////////////
  bool _sOPin = true;
  bool _sOQues = true;
  bool _sOAnswer = true;
  bool _sONewPrice = true;

  int _serviceId = 1;

  Future preStore(String lang) async {
    _serviceId = 1;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {
      "token": Globals.userData.token,
      "lang": lang
    };
    _preStoreResponse = await _api.preStore(token);
    setState(ViewState.Idle);
  }

  Future checkWalletsBalanceWithCart(String totalCost) async {
    _serviceId = 1;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {
      "token": Globals.userData.token,
      "price": totalCost
    };
    _preStoreResponse = await _api.checkWalletsBalance(token);
    setState(ViewState.Idle);
  }
  Future checkWalletsBalanceWithService(int serviceId) async {
    _serviceId = 1;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {
      "token": Globals.userData.token,
      "id": serviceId,
      "price":"0",
    };
    _preStoreResponse = await _api.checkWalletsBalance(token);
    setState(ViewState.Idle);
  }

  Future<OrderDetailsResponse> storeOrder(
      String lang,
      String email,
      String phone,
      String fName,
      String lName,
      String address,
      String city,
      String zip,
      String country,
      String bState,
      String shippingMethod,
      // String paymentMethod,
      List<Item> items) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    StoreOrderReq req = new StoreOrderReq(lang, Globals.userData.token, email,
        phone, fName, lName, address, city, zip, country, bState, shippingMethod
        // paymentMethod,
        // transId != null ? transId : -1
        );
    OrderDetailsResponse response =
        await _api.storeOrder(req.storeOrderToMap(items));
    setState(ViewState.Idle);
    return response;
  }

  Future<LoginResponse> payByWallets(
      String lang, int walletId, String id, String realPrice, amount) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {
      "token": Globals.userData.token,
      "id": id,
      "wallet_id": walletId,
      "amount": amount,
      "real_price": realPrice
    };
    LoginResponse response = await _api.payByWallets(token);
    if (response != null && response.data != null) {
      var pass = Globals.userData.password = Globals.userData.password;
      Globals.userData = response.data.user;
      Globals.userData.password = pass;
      saveLoginData(json.encode(response.data.user));
    }
    setState(ViewState.Idle);
    return response;
  }
  Future<PaymentResponse> payUsingReferenceNum(
      String lang, amount, int paymentId,List<Item> items) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    PaymentReq req = new PaymentReq(lang, amount,token:Globals.userData.token );
    PaymentResponse response =
    await _api.paymentReferenceNum(req.checkOutPaymentToMap(items), paymentId);
    setState(ViewState.Idle);
    return response;
  }

  PreStoreResponse get preStoreResponse => _preStoreResponse;

  bool get countryValidate => _countryValidate;

  set countryValidate(bool value) {
    _countryValidate = value;
  }

  int get serviceId => _serviceId;

  bool get stateValidate => _stateValidate;

  set stateValidate(bool value) {
    _stateValidate = value;
  }

  bool checkOutValidation(
      String email,
      String fName,
      String lName,
      String phone,
      String address1,
      BillingCountry billingCountry,
      BillingState billingState,
      String city,
      String zip,
      ShippingMethods shippingMethods) {
    bool validate = true;

    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      _emailValidate = false;
      validate = false;
    } else {
      _emailValidate = true;
    }
    if (fName.length < 3) {
      _fNameValidate = false;
      validate = false;
    } else {
      _fNameValidate = true;
    }
    if (lName.length < 3) {
      _lNameValidate = false;
      validate = false;
    } else {
      _lNameValidate = true;
    }
    if (phone.length < 8) {
      _phoneValidate = false;
      validate = false;
    } else {
      _phoneValidate = true;
    }
    if (address1.isEmpty) {
      _address1Validate = false;
      validate = false;
    } else {
      _address1Validate = true;
    }
    if (billingCountry == null) {
      _countryValidate = false;
      validate = false;
    } else {
      _countryValidate = true;
    }
    if (billingState == null) {
      _stateValidate = false;
      validate = false;
    } else {
      _stateValidate = true;
    }
    if (city.isEmpty) {
      _cityValidate = false;
      validate = false;
    } else {
      _cityValidate = true;
    }
    if (zip.isEmpty) {
      _zipValidate = false;
      validate = false;
    } else {
      _zipValidate = true;
    }
    if (shippingMethods == null) {
      _shippingMethod = false;
      validate = false;
    } else {
      _shippingMethod = true;
    }
    // if (paymentWays == null) {
    //   _paymentMethod = false;
    //   validate = false;
    // } else {
    //   _paymentMethod = true;
    // }
    if (!termsAgree) {
      _termsAgreeValidate = false;
      validate = false;
    } else {
      _termsAgreeValidate = true;
    }
    notifyListeners();
    return validate;
  }

  bool validateOfferData(
      String price, String pin,  String answer,String val, String realPrice) {
    bool validate = true;
    if (pin.isNotEmpty && pin == Globals.userData.pin) {
      _sOPin = true;
    } else {
      validate = false;
      _sOPin = false;

    }
    if (val != null && val == Globals.userData.question) {
      _sOQues = true;
    } else {
      print(Globals.userData.question);
      validate = false;
      _sOQues = false;
    }
    if (answer.isNotEmpty && answer == Globals.userData.answer) {
      _sOAnswer = true;
    } else {
      print(Globals.userData.answer);
      validate = false;
      _sOAnswer = false;

    }
    if (price.isNotEmpty &&
        (double.parse(price) < (double.parse(realPrice) * 0.9))) {
      _sONewPrice = true;
    } else {
      validate = false;
      _sONewPrice = false;
    }
    notifyListeners();
    return validate;
  }

  bool get shippingMethod => _shippingMethod;

  set shippingMethod(bool value) {
    _shippingMethod = value;
  }

  bool get paymentMethod => _paymentMethod;

  set paymentMethod(bool value) {
    _paymentMethod = value;
  }

  bool get termsAgree => _termsAgree;

  set termsAgree(bool value) {
    _termsAgree = value;
    _termsAgreeValidate = true;
    notifyListeners();
  }

  bool get fNameValidate => _fNameValidate;

  bool get emailValidate => _emailValidate;

  List<BillingState> getBillingState(BillingCountry billingCountry) {
    List<BillingState> result = new List<BillingState>();
    if (billingCountry != null) {
      for (int i = 0; i < _preStoreResponse.data.countries.length; i++) {
        if (_preStoreResponse.data.countries[i].id == billingCountry.id) {
          result = _preStoreResponse.data.countries[i].states;
          return result;
        }
      }
    }
    return result;
  }

  bool get address1Validate => _address1Validate;

  bool get phoneValidate => _phoneValidate;

  bool get lNameValidate => _lNameValidate;

  bool get zipValidate => _zipValidate;

  bool get cityValidate => _cityValidate;

  bool get termsAgreeValidate => _termsAgreeValidate;

  bool get sONewPrice => _sONewPrice;

  bool get sOAnswer => _sOAnswer;

  bool get sOQues => _sOQues;

  bool get sOPin => _sOPin;
}
