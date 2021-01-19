import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himaka/Models/payment_response.dart';
import 'package:himaka/Models/product_service_details_response.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/ViewModels/check_out_view_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:himaka/utils/payWebView.dart';
import 'package:himaka/utils/payment_dialog.dart';
import 'package:himaka/utils/show_toast.dart';

class UpgradePaymentMethodsScreen extends StatefulWidget {
  final int orderId;
  final String cost;

  UpgradePaymentMethodsScreen(this.orderId, this.cost);

  @override
  _UpgradePaymentMethodsScreenState createState() => _UpgradePaymentMethodsScreenState();
}
enum PaymentType { fawry, aman, credit }

class _UpgradePaymentMethodsScreenState extends State<UpgradePaymentMethodsScreen> {
  PaymentType _character = PaymentType.fawry;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            AppLocalizations.of(context).translate('payment_methods'),
            style: TextStyle(color: Colors.grey[900]),
          ),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.grey[900], //change your color here
          ),
          backgroundColor: Color(0xFFf5f5f5),
        ),
        backgroundColor: Color(0xFFf5f5f5),
        body: BaseView<CheckOutViewModel>(
          builder: (context, model, child) => LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return Column(
              children: [
                RadioListTile(
                  value: PaymentType.fawry,
                  groupValue: _character,
                  title: Text(AppLocalizations.of(context)
                      .translate('fawry')),
                  // subtitle: Text(user.lastName),
                  onChanged: (fawry) {
                    setState(() {
                      _character = fawry;
                    });
                  },
                  activeColor: Colors.lightBlueAccent,
                ),
                RadioListTile(
                  value: PaymentType.aman,
                  groupValue: _character,
                  title: Text(AppLocalizations.of(context)
                      .translate('aman')),
                  // subtitle: Text(user.lastName),
                  onChanged: (aman) {
                    setState(() {
                      _character = aman;
                    });
                  },
                  activeColor: Colors.lightBlueAccent,
                ),
                RadioListTile(
                  value: PaymentType.credit,
                  groupValue: _character,
                  title: Text(AppLocalizations.of(context)
                      .translate('credit_card')),
                  // subtitle: Text(user.lastName),
                  onChanged: (credit) {
                    setState(() {
                      _character = credit;
                    });
                  },
                  activeColor: Colors.lightBlueAccent,
                ),
                SizedBox(height: 16.0),
                model.state == ViewState.Busy
                    ? CircularProgressIndicator(
                  backgroundColor: Colors.lightBlue,
                )
                    : Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: RaisedButton(
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('complete_payment'),
                        style:
                        TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_character ==
                            PaymentType.fawry) {
                          PaymentResponse response =
                          await payUsingReferenceNum(
                              model, 1);
                          if (response != null) {
                            if (response.status) {
                              showAlertDialog(context,
                                  response.data.toString());
                            } else {
                              showToast(
                                  response.errors
                                      .toString(),
                                  Colors.red);
                            }
                          } else {
                            final snackBar = SnackBar(
                              content: Text(
                                  AppLocalizations.of(
                                      context)
                                      .translate(
                                      'check_network')),
                              backgroundColor: Colors.red,
                            );
                            _scaffoldKey.currentState
                                .showSnackBar(snackBar);
                          }
                        } else if (_character ==
                            PaymentType.aman) {
                          PaymentResponse response =
                          await payUsingReferenceNum(
                              model, 2);
                          if (response != null) {
                            if (response.status) {
                              showAlertDialog(context,
                                  response.data.toString());
                            } else {
                              showToast(
                                  response.errors
                                      .toString(),
                                  Colors.red);
                            }
                          } else {
                            final snackBar = SnackBar(
                              content: Text(
                                  AppLocalizations.of(
                                      context)
                                      .translate(
                                      'check_network')),
                              backgroundColor: Colors.red,
                            );
                            _scaffoldKey.currentState
                                .showSnackBar(snackBar);
                          }
                        } else if (_character ==
                            PaymentType.credit) {
                          PaymentResponse response =
                          await payUsingReferenceNum(
                              model, 3);
                          if (response != null) {
                            if (response.status) {
                              var result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext
                                      context) =>
                                          PayWebView(
                                              response
                                                  .data)));
                              if (result != null &&
                                  result) {
                                showToast( AppLocalizations.of(
                                    context)
                                    .translate(
                                    'done_successfully'),
                                    Colors.green);
                                Navigator.pop(context);
                              }
                            } else {
                              showToast(
                                  response.errors
                                      .toString(),
                                  Colors.red);
                            }
                          } else {
                            final snackBar = SnackBar(
                              content: Text(
                                  AppLocalizations.of(
                                      context)
                                      .translate(
                                      'check_network')),
                              backgroundColor: Colors.red,
                            );
                            _scaffoldKey.currentState
                                .showSnackBar(snackBar);
                          }
                        }
                      },
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
        ));
  }
  Future<PaymentResponse> payUsingReferenceNum(
      CheckOutViewModel model, int paymentId) {
    List<Item> item = new List<Item>();
    item.add(new Item(
        id: widget.orderId,
        count: 1,
        newPrice: widget.cost));
      return model.upgradePayment(
          locator<AppLanguage>().appLocal.languageCode,
          widget.cost,
          widget.orderId, paymentId,item);

  }
}

