import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class FantasyWebView extends StatelessWidget {
  const FantasyWebView(
      {Key? key, required this.webViewTitle, required this.webViewURL})
      : super(key: key);

  final String webViewTitle;
  final String webViewURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          webViewTitle,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
      ),
      body: InAppWebView(
        initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(cacheEnabled: true),
            android: AndroidInAppWebViewOptions(
                forceDark: AndroidForceDark.FORCE_DARK_AUTO,
                thirdPartyCookiesEnabled: false)),
        initialUrlRequest: URLRequest(url: Uri.parse(webViewURL)),
      ),
    );
  }
}
