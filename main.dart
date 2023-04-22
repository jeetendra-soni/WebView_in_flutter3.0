import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("WebView Example"),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://shopping.google.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
