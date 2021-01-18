import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himaka/Models/payment_response.dart';
import 'package:himaka/Screens/signin_screen.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/ViewModels/payment_view_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:himaka/utils/payWebView.dart';
import 'package:himaka/utils/payment_dialog.dart';
import 'package:himaka/utils/show_toast.dart';

class SignUpPaymentMethodsScreen extends StatefulWidget {
  final String amount;

  SignUpPaymentMethodsScreen(this.amount);

  @override
  _SignUpPaymentMethodsScreenState createState() =>
      _SignUpPaymentMethodsScreenState();
}

class _SignUpPaymentMethodsScreenState
    extends State<SignUpPaymentMethodsScreen> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentViewModel>(
        builder: (context, model, child) => LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return Stack(
                children: [
                  Image.asset(
                    "images/blur_bg.jpg",
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  new Scaffold(
                    backgroundColor: Colors.transparent,
                    key: _scaffoldKey,
                    appBar: _buildBar(context),
                    body: SafeArea(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *
                                .3, // 30% of the screen
                            child: ListView.separated(
                              itemCount: 3,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Divider(
                                  color: Colors.white,
                                );
                              },
                              itemBuilder: (BuildContext context, int index) {
                                return index == 0
                                    ? ListTile(
                                        title: Text(
                                          AppLocalizations.of(context)
                                              .translate('fawry'),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        // subtitle: Text('brainantstech@gmail.com'),
                                        leading:
                                            Image.asset("images/fawry.png"),
                                        onTap: () async {
                                          PaymentResponse response =
                                              await payUsingReferenceNum(
                                                  model, 1);
                                          if (response != null) {
                                            if (response.status) {
                                              showAlertDialog(context,
                                                  response.data.toString());
                                            } else {
                                              showToast(
                                                  response.errors.toString(),
                                                  Colors.red);
                                            }
                                          } else {
                                            final snackBar = SnackBar(
                                              content: Text(AppLocalizations.of(
                                                      context)
                                                  .translate('check_network')),
                                              backgroundColor: Colors.red,
                                            );
                                            _scaffoldKey.currentState
                                                .showSnackBar(snackBar);
                                          }
                                        },
                                      )
                                    : index == 1
                                        ? ListTile(
                                            title: Text(
                                              AppLocalizations.of(context)
                                                  .translate('aman'),
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            // subtitle: Text('brainantstech@gmail.com'),
                                            leading:
                                                Image.asset("images/aman.png"),
                                            onTap: () async {
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
                                            },
                                          )
                                        : ListTile(
                                            title: Text(
                                              AppLocalizations.of(context)
                                                  .translate('credit_card'),
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            // subtitle: Text('brainantstech@gmail.com'),
                                            leading: Image.asset(
                                                "images/credit_card.png"),
                                            onTap: () async{
                                              PaymentResponse response =
                                                  await payUsingReferenceNum(
                                                  model, 3);
                                              if (response != null) {
                                                if (response.status) {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder:
                                                              (BuildContext
                                                          context) =>
                                                                  PayWebView(response.data)));
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
                                            },
                                          );
                              },
                            ),
                          ),
                          model.state == ViewState.Busy
                              ? CircularProgressIndicator(
                            backgroundColor: Colors.lightBlue,
                          )
                              :InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width*.70,
                              height: 50.0,
                              child: Center(
                                child: new Text(
                                    AppLocalizations.of(context).translate('sign_in'),
                                    textAlign: TextAlign.center,
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 20)),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator
                                  .pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                          context) =>
                                          SignInScreen()),
                                      (Route<
                                      dynamic> route) =>
                                  false);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }));
  }

  Future<PaymentResponse> payUsingReferenceNum(
      PaymentViewModel model, int paymentId) {
    return model.payUsingReferenceNum(
        locator<AppLanguage>().appLocal.languageCode, widget.amount, paymentId);
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title:
          new Text(AppLocalizations.of(context).translate('payment_methods')),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
