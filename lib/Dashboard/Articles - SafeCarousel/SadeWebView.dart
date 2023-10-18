import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:womensafteyhackfair/constants.dart';

class SafeWebView extends StatelessWidget {
  final String url;
  final String title;
  final int index;
  const SafeWebView({Key key, this.url, this.title, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
        initialUrl: url, // Replace with your URL
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
      );
  }
}
