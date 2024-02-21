import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/pages/home_page.dart';

void main() async {
  //init hive
  await Hive.initFlutter();

  //open the box
  var box = await Hive.openBox('MyBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.yellow),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.yellow)),
    );
  }
}
