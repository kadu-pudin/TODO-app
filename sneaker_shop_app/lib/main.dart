import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
