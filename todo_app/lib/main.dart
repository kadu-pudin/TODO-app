import 'package:flutter/material.dart';
import 'package:todo_app/homepage.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey[900]));
  }
}
