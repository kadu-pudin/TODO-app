import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('mybox');
  runApp(MainApp());
}

// lightColor = Colors.blueGrey | darkColor = Colors.blueGrey[900]

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionHandleColor: Colors.black,
          selectionColor: Color.fromARGB(100, 0, 0, 0),
        ),
      ),
    );
  }
}
