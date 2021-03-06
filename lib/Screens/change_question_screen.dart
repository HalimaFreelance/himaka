import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:himaka/Models/pre_register_response.dart';
import 'package:himaka/Screens/SignUp/third_step_signup_screen.dart';
import 'package:himaka/ViewModels/auth_view_model.dart';
import 'package:himaka/ViewModels/base_model.dart';
import 'package:himaka/services/base_view.dart';
import 'package:himaka/utils/app_localizations.dart';

import '../Models/ProfileResponse.dart';
import '../ViewModels/profile_view_model.dart';

class ChangeQuestionScreen extends StatefulWidget {
  String question, answer;

  ChangeQuestionScreen(
    this.question,
    this.answer,
  );

  @override
  State<StatefulWidget> createState() => new _ChangeQuestionScreenState();
}

class _ChangeQuestionScreenState extends State<ChangeQuestionScreen> {
  final TextEditingController _answerController = new TextEditingController();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  String val;
  bool visible = false;
  String confirmedNumber = '';
  List<String> users = <String>[
    'In what city did your parents meet?',
    'what is your mom name?'
    'What is your favorite color?',
    'What is your current job?',
    'What is your favorite team?',
    'What is your favorite movie?',
    'In what town was your first job?',
    'What is the color of your eyes?',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    val=widget.question;
    _answerController.text = widget.answer;
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
        builder: (context, model, child) => LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return new Scaffold(
                backgroundColor: Colors.white,
                appBar: _buildBar(context),
                key: _scaffoldKey,
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.minHeight,
                      ),
                      child: new Container(
                          height: MediaQuery.of(context).size.height,
                          padding: EdgeInsets.all(16.0),
                          child: new Column(
                            children: <Widget>[
//                                  SizedBox(
//                                    height: 10,
//                                  ),
//                                  Container(
//                                    child: Text(
//                                      'To protect your money through withdraw process you answer the question and enter the PIN',
//                                      textAlign: TextAlign.center,
//                                      style: TextStyle(color: Colors.white),
//                                    ),
//                                  ),
//                                  Container(
//                                    child: new TextField(
//                                      textAlign: TextAlign.center,
//                                      cursorColor: Colors.white,
//                                      controller: _pinController,
//                                      decoration: new InputDecoration(
//                                        errorText: model.pinValidate
//                                            ? null
//                                            : AppLocalizations.of(context)
//                                                .translate(
//                                                    'four_validate_error'),
//                                        contentPadding: EdgeInsets.all(0),
//                                        hintText: 'PIN',
//                                        // labelText: 'PIN',
//                                        // alignLabelWithHint: false,
//                                        hintStyle: TextStyle(
//                                          fontSize: 20.0,
//                                          color: Colors.white,
//                                        ),
//                                        enabledBorder: UnderlineInputBorder(
//                                          borderSide:
//                                              BorderSide(color: Colors.white),
//                                        ),
//                                        focusedBorder: UnderlineInputBorder(
//                                          borderSide:
//                                              BorderSide(color: Colors.white),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
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
                                    widget.question,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  value: val,
                                  onChanged: (String value) {
                                    setState(() {
                                      val = value;
                                    });
                                  },
                                  items: users.map(
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
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              question,
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
                              model.quesValidate
                                  ? Container()
                                  : Container(
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
                              Container(
                                child: new TextField(
                                  controller: _answerController,
                                  decoration: new InputDecoration(
                                    errorText: model.answerValidate
                                        ? null
                                        : AppLocalizations.of(context)
                                            .translate('four_validate_error'),
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
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      child: RaisedButton(
                                        elevation: 0.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        onPressed: () async {
                                          if (model.quesAnswerValidation(val,
                                              _answerController.text.trim())) {
                                            ProfileResponse _response =
                                                await model
                                                    .changeProfileQuestion(
                                                        val,
                                                        _answerController.text
                                                            .trim());

                                            if (_response == null) {
                                              final snackBar = SnackBar(
                                                content: Text(
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'check_network')),
                                                backgroundColor: Colors.red,
                                              );
                                              _scaffoldKey.currentState
                                                  .showSnackBar(snackBar);
                                            } else if (_response.status) {
                                              Navigator.of(context).pop();
                                            } else {
                                              final snackBar = SnackBar(
                                                content: Text(
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'check_network')),
                                                backgroundColor: Colors.red,
                                              );
                                              _scaffoldKey.currentState
                                                  .showSnackBar(snackBar);
                                            }
                                          }
////
                                        },
                                        padding: EdgeInsets.all(20),
                                        color: Colors.lightBlueAccent,
                                        child: Text(
                                            AppLocalizations.of(context)
                                                .translate('done'),
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                              Expanded(
                                  child: Align(
                                      alignment: FractionalOffset.bottomCenter,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: new TextSpan(
                                          text:
                                              'by creating or logging to an account you agree to out ',
                                          children: <TextSpan>[
                                            new TextSpan(
                                                text: 'terms and conditions',
                                                style: new TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                )),
                                            new TextSpan(text: ' and '),
                                            new TextSpan(
                                              text: 'privacy policy',
                                              style: new TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                              recognizer:
                                                  new TapGestureRecognizer()
                                                    ..onTap = () =>
                                                        print('Tap Here onTap'),
                                            ),
                                          ],
                                        ),
                                      )))
                            ],
                          )),
                    ),
                  ),
                ),
              );
            }));
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text(
        AppLocalizations.of(context).translate('change_question'),
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.grey[900], //change your color here
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
