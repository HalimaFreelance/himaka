import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:himaka/Models/order_details_response.dart';
import 'package:himaka/Models/pre_store_response.dart';
import 'package:himaka/Models/product_service_details_response.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/ViewModels/check_out_view_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:himaka/utils/caching.dart';
import 'package:himaka/utils/show_toast.dart';

import 'home.dart';

class CheckOutScreen extends StatefulWidget {
  List<Item> items;

  CheckOutScreen(this.items);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final fAddressController = TextEditingController();
  final sAddressController = TextEditingController();
  final cityController = TextEditingController();
  final zipController = TextEditingController();

  BillingCountry country;
  BillingState billingState;
  ShippingMethods shippingMethods;
  PaymentWays paymentWays;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[900], //change your color here
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('check_out'),
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
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
                : model.preStoreResponse != null
                    ? model.preStoreResponse.data.canPurchase
                        ? SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: viewportConstraints.minHeight,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.emailValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate('email_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('email'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.phone,
                                      controller: phoneController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.phoneValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate(
                                                    'eight_validate_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('phone_num'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: fNameController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.fNameValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate(
                                                    'name_validate_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('first_name'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: lNameController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.lNameValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate(
                                                    'name_validate_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('last_name'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: fAddressController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.address1Validate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate('empty_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('f_address'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: sAddressController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: AppLocalizations.of(context)
                                            .translate('s_address'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: DropdownButton<BillingCountry>(
                                          dropdownColor: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                          ),
                                          isExpanded: true,
                                          hint: Text(
                                            AppLocalizations.of(context)
                                                .translate('select_coun'),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          value: country,
                                          onChanged: (BillingCountry value) {
                                            setState(() {
                                              model.countryValidate = true;
                                              billingState = null;
                                              country = value;
                                            });
                                          },
                                          items: model
                                              .preStoreResponse.data.countries
                                              .map(
                                            (BillingCountry method) {
                                              return DropdownMenuItem<
                                                  BillingCountry>(
                                                value: method,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      method.name,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                    model.countryValidate
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 16, right: 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('list_error'),
                                                style: TextStyle(
                                                    color: Colors.red[700],
                                                    fontSize: 13),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: DropdownButton<BillingState>(
                                          dropdownColor: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                          ),
                                          isExpanded: true,
                                          hint: Text(
                                            AppLocalizations.of(context)
                                                .translate('select_stat'),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          value: billingState,
                                          onChanged: (BillingState value) {
                                            setState(() {
                                              model.stateValidate = true;
                                              billingState = value;
                                            });
                                          },
                                          items: model
                                              .getBillingState(country)
                                              .map(
                                            (BillingState method) {
                                              return DropdownMenuItem<
                                                  BillingState>(
                                                value: method,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      method.name,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                    model.stateValidate
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 16, right: 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('list_error'),
                                                style: TextStyle(
                                                    color: Colors.red[700],
                                                    fontSize: 13),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: cityController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.cityValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate('empty_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('city'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: zipController,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        errorText: model.zipValidate
                                            ? null
                                            : AppLocalizations.of(context)
                                                .translate('empty_error'),
                                        hintText: AppLocalizations.of(context)
                                            .translate('zip'),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding: EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 10.0),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: DropdownButton<ShippingMethods>(
                                          dropdownColor: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                          ),
                                          isExpanded: true,
                                          hint: Text(
                                            AppLocalizations.of(context)
                                                .translate('select_ship'),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          value: shippingMethods,
                                          onChanged: (ShippingMethods value) {
                                            setState(() {
                                              model.shippingMethod = true;
                                              shippingMethods = value;
                                            });
                                          },
                                          items: model.preStoreResponse.data
                                              .shippingMethods
                                              .map(
                                            (ShippingMethods method) {
                                              return DropdownMenuItem<
                                                  ShippingMethods>(
                                                value: method,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      method.name,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                    model.shippingMethod
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 16, right: 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('list_error'),
                                                style: TextStyle(
                                                    color: Colors.red[700],
                                                    fontSize: 13),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 16.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: DropdownButton<PaymentWays>(
                                          dropdownColor: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                          ),
                                          isExpanded: true,
                                          hint: Text(
                                            AppLocalizations.of(context)
                                                .translate('select_payment'),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          value: paymentWays,
                                          onChanged: (PaymentWays value) {
                                            setState(() {
                                              model.paymentMethod = true;
                                              paymentWays = value;
                                            });
                                          },
                                          items: model.preStoreResponse.data
                                              .paymentMethods
                                              .map(
                                            (PaymentWays method) {
                                              return DropdownMenuItem<
                                                  PaymentWays>(
                                                value: method,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      method.name,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                    model.paymentMethod
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 16, right: 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('list_error'),
                                                style: TextStyle(
                                                    color: Colors.red[700],
                                                    fontSize: 13),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                    Row(
                                      children: <Widget>[
                                        Theme(
                                          data: ThemeData(
                                              unselectedWidgetColor:
                                                  Colors.lightBlueAccent),
                                          child: Checkbox(
                                            value: model.termsAgree,
                                            onChanged: (value) {
                                              model.termsAgree = value;
                                            },
                                            checkColor: Colors.lightBlueAccent,
                                            focusColor: Colors.black,
                                            // color of tick Mark
                                            activeColor: Colors.white10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: new TextSpan(
                                            text: AppLocalizations.of(context)
                                                .translate('i_agree'),
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: <TextSpan>[
                                              new TextSpan(
                                                  text: AppLocalizations.of(
                                                          context)
                                                      .translate(
                                                          'terms_and_conditions'),
                                                  style: new TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blue)),
                                              new TextSpan(
                                                  text: AppLocalizations.of(
                                                          context)
                                                      .translate('and')),
                                              new TextSpan(
                                                text:
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'privacy_policy'),
                                                style: new TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    color: Colors.blue),
                                                recognizer:
                                                    new TapGestureRecognizer()
                                                      ..onTap = () => print(
                                                          'Tap Here onTap'),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    model.termsAgreeValidate
                                        ? Container()
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 16, right: 16),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('terms_error'),
                                                style: TextStyle(
                                                    color: Colors.red[700],
                                                    fontSize: 13),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 16.0),
                                    model.state == ViewState.Busy
                                        ? CircularProgressIndicator(
                                            backgroundColor: Colors.lightBlue,
                                          )
                                        : Container(
                                            width: 300,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4.0,
                                                      horizontal: 8),
                                              child: RaisedButton(
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate('check_out'),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onPressed: () async {
                                                  if (model.checkOutValidation(
                                                      emailController.text
                                                          .trim(),
                                                      fNameController.text,
                                                      lNameController.text,
                                                      phoneController.text
                                                          .trim(),
                                                      fAddressController.text,
                                                      country,
                                                      billingState,
                                                      cityController.text,
                                                      zipController.text,
                                                      shippingMethods,
                                                      paymentWays)) {
                                                    if (paymentWays.id == "cod") {
                                                      OrderDetailsResponse
                                                          response =
                                                          await storeOrder(
                                                              model);

                                                      if (response != null) {
                                                        if (response.status) {
                                                          showToast(
                                                              AppLocalizations.of(
                                                                  context)
                                                                  .translate(
                                                                  'opertaion_succ'),
                                                              Colors.green);
                                                          deleteCart();
                                                          Navigator
                                                              .pushAndRemoveUntil(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (
                                                                      context) =>
                                                                      HomePage()),
                                                                  (Route<
                                                                  dynamic> route) =>
                                                              false);


                                                        } else {
                                                          showToast(
                                                              response.errors
                                                                  .toString(),
                                                              Colors.red);
                                                        }
                                                      } else {
                                                        final snackBar =
                                                            SnackBar(
                                                          content: Text(
                                                              AppLocalizations.of(
                                                                      context)
                                                                  .translate(
                                                                      'check_network')),
                                                          backgroundColor:
                                                              Colors.red,
                                                        );
                                                        _scaffoldKey
                                                            .currentState
                                                            .showSnackBar(
                                                                snackBar);
                                                      }
                                                    } else {
                                                      showToast(
                                                          AppLocalizations.of(
                                                                  context)
                                                              .translate(
                                                                  'payment_inprogress'),
                                                          Colors.red);
                                                    }
                                                  }
                                                },
                                                color: Colors.lightBlueAccent,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                    SizedBox(height: 16.0),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Center(
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate('not_enough_points'),
                              style: TextStyle(color: Colors.red),
                            ),
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

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    phoneController.dispose();
    fNameController.dispose();
    lNameController.dispose();
    fAddressController.dispose();
    sAddressController.dispose();
    cityController.dispose();
    zipController.dispose();
  }

  Future<OrderDetailsResponse> storeOrder(CheckOutViewModel model, {transId}) {
    return model.storeOrder(
        locator<AppLanguage>().appLocal.languageCode,
        emailController.text.trim(),
        phoneController.text.trim(),
        fNameController.text,
        lNameController.text,
        fAddressController.text,
        cityController.text,
        zipController.text,
        country.id,
        billingState.id,
        shippingMethods.name,
        // "free_shipping",
        paymentWays.id,
        widget.items,
        transId: paymentWays.id == "cod" ? null: transId);
  }

  void refreshScreen(CheckOutViewModel model) {
    model.preStore(locator<AppLanguage>().appLocal.languageCode);
  }
}
