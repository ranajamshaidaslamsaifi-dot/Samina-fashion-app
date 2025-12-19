import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SaminaWebView(),
));

class SaminaWebView extends StatefulWidget {
  const SaminaWebView({super.key});
  @override
  State<SaminaWebView> createState() => _SaminaWebViewState();
}

class _SaminaWebViewState extends State<SaminaWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavascriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://saminafashion.store'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
