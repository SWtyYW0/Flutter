import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QrWebViewPage extends StatelessWidget {
  final WebViewController webViewController;
  QrWebViewPage({Key? key, required this.webViewController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('QrWebViewPage'),
      ),
      body: WebViewWidget(controller: webViewController),
    );
  }
}