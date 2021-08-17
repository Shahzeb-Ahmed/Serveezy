import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';
import 'pages/login/login_page_phone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => LoginPage(),
        '/': (context) => LoginPagePhone(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
