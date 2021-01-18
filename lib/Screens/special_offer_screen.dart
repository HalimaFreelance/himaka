import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:himaka/Models/login_response.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/ViewModels/check_out_view_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/AppLanguage.dart';
import 'package:himaka/utils/app_localizations.dart';
import 'package:himaka/utils/caching.dart';
import 'package:himaka/utils/show_toast.dart';

import 'home.dart';

class SpecialOfferScreen extends StatefulWidget {
  final int orderId;
  final String cost;
  final int serviceProductId;

  SpecialOfferScreen(this.serviceProductId,{this.cost, this.orderId});

  @override
  State<StatefulWidget> createState() => new _SpecialOfferScreenState();
}

class _SpecialOfferScreenState extends State<SpecialOfferScreen> {
  TextEditingController _pinController = new TextEditingController();
  TextEditingController _answerController = new TextEditingController();
  TextEditingController _priceController = new TextEditingController();
  String val;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> ques = <String>[
    'In what city did your parents meet?',
    'What is your favorite color?',
    'What is your current job?',
    'What is your favorite team?',
    'What is your favorite movie?',
    'In what town was your first job?',
    'What is the color of your eyes?',
  ];

  @override
  void initState() {
    super.initState();
    textFormConfiguration();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: _buildBar(context),
        body: BaseView<CheckOutViewModel>(
          builder: (context, model, child) => LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SafeArea(
              child: SingleChildScrollView(
                child: new Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset(
                          'images/special_offer.svg',
                          height: MediaQuery.of(context).size.height / 2.7,
                          width: MediaQuery.of(context).size.width,
                          allowDrawingOutsideViewBox: true,
                        ),
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('special_offer_msg'),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          child: new TextField(
                            cursorColor: Colors.black,
                            controller: _priceController,
                            decoration: new InputDecoration(
                              errorText: model.sONewPrice
                                  ? null
                                  : AppLocalizations.of(context)
                                      .translate('price_not_valid'),
                              contentPadding: EdgeInsets.all(0),
                              labelText: 'New price',
                              labelStyle: TextStyle(color: Colors.black),

                              // alignLabelWithHint: false,
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  'images/icon_special_price.svg',
                                  height: 5.0,
                                  width: 5.0,
                                  color: Colors.black,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: new TextField(
                            cursorColor: Colors.black,
                            controller: _pinController,
                            decoration: new InputDecoration(
                              errorText: model.sOPin
                                  ? null
                                  : AppLocalizations.of(context)
                                      .translate('pin_safety_error'),
                              contentPadding: EdgeInsets.all(0),
//                                    hintText: 'PIN',
                              labelText: AppLocalizations.of(context)
                                  .translate('pin'),

                              labelStyle: TextStyle(color: Colors.black),

                              // alignLabelWithHint: false,
                              hintStyle: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  'images/icon_padlock.svg',
                                  height: 5.0,
                                  width: 5.0,
                                  color: Colors.black,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20.0),
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton<String>(
                            dropdownColor: Colors.grey,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            isExpanded: true,
                            hint: Text(
                              AppLocalizations.of(context)
                                  .translate('select_y_quse'),
                              style: TextStyle(color: Colors.black),
                            ),
                            value: val,
                            onChanged: (String value) {
                              setState(() {
                                val = value;
                              });
                            },
                            items: ques.map(
                              (String question) {
                                return DropdownMenuItem<String>(
                                  value: question,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.help_outline,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        question,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                        model.sOQues
                            ? Container()
                            : Container(
                                width: double.infinity,
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('ques_safety_error'),
                                  style: TextStyle(
                                      color: Colors.red[700], fontSize: 13),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                        Container(
                          child: new TextField(
                            controller: _answerController,
                            decoration: new InputDecoration(
                           errorText: model.sOAnswer
                               ? null
                               : AppLocalizations.of(context)
                                   .translate('answer_safety_error'),
                              labelText: AppLocalizations.of(context)
                                  .translate('answer_the_q'),
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  'images/icon_answers.svg',
                                  height: 5.0,
                                  width: 5.0,
                                  color: Colors.black,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        model.state == ViewState.Busy
                            ? CircularProgressIndicator(
                          backgroundColor: Colors.lightBlue,
                        )
                            : ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () async {
                              if (model.validateOfferData(
                                  _priceController.text,
                                  _pinController.text,
                                  _answerController.text,
                                  val,
                                  widget.cost)) {
                                LoginResponse response =
                                    await payByWallets(model);
                                if (response != null) {
                                  if (response.status) {
                                    showToast(
                                        response.msg.toString(), Colors.green);
                                    if(widget.serviceProductId==1)
                                      deleteCart();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                        (Route<dynamic> route) => false);
                                  } else {
                                    showToast(
                                        response.errors.toString(), Colors.red);
                                  }
                                } else {
                                  final snackBar = SnackBar(
                                    content: Text(AppLocalizations.of(context)
                                        .translate('check_network')),
                                    backgroundColor: Colors.red,
                                  );
                                  _scaffoldKey.currentState
                                      .showSnackBar(snackBar);
                                }
                              }
                            },
                            padding: EdgeInsets.all(20),
                            color: Colors.lightBlueAccent,
                            child: Text(
                                AppLocalizations.of(context)
                                    .translate('complete_your_order'),
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    )),
//          ),
              ),
            );
          }),
        ));
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text(
        AppLocalizations.of(context).translate('special_offer'),
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              'images/close.svg',
              height: 25.0,
              width: 25.0,
              allowDrawingOutsideViewBox: true,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ],
    );
  }

  void textFormConfiguration() {
    _pinController = TextEditingController();

    _pinController.addListener(() {
      final name = _pinController.text;
      _pinController.value = _pinController.value.copyWith(
        text: name,
      );
    });

    _answerController = TextEditingController();

    _answerController.addListener(() {
      final name = _answerController.text;
      _answerController.value = _answerController.value.copyWith(
        text: name,
      );
    });
  }

  Future<LoginResponse> payByWallets(CheckOutViewModel model) {
    return model.payByWallets(locator<AppLanguage>().appLocal.languageCode, 1,
        widget.orderId.toString(), widget.cost, _priceController.text);
  }
}
