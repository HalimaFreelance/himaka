import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himaka/Models/login_response.dart';
import 'package:himaka/Screens/home.dart';
import 'package:himaka/Screens/special_offer_screen.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/ViewModels/check_out_view_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:himaka/utils/caching.dart';
import 'package:himaka/utils/show_toast.dart';

class PaymentCheckOutMethodsScreen extends StatefulWidget {
  final int orderId;
  final String cost;
  final int serviceProductId; // service = 2, product =1

  PaymentCheckOutMethodsScreen(this.serviceProductId,
      {this.orderId, this.cost});

  @override
  _PaymentCheckOutMethodsScreenState createState() =>
      _PaymentCheckOutMethodsScreenState();
}

enum PaymentType { comm, personal, fawry, aman }

class _PaymentCheckOutMethodsScreenState
    extends State<PaymentCheckOutMethodsScreen> {
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
          onModelReady: (model) {
            refreshScreen(model);
          },
          builder: (context, model, child) => LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return (model.state == ViewState.Busy && model.serviceId == 1)
                ? Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.lightBlue,
                    ),
                  )
                : (model.preStoreResponse != null &&
                        model.preStoreResponse.status)
                    ? (widget.serviceProductId == 2 &&
                            model.preStoreResponse.data.price == null)
                        ? Container(
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('not_price_determined'),
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              model.preStoreResponse.data.personalCount
                                  ? RadioListTile(
                                      value: PaymentType.personal,
                                      groupValue: _character,
                                      title: Text(AppLocalizations.of(context)
                                          .translate('personal_wallet')),
                                      // subtitle: Text(user.lastName),
                                      onChanged: (personal) {
                                        setState(() {
                                          _character = personal;
                                        });
                                      },
                                      activeColor: Colors.lightBlueAccent,
                                    )
                                  : Container(),
                              model.preStoreResponse.data.commCount
                                  ? RadioListTile(
                                      value: PaymentType.comm,
                                      groupValue: _character,
                                      title: Text(AppLocalizations.of(context)
                                          .translate('commission_wallet')),
                                      // subtitle: Text(user.lastName),
                                      onChanged: (comm) {
                                        setState(() {
                                          _character = comm;
                                        });
                                      },
                                      activeColor: Colors.lightBlueAccent,
                                    )
                                  : Container(),
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
                              // RadioListTile(
                              //   value: PaymentType.cash,
                              //   groupValue: _character,
                              //   title: Text(AppLocalizations.of(context).translate('cash')),
                              //   // subtitle: Text(user.lastName),
                              //   onChanged: (cash) {
                              //     setState(() {
                              //       _character = cash;
                              //     });
                              //   },
                              //   activeColor: Colors.lightBlueAccent,
                              // ),
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
                                                PaymentType.comm) {
                                              Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                      builder: (context) =>
                                                          new SpecialOfferScreen(
                                                            widget
                                                                .serviceProductId,
                                                            cost: widget.serviceProductId ==
                                                                    1
                                                                ? widget.cost
                                                                : model
                                                                    .preStoreResponse
                                                                    .data
                                                                    .price
                                                                    .toString(),
                                                            orderId:
                                                                widget.orderId,
                                                          )));
                                            } else if (_character ==
                                                PaymentType.personal) {
                                              LoginResponse response =
                                                  await payByWallets(model);
                                              if (response != null) {
                                                if (response.status) {
                                                  showToast(
                                                      response.msg.toString(),
                                                      Colors.green);
                                                  if (widget.serviceProductId ==
                                                      1) deleteCart();
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage()),
                                                      (Route<dynamic> route) =>
                                                          false);
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
                                                PaymentType.fawry) {
                                              showToast(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                          'payment_inprogress'),
                                                  Colors.red);
                                            } else if (_character ==
                                                PaymentType.aman) {
                                              showToast(
                                                  AppLocalizations.of(context)
                                                      .translate(
                                                          'payment_inprogress'),
                                                  Colors.red);
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
                          )
                    : Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context)
                                    .translate('network_failed'),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  refreshScreen(model);
                                },
                                color: Color.fromRGBO(235, 85, 85, 100),
                                child: Icon(Icons.refresh),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30),
                                    side: BorderSide(
                                        color:
                                            Color.fromRGBO(235, 85, 85, 100))),
                              )
                            ],
                          ),
                        ),
                      );
          }),
        ));
  }

  void refreshScreen(CheckOutViewModel model) {
    if (widget.serviceProductId == 1)
      model.checkWalletsBalanceWithCart(widget.cost);
    else
      model.checkWalletsBalanceWithService(widget.orderId);
  }

  Future<LoginResponse> payByWallets(CheckOutViewModel model) {
    return model.payByWallets(
        locator<AppLanguage>().appLocal.languageCode,
        2,
        widget.orderId.toString(),
        widget.serviceProductId == 1
            ? widget.cost
            : model.preStoreResponse.data.price.toString(),
        widget.serviceProductId == 1
            ? widget.cost
            : model.preStoreResponse.data.price.toString());
  }
}
