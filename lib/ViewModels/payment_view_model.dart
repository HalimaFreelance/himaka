import 'package:himaka/Models/payment_response.dart';
import 'package:himaka/services/api.dart';
import 'package:himaka/services/locator.dart';

import 'base_model.dart';

class PaymentViewModel extends BaseModel {
  Api _api = locator<Api>();

  Future<PaymentResponse> payUsingReferenceNum(
      String lang, amount, int paymentId) async {
    setState(ViewState.Busy);
    PaymentReq req = new PaymentReq(lang, amount);
    PaymentResponse response =
        await _api.paymentReferenceNum(req.signUpPaymentToMap(), paymentId);
    setState(ViewState.Idle);
    return response;
  }
}
