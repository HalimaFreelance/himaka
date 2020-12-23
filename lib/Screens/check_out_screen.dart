import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himaka/utils/app_localizations.dart';

class CheckOutScreen extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[900], //change your color here
        ),
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).translate( 'check_out'),
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: LayoutBuilder(builder:
          (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('email'),
                      hintStyle: TextStyle(color: Colors.grey),
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('phone_num'),
                      hintStyle: TextStyle(color: Colors.grey),
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('first_name'),
                      hintStyle: TextStyle(color: Colors.grey),
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('last_name'),
                      hintStyle: TextStyle(color: Colors.grey),
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('f_address'),
                      hintStyle: TextStyle(color: Colors.grey),
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
                      // errorText: model.emailValidate
                      //     ? null
                      //     : AppLocalizations.of(context)
                      //     .translate('email_error'),
                      hintText: AppLocalizations.of(context)
                          .translate('s_address'),
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.fromLTRB(
                          20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(height: 16.0),

                ],
              ),
            ),
          ),
        );
      }),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    phoneController.dispose();
    fNameController.dispose();
    lNameController.dispose();
    fAddressController.dispose();
    sAddressController.dispose();
  }
}
