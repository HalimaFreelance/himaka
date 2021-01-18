import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:himaka/utils/progresshud.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PayWebView extends StatefulWidget {
  final String url;


  PayWebView(this.url);

  @override
  _PayWebViewState createState() => _PayWebViewState(url);
}

class _PayWebViewState extends State<PayWebView> {
    String url;

  _PayWebViewState(this.url);

  bool _isLoading = true;
  WebViewController controller;
  // static var uri = "https://maktapp.credit/v3/";
  // String baseURl = "https://maktapp.credit";

  // static BaseOptions options = BaseOptions(
  //     baseUrl: url,
  //     responseType: ResponseType.plain,
  //     connectTimeout: 30000,
  //     receiveTimeout: 30000,
  //     validateStatus: (code) {
  //       if (code >= 200) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     });
  //
  // static Dio dio = Dio(options);

  @override
  void initState() {
    super.initState();
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Gateway",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ProgressHUD(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              WebView(
                  initialUrl: url,
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageFinished: pageFinishedLoading,
                  onWebViewCreated:
                      (WebViewController webViewController) {
                    controller = webViewController;
                  }),
            ],
          ),
        ),
        inAsyncCall: _isLoading,
        opacity: 0.0,
      ),
    );
  }

  void pageFinishedLoading(String url) {
    setState(() async {
      _isLoading = false;
      print("urllll"+url);
      if (url.contains("SuccessPayment")) {
        // var transactionResponse = url.split('paymentID=')[1].split("&orderId=");
        // var paymentID = transactionResponse[0];
        // var orderId = transactionResponse[1].split("&transactionid=")[0];
        // var transactionId = transactionResponse[1].split("&transactionid=")[1];

      } else if (url.contains("FailedPayment")) {
        Navigator.pop(context);
      } else if (url.contains("Declined")) {
        setState(() {
          controller.loadUrl(url);
          _isLoading = true;
        });
      }
    });
  }

}
