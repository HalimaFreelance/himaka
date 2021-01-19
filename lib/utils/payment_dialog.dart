import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:himaka/utils/app_localizations.dart';

showAlertDialog(BuildContext context, String num) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text(AppLocalizations.of(
        context)
        .translate(
        'ok')),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(AppLocalizations.of(
        context)
        .translate(
        'ref_num')),
    content: Text(AppLocalizations.of(
        context)
        .translate(
        'ref_msg')+num),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}