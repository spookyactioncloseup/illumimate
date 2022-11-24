//import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /*
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 35,
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                'IllumiMate',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                width: 6,
              ),
            ],
          ),
          backgroundColor: Colors.greenAccent[400],
        ),
        body: const WebView(
          initialUrl: 'http://191.96.57.73:3000/',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
